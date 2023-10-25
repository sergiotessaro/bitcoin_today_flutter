import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/modules.dart';

void main(){
  return runApp(ModularApp(module: AppModule(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Modular.routerConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}