

part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {

  This is a Bundle resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Identifier identifier;
  enum: documentmessagetransactiontransaction-responsebatchbatch-responsehistorysearchsetcollection type;
  Element _type;
  DateTime timestamp;
  Element _timestamp;
  int total;
  Element _total;
  List<Bundle_Link> link;
  List<Bundle_Entry> entry;
  Signature signature;


Bundle(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.identifier,
this.type,
this._type,
this.timestamp,
this._timestamp,
this.total,
this._total,
this.link,
this.entry,
this.signature});

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}