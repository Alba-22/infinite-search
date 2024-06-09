// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ComplexStore on ComplexStoreBase, Store {
  late final _$_queryAtom =
      Atom(name: 'ComplexStoreBase._query', context: context);

  QueryModel get query {
    _$_queryAtom.reportRead();
    return super._query;
  }

  @override
  QueryModel get _query => query;

  @override
  set _query(QueryModel value) {
    _$_queryAtom.reportWrite(value, super._query, () {
      super._query = value;
    });
  }

  late final _$ComplexStoreBaseActionController =
      ActionController(name: 'ComplexStoreBase', context: context);

  @override
  void setSearchText(String text) {
    final _$actionInfo = _$ComplexStoreBaseActionController.startAction(
        name: 'ComplexStoreBase.setSearchText');
    try {
      return super.setSearchText(text);
    } finally {
      _$ComplexStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTags(List<Tag> tags) {
    final _$actionInfo = _$ComplexStoreBaseActionController.startAction(
        name: 'ComplexStoreBase.setTags');
    try {
      return super.setTags(tags);
    } finally {
      _$ComplexStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(StatusEnum status) {
    final _$actionInfo = _$ComplexStoreBaseActionController.startAction(
        name: 'ComplexStoreBase.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$ComplexStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
