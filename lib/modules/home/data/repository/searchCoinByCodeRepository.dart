import 'dart:developer';

import 'package:bitcoin_today/modules/home/domain/model/coinDetails.dart';
import 'package:bitcoin_today/modules/home/domain/model/receiver.dart';
import 'package:dio/dio.dart';

abstract class SearchCoinByCodeRepository {
  Future<Receiver> call(String code);
}

class SearchCoinByCodeRepositoryImpl implements SearchCoinByCodeRepository{
  final Dio dio;

  SearchCoinByCodeRepositoryImpl(this.dio);

  @override
  Future<Receiver> call(String code) async {
    try {
      Response response = await dio.get(
        'https://api.coindesk.com/v1/bpi/currentprice/$code.json',
        options: Options(headers: {
          Headers.contentTypeHeader: "application/json",
        }, responseType: ResponseType.json),
      );
      print(response.data["bpi"]);

      return response.data.map<Receiver>((r) => Receiver.fromJson(r));
    } catch (e) {
      print(e);
      throw e;
    }
  }
}