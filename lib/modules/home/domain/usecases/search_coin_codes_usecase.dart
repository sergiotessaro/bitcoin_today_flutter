import '../../data/data.dart';

abstract class ISearchCoinCodesUseCase {
  Future<List<dynamic>> call();
}

class SearchCoinCodesUseCase implements ISearchCoinCodesUseCase {
  final SearchCoinDatasource searchCoinDatasource;

  SearchCoinCodesUseCase(this.searchCoinDatasource);

  @override
  Future<List<dynamic>> call() async {
    return await searchCoinDatasource.searchCoinCodes();
  }
}
