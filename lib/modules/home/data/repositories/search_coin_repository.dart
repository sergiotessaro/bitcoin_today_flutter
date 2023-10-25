import 'dart:async';

import 'package:bitcoin_today/modules/home/data/model/coin_codes_model.dart';
import 'package:bitcoin_today/modules/home/data/model/receiver_model.dart';
import 'package:bitcoin_today/modules/home/domain/domain.dart';
import 'package:dartz/dartz.dart';

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
  Future<Either<Failure, List<CoinCodesModel>>> searchCoinCodes() {
    // TODO: implement searchCoinCodes
    throw UnimplementedError();
  }
}
