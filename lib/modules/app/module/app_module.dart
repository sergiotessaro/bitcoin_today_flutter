import 'package:bitcoin_today/modules/home/data/repositories/search_coin_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../modules.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add(() {
      final dio = Dio(BaseOptions());

      dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

      return dio;
    });
    //repository
    i.add(SearchCoinRepository.new);
    //datasource
    i.addSingleton(SearchCoinDatasource.new);
    //usecases
    i.add(SearchCoinCodesUseCase.new);
    i.add(SearchCoinByCodeUseCase.new);
    //controller
    i.add(HomeController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage());
  }
}
