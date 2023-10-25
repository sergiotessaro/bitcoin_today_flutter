import 'dart:async';

import 'package:bitcoin_today/modules/home/domain/domain.dart';
import 'package:dartz/dartz.dart';

import '../../../app/app.dart';
import '../data.dart';

class SearchCoinRepository implements ISearchCoinRepository {
  final ISearchCoinDatasource _searchCoinDatasource;

  SearchCoinRepository(this._searchCoinDatasource);

  @override
  Future<Either<Failure, ReceiverModel>> searchCoinByCode({required String code}) async {
    try {
      final response = await _searchCoinDatasource.searchCoinByCode(code: code);
      return Right(response);
    } on TimeoutException {
      return Left(Failure.timeout());
    } catch (e) {
      return Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<CoinCodesModel>>> searchCoinCodes() async {
    try {
      final response = await _searchCoinDatasource.searchCoinCodes();
      return Right(response);
    } on TimeoutException {
      return Left(Failure.timeout());
    } catch (e) {
      return Left(Failure.serverError());
    }
  }
}
