import 'dart:convert';

import 'package:bitcoin_today/modules/home/data/model/receiver_model.dart';
import 'package:dio/dio.dart';

import '../model/coin_codes_model.dart';

abstract class ISearchCoinDatasource {
  Future<ReceiverModel> searchCoinByCode({required String code});
  Future<List<CoinCodesModel>> searchCoinCodes();
}

class SearchCoinDatasource implements ISearchCoinDatasource {
  final Dio dio;

  SearchCoinDatasource(this.dio);

  @override
  Future<ReceiverModel> searchCoinByCode({required String code}) async {
    try {
      Response response = await dio.get(
        'https://api.coindesk.com/v1/bpi/currentprice/$code.json',
        options: Options(headers: {
          Headers.contentTypeHeader: "application/json",
        }, responseType: ResponseType.json),
      );
      print(json.decode(response.data));

      return ReceiverModel.fromJson(json.decode(response.data));
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<List<CoinCodesModel>> searchCoinCodes() async {
    try {
      Response response = await dio.get(
        'https://api.coindesk.com/v1/bpi/supported-currencies.json',
        options: Options(headers: {
          "Content-Type": "application/json; charset=utf-8",
        }, responseType: ResponseType.json),
      );

      return json
          .decode(response.data)
          .map<CoinCodesModel>((coinCode) => CoinCodesModel.fromJson(coinCode))
          .toList();
    } catch (e) {
      throw e;
    }
  }
}
