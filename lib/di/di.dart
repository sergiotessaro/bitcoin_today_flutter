import 'package:bitcoin_today/modules/home/data/repository/searchCoinByCodeRepository.dart';
import 'package:dio/dio.dart';

final dioOptions = BaseOptions(baseUrl: "https://api.coindesk.com/v1/bpi/");
final dio = Dio(dioOptions);

//external repository
final searchCoinByCodeRepository = SearchCoinByCodeRepositoryImpl(dio);

