import 'dart:convert';

import 'package:bitcoin_today/modules/home/domain/model/coinCodes.dart';
import 'package:dio/dio.dart';

abstract class SearchCoinCodesRepository {
  Future<List<CoinCodes>> call();
}

class SearchCoinCodesRepositoryImpl implements SearchCoinCodesRepository {
  final Dio dio;

  SearchCoinCodesRepositoryImpl(this.dio);

  @override
  Future<List<CoinCodes>> call() async {
    try {
      Response response = await dio.get(
        'https://api.coindesk.com/v1/bpi/supported-currencies.json',
        options: Options(headers: {
          "Content-Type": "application/json; charset=utf-8",
        }, responseType: ResponseType.json),
      );

      return json
          .decode(response.data)
          .map<CoinCodes>((coinCode) => CoinCodes.fromJson(coinCode))
          .toList();
    } catch (e) {
      throw e;
    }
  }
}
