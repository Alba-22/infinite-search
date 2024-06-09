import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract base class PaginationStore<T> extends ChangeNotifier {
  static const int _defaultPageSize = 10;

  final ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  PaginationStore({int? pageSize}) {
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

  PageModel _page = const PageModel(
    currentPage: 1,
    pageSize: _defaultPageSize,
  );

  PageModel get page => _page;

  void setPageSize(int newPageSize) {
    _page = _page.copyWith(
      pageSize: newPageSize,
    );
    notifyListeners();
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  final List<T> _items = [];

  List<T> get items => _items;

  String? _error;

  String? get error => _error;

  bool get isEmpty =>
      _isInFirstPage && _items.isEmpty && _error == null && !_isLoading && isFilterEmpty;

  bool get isInitialLoading => _isInFirstPage && _isLoading;

  bool get _isInFirstPage => _page.currentPage == 1;

  bool get isInInfiniteLoading => !_isInFirstPage && _isLoading;

  bool get isFilterEmpty;

  bool get noResultsFound => !isFilterEmpty && _items.isEmpty;

  bool get showScreamingError => _isInFirstPage && _error != null;

  bool get showSilentError => !_isInFirstPage && _error != null;

  void reset() {
    _isLoading = false;
    _error = null;
    _items.clear();
    _hasReachedEnd = false;
    _page = _page.copyWith(currentPage: 1);
    notifyListeners();
  }

  void _increasePage() {
    _page = _page.copyWith(
      currentPage: _page.currentPage + 1,
    );
    notifyListeners();
  }

  bool _hasReachedEnd = false;

  bool get hasReachedEnd => _hasReachedEnd;

  StreamSubscription<void>? _subscription;

  Future<List<T>> request();

  Future<void> getItems() async {
    if (_isLoading || _hasReachedEnd) {
      return;
    }
    _isLoading = true;
    _error = null;
    notifyListeners();
    await _subscription?.cancel();
    notifyListeners();
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
      notifyListeners();
    })
      ..onError((e, s) {
        _error = "There was an error";
        _isLoading = false;
        notifyListeners();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_scrollListener);
  }
}

class PageModel extends Equatable {
  final int currentPage;
  final int pageSize;

  const PageModel({
    required this.currentPage,
    required this.pageSize,
  });

  @override
  List<Object> get props => [currentPage, pageSize];

  PageModel copyWith({
    int? currentPage,
    int? pageSize,
  }) {
    return PageModel(
      currentPage: currentPage ?? this.currentPage,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}
