// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$codeAtom =
      Atom(name: '_HomeControllerBase.code', context: context);

  @override
  String get code {
    _$codeAtom.reportRead();
    return super.code;
  }

  @override
  set code(String value) {
    _$codeAtom.reportWrite(value, super.code, () {
      super.code = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_HomeControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$receiverAtom =
      Atom(name: '_HomeControllerBase.receiver', context: context);

  @override
  ReceiverModel get receiver {
    _$receiverAtom.reportRead();
    return super.receiver;
  }

  @override
  set receiver(ReceiverModel value) {
    _$receiverAtom.reportWrite(value, super.receiver, () {
      super.receiver = value;
    });
  }

  late final _$mountedAsyncAction =
      AsyncAction('_HomeControllerBase.mounted', context: context);

  @override
  Future mounted() {
    return _$mountedAsyncAction.run(() => super.mounted());
  }

  late final _$updateAsyncAction =
      AsyncAction('_HomeControllerBase.update', context: context);

  @override
  Future update() {
    return _$updateAsyncAction.run(() => super.update());
  }

  late final _$searchAsyncAction =
      AsyncAction('_HomeControllerBase.search', context: context);

  @override
  Future search() {
    return _$searchAsyncAction.run(() => super.search());
  }

  @override
  String toString() {
    return '''
code: ${code},
loading: ${loading},
receiver: ${receiver}
    ''';
  }
}
