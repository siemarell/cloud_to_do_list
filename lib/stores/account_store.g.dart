// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountStore on _AccountStore, Store {
  Computed<FirebaseUser> _$userComputed;

  @override
  FirebaseUser get user =>
      (_$userComputed ??= Computed<FirebaseUser>(() => super.user)).value;

  final _$userFutureAtom = Atom(name: '_AccountStore.userFuture');

  @override
  ObservableFuture<FirebaseUser> get userFuture {
    _$userFutureAtom.context.enforceReadPolicy(_$userFutureAtom);
    _$userFutureAtom.reportObserved();
    return super.userFuture;
  }

  @override
  set userFuture(ObservableFuture<FirebaseUser> value) {
    _$userFutureAtom.context.conditionallyRunInAction(() {
      super.userFuture = value;
      _$userFutureAtom.reportChanged();
    }, _$userFutureAtom, name: '${_$userFutureAtom.name}_set');
  }

  final _$_AccountStoreActionController =
      ActionController(name: '_AccountStore');

  @override
  dynamic login(LoginType loginType) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.login(loginType);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }
}
