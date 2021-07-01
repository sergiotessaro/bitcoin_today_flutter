// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         bottomOpacity: 0.4,
//         toolbarOpacity: 1,
//         backgroundColor: Colors.orange,
//         title: Text('Bitcoin Now'),
//       ),
//       body: Container(child: Observer(builder: (_) {
//         return Center(
//           child: Container(
//               padding: EdgeInsets.all(10.0),
//               child: Column(
//                 children: [
//                   Container(
//                     child: Image.asset('images/bitcoin-logo.png'),
//                     height: 100,
//                     width: 100,
//                   ),
//                   Padding(padding: EdgeInsets.all(8.0)),
//                   Container(
//                     child: Card(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: !bitCoinController.loading
//                             ? Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         '${bitCoinController.bitcointicker.bpi.values.last.code}',
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold),
//                                       )
//                                     ],
//                                   ),
//                                   Padding(padding: EdgeInsets.all(8.0)),
//                                   Container(
//                                     child: GridView(
//                                       scrollDirection: Axis.vertical,
//                                       shrinkWrap: true,
//                                       gridDelegate:
//                                           SliverGridDelegateWithFixedCrossAxisCount(
//                                               crossAxisCount: 1),
//                                       children: [
//                                         Expanded(
//                                           child: Card(
//                                             child: Column(
//                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                               children: [
//                                                 Padding(
//                                                   padding: const EdgeInsets.all(8.0),
//                                                   child: Row(
//                                                     mainAxisAlignment: MainAxisAlignment.center,
//                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                     children: [
//                                                       Text('BTC Value', style: TextStyle(
//                                                         fontWeight: FontWeight.bold,
//                                                         fontSize: 18
//                                                       ),)
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsets.all(8.0),
//                                                   child: Row(
//                                                     mainAxisAlignment: MainAxisAlignment.center,
//                                                     children: [
//                                                       Text('\$${bitCoinController.bitcointicker.bpi.values.last.rate}', style: TextStyle(
//                                                         fontSize: 30
//                                                       ),),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsets.all(8.0),
//                                                   child: Row(
//                                                     mainAxisAlignment: MainAxisAlignment.center,
//                                                     children: [
//                                                       Text('${DateTime.now().toString().split('.')[0]}')
//                                                     ],
//                                                   ),
//                                                 )
//                                               ],
//                                             )
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               )
//                             : Center(
//                                 child: CircularProgressIndicator(),
//                               ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )),
//         );
//       })),
//       bottomSheet: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               FlatButton(
//                 shape: ShapeBorder.lerp(
//                     RoundedRectangleBorder(), RoundedRectangleBorder(), 20.0),
//                 onPressed: () {
//                   bitCoinController.init(widget.coin.text);
//                 },
//                 child: Text(
//                   'Refresh',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 color: Colors.orange,
//                 textColor: Colors.white,
//               ),
//               FlatButton(
//                 shape: ShapeBorder.lerp(
//                     RoundedRectangleBorder(), RoundedRectangleBorder(), 20.0),
//                 onPressed: () {
//                   Navigator.pop(context);
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Index()));
//                 },
//                 child: Text(
//                   'Change Coin',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 color: Colors.orange,
//                 textColor: Colors.white,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }