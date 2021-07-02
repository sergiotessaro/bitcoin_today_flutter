// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_HomeControllerBase.loading'))
      .value;

  final _$_loadingAtom = Atom(name: '_HomeControllerBase._loading');

  @override
  bool get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  final _$receiverAtom = Atom(name: '_HomeControllerBase.receiver');

  @override
  Receiver get receiver {
    _$receiverAtom.reportRead();
    return super.receiver;
  }

  @override
  set receiver(Receiver value) {
    _$receiverAtom.reportWrite(value, super.receiver, () {
      super.receiver = value;
    });
  }

  final _$mountedAsyncAction = AsyncAction('_HomeControllerBase.mounted');

  @override
  Future mounted() {
    return _$mountedAsyncAction.run(() => super.mounted());
  }

  final _$updateAsyncAction = AsyncAction('_HomeControllerBase.update');

  @override
  Future update() {
    return _$updateAsyncAction.run(() => super.update());
  }

  @override
  String toString() {
    return '''
receiver: ${receiver},
loading: ${loading}
    ''';
  }
}
