import 'package:bitcoin_today/modules/home/data/repository/searchCoinByCodeRepository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioAdapterMock extends Mock implements Dio {}

void main() async {
  group('UserRemoteDataSource', () {
    SearchCoinByCodeRepository? searchCoinByCodeRepository;
    DioAdapterMock? dioAdapterMock;
    final dio = DioAdapterMock();

    setUp(() {
      dioAdapterMock = DioAdapterMock();
      searchCoinByCodeRepository = SearchCoinByCodeRepositoryImpl(dio);
    });

    group('login', () {
      test('test coin search repository', () async {
        String code = "BRL";

        when(dioAdapterMock!
                .get("https://api.coindesk.com/v1/bpi/currentprice/$code.json"))
            .thenAnswer((_) async => Response(
                    statusCode: 200,
                    requestOptions: RequestOptions(
                        path:
                            "https://api.coindesk.com/v1/bpi/currentprice/$code.json"),
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
                    }));
        final receiver = await searchCoinByCodeRepository!(code);
        expect(receiver.bpi!["BRL"]!.code, "BRL");
      });
    });
  });
}
