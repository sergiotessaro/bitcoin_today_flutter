import 'dart:convert';

import 'package:bitcoin_today/modules/home/domain/model/receiver.dart';
import 'package:dio/dio.dart';

abstract class SearchCoinByCodeRepository {
  Future<Receiver> call(String code);
}

class SearchCoinByCodeRepositoryImpl implements SearchCoinByCodeRepository {
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
      print(json.decode(response.data));

      return Receiver.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
