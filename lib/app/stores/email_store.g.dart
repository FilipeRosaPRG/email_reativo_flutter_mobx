// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmailStore on _EmailStore, Store {
  late final _$buttonEnabledAtom =
      Atom(name: '_EmailStore.buttonEnabled', context: context);

  @override
  bool get buttonEnabled {
    _$buttonEnabledAtom.reportRead();
    return super.buttonEnabled;
  }

  @override
  set buttonEnabled(bool value) {
    _$buttonEnabledAtom.reportWrite(value, super.buttonEnabled, () {
      super.buttonEnabled = value;
    });
  }

  late final _$_EmailStoreActionController =
      ActionController(name: '_EmailStore', context: context);

  @override
  void changeEmail(dynamic value) {
    final _$actionInfo = _$_EmailStoreActionController.startAction(
        name: '_EmailStore.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_EmailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
buttonEnabled: ${buttonEnabled}
    ''';
  }
}
