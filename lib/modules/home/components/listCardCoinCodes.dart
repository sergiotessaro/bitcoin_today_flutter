import 'package:bitcoin_today/modules/home/domain/model/coinCodes.dart';
import 'package:flutter/material.dart';

class ListCardCoinCodesComponent extends StatelessWidget {
  final List<CoinCodes> coins;

  ListCardCoinCodesComponent({required this.coins});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListView.builder(
            itemCount: coins.length,
            itemBuilder: (context, index) {
              return Card(
                child: Text(
                  "${coins[index].currency}",
                  textAlign: TextAlign.center,
                ),
              );
            }),
      ),
    );
  }
}
