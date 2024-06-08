import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'pagination_controller.g.dart';

abstract class PaginationController<T> = PaginationControllerBase with _$PaginationController;

abstract class PaginationControllerBase<T> with Store {
  static const int _defaultPageSize = 10;

  @readonly
  ScrollController _scrollController = ScrollController();

  PaginationControllerBase({int? pageSize}) {
    _page = _page.copyWith(
      pageSize: pageSize ?? _defaultPageSize,
    );
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.hasClients &&
        _scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      getItems();
    }
  }

  @readonly
  _PageModel _page = const _PageModel(
    currentPage: 1,
    pageSize: _defaultPageSize,
  );

  @action
  void setPageSize(int newPageSize) {
    _page = _page.copyWith(
      pageSize: newPageSize,
    );
  }

  @readonly
  bool _isLoading = false;

  @readonly
  ObservableList<T> _items = ObservableList.of([]);

  @readonly
  String? _error;

  @computed
  bool get isEmpty =>
      _isInFirstPage && _items.isEmpty && _error == null && !_isLoading && isFilterEmpty;

  @computed
  bool get isInitialLoading => _isInFirstPage && _isLoading;

  @computed
  bool get _isInFirstPage => _page.currentPage == 1;

  @computed
  bool get isInInfiniteLoading => !_isInFirstPage && _isLoading;

  bool get isFilterEmpty;

  @computed
  bool get noResultsFound => !isFilterEmpty && _items.isEmpty;

  @computed
  bool get showScreamingError => _isInFirstPage && _error != null;

  @computed
  bool get showSilentError => !_isInFirstPage && _error != null;

  @action
  void reset() {
    _isLoading = false;
    _error = null;
    _items.clear();
    _hasReachedEnd = false;
    _page = _page.copyWith(currentPage: 1);
  }

  @action
  void _increasePage() {
    _page = _page.copyWith(
      currentPage: _page.currentPage + 1,
    );
  }

  @readonly
  bool _hasReachedEnd = false;

  StreamSubscription<void>? _subscription;

  Future<List<T>> request();

  @action
  Future<void> getItems() async {
    if (_isLoading || _hasReachedEnd) {
      return;
    }
    _isLoading = true;
    _error = null;
    await _subscription?.cancel();
    _subscription = request().asStream().listen((data) {
      if (data.isEmpty) {
        _hasReachedEnd = true;
      } else {
        _items.addAll(data);
        if (data.length < _page.currentPage) {
          _hasReachedEnd = true;
        } else {
          _increasePage();
        }
      }
      _isLoading = false;
    })
      ..onError((e, s) {
        _error = "There was an error";
        _isLoading = false;
      });
  }

  void dispose() {
    _scrollController.removeListener(_scrollListener);
  }
}

class _PageModel extends Equatable {
  final int currentPage;
  final int pageSize;

  const _PageModel({
    required this.currentPage,
    required this.pageSize,
  });

  @override
  List<Object> get props => [currentPage, pageSize];

  _PageModel copyWith({
    int? currentPage,
    int? pageSize,
  }) {
    return _PageModel(
      currentPage: currentPage ?? this.currentPage,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}
