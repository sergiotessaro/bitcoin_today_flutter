import 'package:dartz/dartz.dart';

import '../../../app/app.dart';
import '../../data/data.dart';

abstract class ISearchCoinCodesUseCase {
  Future<Either<Failure, List<dynamic>>> call();
}

class SearchCoinCodesUseCase implements ISearchCoinCodesUseCase {
  final SearchCoinRepository searchCoinRepository;

  SearchCoinCodesUseCase(this.searchCoinRepository);

  @override
  Future<Either<Failure, List<dynamic>>> call() async {
    return await searchCoinRepository.searchCoinCodes();
  }
}
