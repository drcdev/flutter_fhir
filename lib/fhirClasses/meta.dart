import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

part 'meta.g.dart';

@JsonSerializable(explicitToJson: true)
class Meta {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  The version specific identifier, as it appears in the version portion
  // of the URL. This value changes when the resource is created, updated,
  // or deleted.
  String versionId;

  //  Extensions for versionId
  Element elementVersionId;

  //  When the resource last changed - e.g. when the version changed.
  DateTime lastUpdated;

  //  Extensions for lastUpdated
  Element elementLastUpdated;

  //  A uri that identifies the source system of the resource. This provides
  // a minimal amount of [[[Provenance]]] information that can be used to
  // track or differentiate the source of information in the resource. The
  // source may identify another FHIR server, document, message, database,
  // etc.
  String source;

  //  Extensions for source
  Element elementSource;

  //  A list of profiles (references to [[[StructureDefinition]]] resources)
  // that this resource claims to conform to. The URL is a reference to
  // [[[StructureDefinition.url]]].
  List<String> profile;

  //  Security labels applied to this resource. These tags connect specific
  // resources to the overall security policy and infrastructure.
  List<Coding> security;

  //  Tags applied to this resource. Tags are intended to be used to
  // identify and relate resources to process and workflow, and applications
  // are not required to consider the tags when interpreting the meaning of
  // a resource.
  List<Coding> tag;

Meta(
  {this.id,
    this.extension,
    this.versionId,
    this.elementVersionId,
    this.lastUpdated,
    this.elementLastUpdated,
    this.source,
    this.elementSource,
    this.profile,
    this.security,
    this.tag
    });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

