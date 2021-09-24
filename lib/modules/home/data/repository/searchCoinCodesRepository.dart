import 'dart:convert';

import 'package:dio/dio.dart';

abstract class SearchCoinCodesRepository {
  Future<List<dynamic>> call();
}

class SearchCoinCodesRepositoryImpl implements SearchCoinCodesRepository {
  final Dio dio;

  SearchCoinCodesRepositoryImpl(this.dio);

  @override
  Future<List<dynamic>> call() async {
    try {
      Response response = await dio.get(
        'https://api.coindesk.com/v1/bpi/supported-currencies.json',
        options: Options(headers: {
          "Content-Type": "application/json; charset=utf-8",
        }, responseType: ResponseType.json),
      );
      print(response);
      return json.decode(response.data);
    } catch (e) {
      throw e;
    }
  }
}
