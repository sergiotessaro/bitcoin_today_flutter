import 'package:bitcoin_today/modules/home/data/repositories/search_coin_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../modules.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addInstance(Dio());
    //repository
    i.addInstance(SearchCoinRepository(i.get()));
    //datasource
    i.addInstance(SearchCoinDatasource(i.get()));
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage());
  }
}
