import 'link.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {
  String resourceType;
   // from Resource: id, meta, implicitRules, and language
  List<dynamic> entry;
  String type;   // R!  document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection
  String id;   // Persistent identifier for the bundle
  DateTime timestamp;   // When the bundle was assembled
  int total;   // C? If search, the total number of matches
  List<Link> link;   // Links related to this Bundle
  // List<QuerySQL> querySql;
  // QuertyTimeout queryTimeout;
  // QueryTime queryTime;

  Bundle({this.resourceType, this.id, this.type, this.timestamp, this.total, this.link, this.entry});

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}
