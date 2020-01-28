import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'relatedArtifact.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedArtifact {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// The type of relationship to the related artifact.
String type; // <code> enum: documentation/justification/citation/predecessor/successor/derived-from/depends-on/composed-of;

// Extensions for type
Element _type;

// A short label that can be used to reference the citation from elsewhere in the
//  containing artifact, such as a footnote index.
String label;

// Extensions for label
Element _label;

// A brief description of the document or knowledge resource being referenced,
//  suitable for display to a consumer.
String display;

// Extensions for display
Element _display;

// A bibliographic citation for the related artifact. This text SHOULD be formatted
//  according to an accepted citation format.
String citation;

// Extensions for citation
Element _citation;

// A url for the artifact that can be followed to access the actual content.
String url;

// Extensions for url
Element _url;

// The document being referenced, represented as an attachment. This is exclusive
//  with the resource element.
Attachment document;

// The related resource, such as a library, value set, profile, or other knowledge
//  resource.
String resource;

RelatedArtifact(
  {this.id,
    this.extension,
    this.type,
    this._type,
    this.label,
    this._label,
    this.display,
    this._display,
    this.citation,
    this._citation,
    this.url,
    this._url,
    this.document,
    this.resource
    });

  factory RelatedArtifact.fromJson(Map<String, dynamic> json) => _$RelatedArtifactFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedArtifactToJson(this);
}

