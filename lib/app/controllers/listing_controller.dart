// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_final_fields
import 'dart:async';
import 'dart:developer';

import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/query_model.dart';
import 'package:infinite_search/app/repositories/list_repository.dart';
import 'package:mobx/mobx.dart';

part 'listing_controller.g.dart';

class ListingController = ListingControllerBase with _$ListingController;

abstract class ListingControllerBase with Store {
  final ListRepository _repository;

  ListingControllerBase(this._repository) {
    autorun((_) {
      log(_searchQuery.toString());
    });
  }

  static const int _pageSize = 10;

  @readonly
  QueryModel _searchQuery = const QueryModel(
    page: 1,
    pageSize: _pageSize,
    searchQuery: "",
    status: StatusEnum.relevant,
    tags: [],
  );

  @readonly
  bool _isLoading = false;

  @readonly
  ObservableList<PostModel> _items = ObservableList.of([]);

  @readonly
  String? _error;

  @computed
  bool get isEmpty =>
      _isInFirstPage && _items.isEmpty && _error == null && !_isLoading && isFilterEmpty;

  @computed
  bool get isInitialLoading => _isInFirstPage && _isLoading;

  @computed
  bool get _isInFirstPage => _searchQuery.page == 1;

  @computed
  bool get isInInfiniteLoading => !_isInFirstPage && _isLoading;

  @computed
  bool get isFilterEmpty => _searchQuery.searchQuery.isEmpty && _searchQuery.tags.isEmpty;

  @computed
  bool get noResultsFound => !isFilterEmpty && _items.isEmpty;

  @computed
  bool get showScreamingError => _isInFirstPage && _error != null;

  @computed
  bool get showSilentError => !_isInFirstPage && _error != null;

  @action
  void setSearchQuery(String text) {
    _searchQuery = _searchQuery.copyWith(
      searchQuery: text,
      tags: _searchQuery.tags,
    );
    reset();
    getItems();
  }

  @action
  void setTags(List<Tag> tags) {
    _searchQuery = _searchQuery.copyWith(
      searchQuery: _searchQuery.searchQuery,
      tags: tags,
    );
    reset();
    getItems();
  }

  @action
  void switchStatus(StatusEnum status) {
    _searchQuery = _searchQuery.copyWith(
      status: status,
      searchQuery: "",
      tags: [],
    );
    reset();
    getItems();
  }

  @action
  void reset() {
    _isLoading = false;
    _error = null;
    _items.clear();
    _hasReachedEnd = false;
    _searchQuery = _searchQuery.copyWith(
      page: 1,
    );
  }

  @action
  void _increasePage() {
    _searchQuery = _searchQuery.copyWith(
      page: _searchQuery.page + 1,
    );
  }

  @readonly
  bool _hasReachedEnd = false;

  StreamSubscription<void>? _subscription;

  @action
  Future<void> getItems() async {
    if (_isLoading || _hasReachedEnd) {
      return;
    }
    _isLoading = true;
    _error = null;
    await _subscription?.cancel();
    _subscription = _repository.getItems(_searchQuery).asStream().listen((data) {
      if (data.isEmpty) {
        _hasReachedEnd = true;
      } else {
        _items.addAll(data);
        if (data.length < _searchQuery.pageSize) {
          _hasReachedEnd = true;
        } else {
          _increasePage();
        }
      }
      _isLoading = false;
    })
      ..onError((e, s) {
        log(e.toString(), stackTrace: s);
        _error = "There was an error";
        _isLoading = false;
      });
  }
}

class PageModel {
  int page = 1;
  late int _pageSize;

  PageModel(int pageSize) {
    _pageSize = pageSize;
  }

  void increasePage() {
    page++;
  }

  void resetPagination() {
    page = 1;
  }

  int get pageSize => _pageSize;
}

/// States
/// Empty
/// Loading
/// Success-> items, moreLoading, errorOnGettingMore
/// NoResults
/// Error