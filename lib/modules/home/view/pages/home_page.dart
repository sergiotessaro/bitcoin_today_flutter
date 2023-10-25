import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controller/home_page_controller.dart';

HomeController? controller;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller == null) {
      // controller = homeController(context);
      controller!.mounted();
    }
    return WillPopScope(
        onWillPop: () async {
          controller = null;
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            bottomOpacity: 0.4,
            toolbarOpacity: 1,
            backgroundColor: Colors.orange,
            title: Text('Bitcoin Now'),
          ),
          body: Container(child: Observer(builder: (_) {
            return Center(
              child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('images/bitcoin-logo.png'),
                        height: 100,
                        width: 100,
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Container(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: !controller!.loading
                                ? Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${controller!.receiver.bpi!.values.last.code}',
                                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Padding(padding: EdgeInsets.all(8.0)),
                                      Container(
                                        child: GridView(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                                          children: [
                                            Card(
                                                elevation: 3,
                                                shadowColor: Colors.black,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [Text('BTC Value', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            '\$ ${double.parse(controller!.receiver.bpi!.values.last.rate!.split(",").join("")).toStringAsFixed(2)}',
                                                            style: TextStyle(fontSize: 30),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [Text('${DateTime.now().toString().split('.')[0]}')],
                                                      ),
                                                    )
                                                  ],
                                                )),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          })),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text(
                      'Refresh',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)))),
                    onPressed: () {
                      controller!.update();
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)))),
                    onPressed: () {
                      controller!.search();
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Index()));
                    },
                    child: Text(
                      'Change Coin',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
