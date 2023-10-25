import 'package:dartz/dartz.dart';

import '../../../app/app.dart';
import '../../home.dart';

abstract class ISearchCoinByCodeUseCase {
  Future<Either<Failure, ReceiverModel>> call(String code);
}

class SearchCoinByCodeUseCase implements ISearchCoinByCodeUseCase {
  final SearchCoinRepository searchCoinRepository;

  SearchCoinByCodeUseCase(this.searchCoinRepository);

  @override
  Future<Either<Failure, ReceiverModel>> call(String code) async {
    return await searchCoinRepository.searchCoinByCode(code: code);
  }
}
