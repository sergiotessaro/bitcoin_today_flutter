class CoinCodesModel {
  CoinCodesModel({
    this.currency,
    this.country,
  });

  String? currency;
  String? country;

  factory CoinCodesModel.fromJson(Map<String, dynamic> json) => CoinCodesModel(
        currency: json["currency"] == null ? null : json["currency"],
        country: json["country"] == null ? null : json["country"],
      );

  Map<String, dynamic> toJson() => {
        "currency": currency == null ? null : currency,
        "country": country == null ? null : country,
      };
}
