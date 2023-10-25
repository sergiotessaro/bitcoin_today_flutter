import 'package:bitcoin_today/modules/home/data/model/coin_codes_model.dart';
import 'package:flutter/material.dart';

class ListCardCoinCodesComponent extends StatelessWidget {
  final List<CoinCodesModel> coins;

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
