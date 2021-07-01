class Time {
    Time({
        this.updated,
        this.updatedIso,
        this.updateduk,
    });

    String? updated;
    DateTime? updatedIso;
    String? updateduk;

    factory Time.fromJson(Map<String, dynamic> json) => Time(
        updated: json["updated"] == null ? null : json["updated"],
        updatedIso: json["updatedISO"] == null ? null : DateTime.parse(json["updatedISO"]),
        updateduk: json["updateduk"] == null ? null : json["updateduk"],
    );

    Map<String, dynamic> toJson() => {
        "updated": updated == null ? null : updated,
        "updatedISO": updatedIso == null ? null : updatedIso!.toIso8601String(),
        "updateduk": updateduk == null ? null : updateduk,
    };
}
