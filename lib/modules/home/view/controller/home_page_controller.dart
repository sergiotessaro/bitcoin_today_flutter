import 'package:bitcoin_today/modules/home/data/model/receiver_model.dart';
import 'package:mobx/mobx.dart';

import '../../domain/domain.dart';

part 'home_page_controller.g.dart';

class HomeController extends _HomeControllerBase with _$HomeController {
  final SearchCoinByCodeUseCase searchCoinByCodeUseCase;
  final SearchCoinCodesUseCase searchCoinCodesUseCase;

  HomeController(this.searchCoinByCodeUseCase, this.searchCoinCodesUseCase) {
    super.searchCoinCodesUseCase = searchCoinCodesUseCase;
    super.searchCoinByCodeUseCase = searchCoinByCodeUseCase;
  }
}

abstract class _HomeControllerBase with Store {
  late SearchCoinByCodeUseCase searchCoinByCodeUseCase;
  late SearchCoinCodesUseCase searchCoinCodesUseCase;

  @action
  mounted() async {
    this.loading = true;
    final response = await searchCoinByCodeUseCase(this.code);

    response.fold((error) {
      print(error);
    }, (receiver) {
      this.receiver = receiver;
    });

    this.loading = false;
  }

  @observable
  String code = "USD";

  @observable
  bool loading = false;

  @observable
  ReceiverModel receiver = ReceiverModel();

  @action
  update() async {
    await this.mounted();
  }

  @action
  search() async {
    await searchCoinCodesUseCase();
  }
}
