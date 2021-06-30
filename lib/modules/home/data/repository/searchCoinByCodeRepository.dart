import 'package:bitcoin_today/modules/home/domain/model/coinDetails.dart';
import 'package:dio/dio.dart';

abstract class SearchCoinByCodeRepository {
  Future<Bpi> call(String code);
}

class SearchCoinByCodeRepositoryImpl implements SearchCoinByCodeRepository{
  final Dio dio;

  SearchCoinByCodeRepositoryImpl(this.dio);

  @override
  Future<Bpi> call(String code) async {
    try {
      Response response = await dio.get(
        'currentprice/${code.toUpperCase()}.json',
        options: Options(headers: {
          "Content-Type": "application/json; charset=utf-8",
        }, responseType: ResponseType.json),
      );

      return response.data["bpi"].map<Bpi>((bpi) => Bpi.fromJson(bpi));
    } catch (e) {
      throw e;
    }
  }
}