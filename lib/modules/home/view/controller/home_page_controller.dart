import 'package:bitcoin_today/modules/home/data/model/receiver_model.dart';
import 'package:mobx/mobx.dart';

part 'home_page_controller.g.dart';

class HomeController extends _HomeControllerBase with _$HomeController {
  // final SearchCoinUseCase searchCoinUseCase;
  // final SearchCoinCodesUseCase searchCoinCodesUseCase;

  // HomeController(this.searchCoinUseCase, this.searchCoinCodesUseCase) {
  //   // super.searchCoinUseCase = searchCoinUseCase;
  //   // super.searchCoinCodesUseCase = searchCoinCodesUseCase;
  // }
}

abstract class _HomeControllerBase with Store {
  // late SearchCoinUseCase searchCoinUseCase;
  // late SearchCoinCodesUseCase searchCoinCodesUseCase;

  @observable
  String code = "USD";

  @observable
  bool _loading = false;

  @computed
  bool get loading => this._loading;

  @observable
  ReceiverModel receiver = ReceiverModel();

  @action
  mounted() async {
    this._loading = true;
    try {
      // this.receiver = await searchCoinUseCase(this.code);
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
    // await searchCoinCodesUseCase();
  }
}
