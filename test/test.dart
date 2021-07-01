// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'package:bitcoin_today/di/di.dart';
import 'package:bitcoin_today/modules/home/data/repository/searchCoinByCodeRepository.dart';
import 'package:bitcoin_today/modules/home/domain/model/coinDetails.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'test.mocks.dart';

class DioMock extends Mock implements Dio {
}

void main() {
  test('test coin search repository', () async {
    final dio = DioMock();
    final searchCoinByCodeRepository = SearchCoinByCodeRepositoryImpl(dio);

    when(dio.get("currentprice/BRL.json")).thenAnswer((_) async => Response(
        statusCode: 200,
        data: {
          "time": {
            "updated": "Jul 1, 2021 13:27:00 UTC",
            "updatedISO": "2021-07-01T13:27:00+00:00",
            "updateduk": "Jul 1, 2021 at 14:27 BST"
          },
          "disclaimer":
              "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org",
          "bpi": {
            "USD": {
              "code": "USD",
              "rate": "33,718.2517",
              "description": "United States Dollar",
              "rate_float": 33718.2517
            },
            "BRL": {
              "code": "BRL",
              "rate": "167,232.4162",
              "description": "Brazilian Real",
              "rate_float": 167232.4162
            }
          }
        },
        requestOptions:
            RequestOptions(path: "https://api.coindesk.com/v1/bpi/")));

    final receiver = await searchCoinByCodeRepository("BRL");
    expect(receiver.bpi!["BRL"]!.code, "BRL");
  });
}
