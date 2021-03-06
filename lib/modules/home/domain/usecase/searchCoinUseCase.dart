import 'package:bitcoin_today/modules/home/data/repository/searchCoinByCodeRepository.dart';
import 'package:bitcoin_today/modules/home/domain/model/coinDetails.dart';
import 'package:bitcoin_today/modules/home/domain/model/receiver.dart';

abstract class SearchCoinUseCase {
  Future<Receiver> call(String code);
}

class SearchCoinUseCaseImpl implements SearchCoinUseCase {
  final SearchCoinByCodeRepository searchCoinByCodeRepository;

  SearchCoinUseCaseImpl(this.searchCoinByCodeRepository);

  @override
  Future<Receiver> call(String code) async {
    try {
      //while the method to get the code isnt done, BRL will be the default
      return await this.searchCoinByCodeRepository(code);
    } catch (e) {
      throw e;
    }
  }
}
