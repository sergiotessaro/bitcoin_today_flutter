import 'package:bitcoin_today/modules/app/error/error.dart';
import 'package:dartz/dartz.dart';

import '../../data/model/model.dart';

abstract class ISearchCoinRepository {
  Future<Either<Failure, ReceiverModel>> searchCoinByCode({required String code});
  Future<Either<Failure, List<CoinCodesModel>>> searchCoinCodes();
}
