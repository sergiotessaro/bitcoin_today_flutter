import 'package:bitcoin_today/modules/home/data/repository/searchCoinCodesRepository.dart';

abstract class SearchCoinCodesUseCase {
  Future<List<dynamic>> call();
}

class SearchCoinCodesUseCaseImpl implements SearchCoinCodesUseCase {
  final SearchCoinCodesRepository searchCoinCodesRepository;

  SearchCoinCodesUseCaseImpl(this.searchCoinCodesRepository);

  @override
  Future<List<dynamic>> call() async {
    try {
      return await searchCoinCodesRepository();
    } catch (e) {
      throw e;
    }
  }
}
