import 'package:bitcoin_today/modules/home/controller/homeController.dart';
import 'package:bitcoin_today/modules/home/data/repository/searchCoinByCodeRepository.dart';
import 'package:bitcoin_today/modules/home/data/repository/searchCoinCodesRepository.dart';
import 'package:bitcoin_today/modules/home/domain/usecase/searchCoinCodesUseCase.dart';
import 'package:bitcoin_today/modules/home/domain/usecase/searchCoinUseCase.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio();

//external repository
final searchCoinByCodeRepository = SearchCoinByCodeRepositoryImpl(dio);
final searchCoinCodesRepository = SearchCoinCodesRepositoryImpl(dio);

//usecase
final searchCoinUseCase = SearchCoinUseCaseImpl(searchCoinByCodeRepository);
final searchCoinCodesUseCase =
    SearchCoinCodesUseCaseImpl(searchCoinCodesRepository);

//controller
final homeController =
    (BuildContext context) => HomeController(context, searchCoinUseCase, searchCoinCodesUseCase);
