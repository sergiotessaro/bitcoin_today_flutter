// import 'package:bitcoin_today/modules/home/data/datasources/search_coin_by_code_repository.dart';
// import 'package:bitcoin_today/modules/home/data/datasources/search_coin_codes_repository.dart';
// import 'package:bitcoin_today/modules/home/domain/usecases/search_coin_codes_usecase.dart';
// import 'package:bitcoin_today/modules/home/domain/usecases/search_coin_usecase.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// import '../modules/home/view/controller/home_page_controller.dart';

// final dio = Dio();

// //external repository
// final searchCoinByCodeRepository = SearchCoinByCodeRepositoryImpl(dio);
// final searchCoinCodesRepository = SearchCoinCodesRepositoryImpl(dio);

// //usecase
// final searchCoinUseCase = SearchCoinUseCaseImpl(searchCoinByCodeRepository);
// final searchCoinCodesUseCase = SearchCoinCodesUseCaseImpl(searchCoinCodesRepository);

// //controller
// final homeController = (BuildContext context) => HomeController(searchCoinUseCase, searchCoinCodesUseCase);
