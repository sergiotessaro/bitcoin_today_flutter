import 'package:bitcoin_today/modules/home/data/model/coin_details_model.dart';
import 'package:bitcoin_today/modules/home/data/model/time_model.dart';

class ReceiverModel {
    ReceiverModel({
        this.time,
        this.disclaimer,
        this.bpi,
    });

    Time? time;
    String? disclaimer;
    Map<String, BpiModel>? bpi;

    factory ReceiverModel.fromJson(Map<String, dynamic> json) => ReceiverModel(
        time: json["time"] == null ? null : Time.fromJson(json["time"]),
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
        bpi: json["bpi"] == null ? null : Map.from(json["bpi"]).map((k, v) => MapEntry<String, BpiModel>(k, BpiModel.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "time": time == null ? null : time!.toJson(),
        "disclaimer": disclaimer == null ? null : disclaimer,
        "bpi": bpi == null ? null : Map.from(bpi!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}
