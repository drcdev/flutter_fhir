

part 'sampledData.g.dart';

@JsonSerializable(explicitToJson: true)
class SampledData {

  String id;
  List<Extension> extension;
  Quantity origin;
  double period;
  Element _period;
  double factor;
  Element _factor;
  double lowerLimit;
  Element _lowerLimit;
  double upperLimit;
  Element _upperLimit;
  int dimensions;
  Element _dimensions;
  String data;
  Element _data;


SampledData(
      {this.id,
this.extension,
this.origin,
this.period,
this._period,
this.factor,
this._factor,
this.lowerLimit,
this._lowerLimit,
this.upperLimit,
this._upperLimit,
this.dimensions,
this._dimensions,
this.data,
this._data});

  factory SampledData.fromJson(Map<String, dynamic> json) => _$SampledDataFromJson(json);
  Map<String, dynamic> toJson() => _$SampledDataToJson(this);
}