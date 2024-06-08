// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'original_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OriginalController on OriginalControllerBase, Store {
  Computed<bool>? _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??= Computed<bool>(() => super.isEmpty,
          name: 'OriginalControllerBase.isEmpty'))
      .value;
  Computed<bool>? _$isInitialLoadingComputed;

  @override
  bool get isInitialLoading => (_$isInitialLoadingComputed ??= Computed<bool>(
          () => super.isInitialLoading,
          name: 'OriginalControllerBase.isInitialLoading'))
      .value;
  Computed<bool>? _$_isInFirstPageComputed;

  @override
  bool get _isInFirstPage =>
      (_$_isInFirstPageComputed ??= Computed<bool>(() => super._isInFirstPage,
              name: 'OriginalControllerBase._isInFirstPage'))
          .value;
  Computed<bool>? _$isInInfiniteLoadingComputed;

  @override
  bool get isInInfiniteLoading => (_$isInInfiniteLoadingComputed ??=
          Computed<bool>(() => super.isInInfiniteLoading,
              name: 'OriginalControllerBase.isInInfiniteLoading'))
      .value;
  Computed<bool>? _$isFilterEmptyComputed;

  @override
  bool get isFilterEmpty =>
      (_$isFilterEmptyComputed ??= Computed<bool>(() => super.isFilterEmpty,
              name: 'OriginalControllerBase.isFilterEmpty'))
          .value;
  Computed<bool>? _$noResultsFoundComputed;

  @override
  bool get noResultsFound =>
      (_$noResultsFoundComputed ??= Computed<bool>(() => super.noResultsFound,
              name: 'OriginalControllerBase.noResultsFound'))
          .value;
  Computed<bool>? _$showScreamingErrorComputed;

  @override
  bool get showScreamingError => (_$showScreamingErrorComputed ??=
          Computed<bool>(() => super.showScreamingError,
              name: 'OriginalControllerBase.showScreamingError'))
      .value;
  Computed<bool>? _$showSilentErrorComputed;

  @override
  bool get showSilentError =>
      (_$showSilentErrorComputed ??= Computed<bool>(() => super.showSilentError,
              name: 'OriginalControllerBase.showSilentError'))
          .value;

  late final _$_searchQueryAtom =
      Atom(name: 'OriginalControllerBase._searchQuery', context: context);

  RequestPayload get searchQuery {
    _$_searchQueryAtom.reportRead();
    return super._searchQuery;
  }

  @override
  RequestPayload get _searchQuery => searchQuery;

  @override
  set _searchQuery(RequestPayload value) {
    _$_searchQueryAtom.reportWrite(value, super._searchQuery, () {
      super._searchQuery = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: 'OriginalControllerBase._isLoading', context: context);

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
      Atom(name: 'OriginalControllerBase._items', context: context);

  ObservableList<PostModel> get items {
    _$_itemsAtom.reportRead();
    return super._items;
  }

  @override
  ObservableList<PostModel> get _items => items;

  @override
  set _items(ObservableList<PostModel> value) {
    _$_itemsAtom.reportWrite(value, super._items, () {
      super._items = value;
    });
  }

  late final _$_errorAtom =
      Atom(name: 'OriginalControllerBase._error', context: context);

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
      Atom(name: 'OriginalControllerBase._hasReachedEnd', context: context);

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
      AsyncAction('OriginalControllerBase.getItems', context: context);

  @override
  Future<void> getItems() {
    return _$getItemsAsyncAction.run(() => super.getItems());
  }

  late final _$OriginalControllerBaseActionController =
      ActionController(name: 'OriginalControllerBase', context: context);

  @override
  void setSearchQuery(String text) {
    final _$actionInfo = _$OriginalControllerBaseActionController.startAction(
        name: 'OriginalControllerBase.setSearchQuery');
    try {
      return super.setSearchQuery(text);
    } finally {
      _$OriginalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTags(List<Tag> tags) {
    final _$actionInfo = _$OriginalControllerBaseActionController.startAction(
        name: 'OriginalControllerBase.setTags');
    try {
      return super.setTags(tags);
    } finally {
      _$OriginalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void switchStatus(StatusEnum status) {
    final _$actionInfo = _$OriginalControllerBaseActionController.startAction(
        name: 'OriginalControllerBase.switchStatus');
    try {
      return super.switchStatus(status);
    } finally {
      _$OriginalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$OriginalControllerBaseActionController.startAction(
        name: 'OriginalControllerBase.reset');
    try {
      return super.reset();
    } finally {
      _$OriginalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _increasePage() {
    final _$actionInfo = _$OriginalControllerBaseActionController.startAction(
        name: 'OriginalControllerBase._increasePage');
    try {
      return super._increasePage();
    } finally {
      _$OriginalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isEmpty: ${isEmpty},
isInitialLoading: ${isInitialLoading},
isInInfiniteLoading: ${isInInfiniteLoading},
isFilterEmpty: ${isFilterEmpty},
noResultsFound: ${noResultsFound},
showScreamingError: ${showScreamingError},
showSilentError: ${showSilentError}
    ''';
  }
}
