class Bpi {
    Bpi({
        this.code,
        this.rate,
        this.description,
        this.rateFloat,
    });

    String? code;
    String? rate;
    String? description;
    double? rateFloat;

    factory Bpi.fromJson(Map<String, dynamic> json) => Bpi(
        code: json["code"] == null ? null : json["code"],
        rate: json["rate"] == null ? null : json["rate"],
        description: json["description"] == null ? null : json["description"],
        rateFloat: json["rate_float"] == null ? null : json["rate_float"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "rate": rate == null ? null : rate,
        "description": description == null ? null : description,
        "rate_float": rateFloat == null ? null : rateFloat,
    };
}