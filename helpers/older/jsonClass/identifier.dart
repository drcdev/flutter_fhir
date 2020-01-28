
// import 'period.dart'
// import 'package:json_annotation/json_annotation.dart';
// part 'identifier.g.dart';

// @JsonSerializable(explicitToJson: true)
// class Identifier {
//   String resourceType;
//    // from Resource: id, meta, implicitRules, and language
//   String code; // usual | official | temp | secondary | old (If known)
//   CodeableConcept type; // Description of identifier
//   String system; // The namespace for the identifier value
//   String value; // The value that is unique
//   Period period; // Time period when id is/was valid for use
//   ReferenceOrganization assigner; // Organization that issued id (may be just text)
// }

//   Bundle({this.resourceType, this.identifier, this.type, this.timestamp, this.total, this.link, this.entry, this.signature`});

//   factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
//   Map<String, dynamic> toJson() => _$BundleToJson(this);
// }
