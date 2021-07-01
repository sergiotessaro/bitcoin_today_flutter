import 'package:bitcoin_today/modules/home/data/repository/searchCoinByCodeRepository.dart';
import 'package:bitcoin_today/modules/home/domain/usecase/searchCoinUseCase.dart';
import 'package:dio/dio.dart';

// final dioOptions = BaseOptions(baseUrl: "");
final dio = Dio();

//external repository
final searchCoinByCodeRepository = SearchCoinByCodeRepositoryImpl(dio);

//usecase
final searchCoinUseCase = SearchCoinUseCaseImpl(searchCoinByCodeRepository);

