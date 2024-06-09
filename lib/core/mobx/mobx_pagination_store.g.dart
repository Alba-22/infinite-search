// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_pagination_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PaginationStore<T> on PaginationStoreBase<T>, Store {
  Computed<bool>? _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??= Computed<bool>(() => super.isEmpty,
          name: 'PaginationStoreBase.isEmpty'))
      .value;
  Computed<bool>? _$isInitialLoadingComputed;

  @override
  bool get isInitialLoading => (_$isInitialLoadingComputed ??= Computed<bool>(
          () => super.isInitialLoading,
          name: 'PaginationStoreBase.isInitialLoading'))
      .value;
  Computed<bool>? _$_isInFirstPageComputed;

  @override
  bool get _isInFirstPage =>
      (_$_isInFirstPageComputed ??= Computed<bool>(() => super._isInFirstPage,
              name: 'PaginationStoreBase._isInFirstPage'))
          .value;
  Computed<bool>? _$isInInfiniteLoadingComputed;

  @override
  bool get isInInfiniteLoading => (_$isInInfiniteLoadingComputed ??=
          Computed<bool>(() => super.isInInfiniteLoading,
              name: 'PaginationStoreBase.isInInfiniteLoading'))
      .value;
  Computed<bool>? _$noResultsFoundComputed;

  @override
  bool get noResultsFound =>
      (_$noResultsFoundComputed ??= Computed<bool>(() => super.noResultsFound,
              name: 'PaginationStoreBase.noResultsFound'))
          .value;
  Computed<bool>? _$showScreamingErrorComputed;

  @override
  bool get showScreamingError => (_$showScreamingErrorComputed ??=
          Computed<bool>(() => super.showScreamingError,
              name: 'PaginationStoreBase.showScreamingError'))
      .value;
  Computed<bool>? _$showSilentErrorComputed;

  @override
  bool get showSilentError =>
      (_$showSilentErrorComputed ??= Computed<bool>(() => super.showSilentError,
              name: 'PaginationStoreBase.showSilentError'))
          .value;

  late final _$_scrollControllerAtom =
      Atom(name: 'PaginationStoreBase._scrollController', context: context);

  ScrollController get scrollController {
    _$_scrollControllerAtom.reportRead();
    return super._scrollController;
  }

  @override
  ScrollController get _scrollController => scrollController;

  @override
  set _scrollController(ScrollController value) {
    _$_scrollControllerAtom.reportWrite(value, super._scrollController, () {
      super._scrollController = value;
    });
  }

  late final _$_pageAtom =
      Atom(name: 'PaginationStoreBase._page', context: context);

  _PageModel get page {
    _$_pageAtom.reportRead();
    return super._page;
  }

  @override
  _PageModel get _page => page;

  @override
  set _page(_PageModel value) {
    _$_pageAtom.reportWrite(value, super._page, () {
      super._page = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: 'PaginationStoreBase._isLoading', context: context);

  bool get isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  bool get _isLoading => isLoading;

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_itemsAtom =
      Atom(name: 'PaginationStoreBase._items', context: context);

  ObservableList<T> get items {
    _$_itemsAtom.reportRead();
    return super._items;
  }

  @override
  ObservableList<T> get _items => items;

  @override
  set _items(ObservableList<T> value) {
    _$_itemsAtom.reportWrite(value, super._items, () {
      super._items = value;
    });
  }

  late final _$_errorAtom =
      Atom(name: 'PaginationStoreBase._error', context: context);

  String? get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  String? get _error => error;

  @override
  set _error(String? value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$_hasReachedEndAtom =
      Atom(name: 'PaginationStoreBase._hasReachedEnd', context: context);

  bool get hasReachedEnd {
    _$_hasReachedEndAtom.reportRead();
    return super._hasReachedEnd;
  }

  @override
  bool get _hasReachedEnd => hasReachedEnd;

  @override
  set _hasReachedEnd(bool value) {
    _$_hasReachedEndAtom.reportWrite(value, super._hasReachedEnd, () {
      super._hasReachedEnd = value;
    });
  }

  late final _$getItemsAsyncAction =
      AsyncAction('PaginationStoreBase.getItems', context: context);

  @override
  Future<void> getItems() {
    return _$getItemsAsyncAction.run(() => super.getItems());
  }

  late final _$PaginationStoreBaseActionController =
      ActionController(name: 'PaginationStoreBase', context: context);

  @override
  void setPageSize(int newPageSize) {
    final _$actionInfo = _$PaginationStoreBaseActionController.startAction(
        name: 'PaginationStoreBase.setPageSize');
    try {
      return super.setPageSize(newPageSize);
    } finally {
      _$PaginationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$PaginationStoreBaseActionController.startAction(
        name: 'PaginationStoreBase.reset');
    try {
      return super.reset();
    } finally {
      _$PaginationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _increasePage() {
    final _$actionInfo = _$PaginationStoreBaseActionController.startAction(
        name: 'PaginationStoreBase._increasePage');
    try {
      return super._increasePage();
    } finally {
      _$PaginationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isEmpty: ${isEmpty},
isInitialLoading: ${isInitialLoading},
isInInfiniteLoading: ${isInInfiniteLoading},
noResultsFound: ${noResultsFound},
showScreamingError: ${showScreamingError},
showSilentError: ${showSilentError}
    ''';
  }
}
