import 'package:bitcoin_today/modules/home/domain/model/receiver.dart';
import 'package:bitcoin_today/modules/home/domain/usecase/searchCoinCodesUseCase.dart';
import 'package:bitcoin_today/modules/home/domain/usecase/searchCoinUseCase.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'homeController.g.dart';

class HomeController extends _HomeControllerBase with _$HomeController {
  final SearchCoinUseCase searchCoinUseCase;
  final SearchCoinCodesUseCase searchCoinCodesUseCase;
  final BuildContext context;

  HomeController(
      this.context, this.searchCoinUseCase, this.searchCoinCodesUseCase) {
    super.searchCoinUseCase = searchCoinUseCase;
    super.searchCoinCodesUseCase = searchCoinCodesUseCase;
  }
}

abstract class _HomeControllerBase with Store {
  late BuildContext context;
  late SearchCoinUseCase searchCoinUseCase;
  late SearchCoinCodesUseCase searchCoinCodesUseCase;

  @observable
  String code = "USD";

  @observable
  bool _loading = false;

  @computed
  bool get loading => this._loading;

  @observable
  Receiver receiver = Receiver();

  @action
  mounted() async {
    this._loading = true;
    try {
      this.receiver = await searchCoinUseCase(this.code);
    } catch (e) {
      throw e;
    } finally {
      this._loading = false;
    }
  }

  @action
  update() async {
    await this.mounted();
  }

  @action
  search() async {
    await searchCoinCodesUseCase();
  }
}
