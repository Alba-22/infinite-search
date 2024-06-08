// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_final_fields
import 'dart:async';
import 'dart:developer';

import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/request_payload.dart';
import 'package:infinite_search/app/repositories/list_repository.dart';
import 'package:mobx/mobx.dart';

part 'original_controller.g.dart';

class OriginalController = OriginalControllerBase with _$OriginalController;

abstract class OriginalControllerBase with Store {
  final ListRepository _repository;

  OriginalControllerBase(this._repository) {
    autorun((_) {
      log(_searchQuery.toString());
    });
  }

  static const int _pageSize = 10;

  @readonly
  RequestPayload _searchQuery = const RequestPayload(
    page: 1,
    pageSize: _pageSize,
    text: "",
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
  bool get isFilterEmpty => _searchQuery.text.isEmpty && _searchQuery.tags.isEmpty;

  @computed
  bool get noResultsFound => !isFilterEmpty && _items.isEmpty;

  @computed
  bool get showScreamingError => _isInFirstPage && _error != null;

  @computed
  bool get showSilentError => !_isInFirstPage && _error != null;

  @action
  void setSearchQuery(String text) {
    _searchQuery = _searchQuery.copyWith(
      text: text,
      tags: _searchQuery.tags,
    );
    reset();
    getItems();
  }

  @action
  void setTags(List<Tag> tags) {
    _searchQuery = _searchQuery.copyWith(
      text: _searchQuery.text,
      tags: tags,
    );
    reset();
    getItems();
  }

  @action
  void switchStatus(StatusEnum status) {
    _searchQuery = _searchQuery.copyWith(
      status: status,
      text: "",
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

// sealed class ListingState<T> extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// final class ListingInitialState extends ListingState {}

// final class ListingLoadingState extends ListingState {}

// final class ListingNoResultsState extends ListingState {}

// final class ListingEmptyState extends ListingState {}

// final class ListingSuccessState<T, E> extends ListingState {
//   final List<T> items;
//   final bool isLoadingMore;
//   final E? errorWhileGettingMore;
//   final bool hasReachedEnd;

//   ListingSuccessState({
//     required this.items,
//     required this.isLoadingMore,
//     required this.errorWhileGettingMore,
//     required this.hasReachedEnd,
//   });
// }

// final class ListingErrorState<E> extends ListingState {
//   final E error;
//   ListingErrorState(this.error);
// }



/// States
/// Empty
/// Loading
/// Success-> items, moreLoading, errorOnGettingMore, hasReachedEnd
/// NoResults
/// Error