import 'entry.dart';
import 'link.dart';
import 'identifier.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {
  String resourceType;
   // from Resource: id, meta, implicitRules, and language
  String type;   // R!  document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection
 
  Identifier identifier;   // Persistent identifier for the bundle
   DateTime timestamp;   // When the bundle was assembled
  int total;   // C? If search, the total number of matches
  List<Link> link;   // Links related to this Bundle
  List<Entry> entry;
  Signature signature;  // Entry in the bundle - will have a resource or information
  List<QuerySQL> querySql;
  QuertyTimeout queryTimeout;
  QueryTime queryTime;

  Bundle({this.resourceType, this.identifier, this.type, this.timestamp, this.total, this.link, this.entry, this.signature, this.querySql, this.queryTimeout, this.queryTime});

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}
