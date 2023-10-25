import 'package:bitcoin_today/modules/home/data/model/receiver_model.dart';

import '../../home.dart';

abstract class ISearchCoinUseCase {
  Future<ReceiverModel> call(String code);
}

class SearchCoinByCodeUseCase implements ISearchCoinUseCase {
  final SearchCoinDatasource searchCoinDatasource;

  SearchCoinByCodeUseCase(this.searchCoinDatasource);

  @override
  Future<ReceiverModel> call(String code) async {
    return await searchCoinDatasource.searchCoinByCode(code: code);
  }
}
