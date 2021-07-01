import 'package:bitcoin_today/modules/home/domain/model/coinDetails.dart';
import 'package:bitcoin_today/modules/home/domain/model/time.dart';

class Receiver {
    Receiver({
        this.time,
        this.disclaimer,
        this.bpi,
    });

    Time? time;
    String? disclaimer;
    Map<String, Bpi>? bpi;

    factory Receiver.fromJson(Map<String, dynamic> json) => Receiver(
        time: json["time"] == null ? null : Time.fromJson(json["time"]),
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
        bpi: json["bpi"] == null ? null : Map.from(json["bpi"]).map((k, v) => MapEntry<String, Bpi>(k, Bpi.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "time": time == null ? null : time!.toJson(),
        "disclaimer": disclaimer == null ? null : disclaimer,
        "bpi": bpi == null ? null : Map.from(bpi!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}
