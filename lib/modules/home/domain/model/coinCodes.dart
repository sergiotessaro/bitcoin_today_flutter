import 'dart:convert';

List<CoinCodes> coinsFromJson(String str) =>
    List<CoinCodes>.from(json.decode(str).map((x) => CoinCodes.fromJson(x)));

String coinsToJson(List<CoinCodes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoinCodes {
  CoinCodes({
    this.currency,
    this.country,
  });

  String? currency;
  String? country;

  factory CoinCodes.fromJson(Map<String, dynamic> json) => CoinCodes(
        currency: json["currency"] == null ? null : json["currency"],
        country: json["country"] == null ? null : json["country"],
      );

  Map<String, dynamic> toJson() => {
        "currency": currency == null ? null : currency,
        "country": country == null ? null : country,
      };
}
