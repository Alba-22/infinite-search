// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ComplexController on ComplexControllerBase, Store {
  late final _$_queryAtom =
      Atom(name: 'ComplexControllerBase._query', context: context);

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

  late final _$ComplexControllerBaseActionController =
      ActionController(name: 'ComplexControllerBase', context: context);

  @override
  void setSearchText(String text) {
    final _$actionInfo = _$ComplexControllerBaseActionController.startAction(
        name: 'ComplexControllerBase.setSearchText');
    try {
      return super.setSearchText(text);
    } finally {
      _$ComplexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTags(List<Tag> tags) {
    final _$actionInfo = _$ComplexControllerBaseActionController.startAction(
        name: 'ComplexControllerBase.setTags');
    try {
      return super.setTags(tags);
    } finally {
      _$ComplexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(StatusEnum status) {
    final _$actionInfo = _$ComplexControllerBaseActionController.startAction(
        name: 'ComplexControllerBase.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$ComplexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
