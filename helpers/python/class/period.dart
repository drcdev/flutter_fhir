

part 'period.g.dart';

@JsonSerializable(explicitToJson: true)
class Period {

  String id;
  List<Extension> extension;
  StringTime start;
  Element _start;
  StringTime end;
  Element _end;


Period(
      {this.id,
this.extension,
this.start,
this._start,
this.end,
this._end});

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}