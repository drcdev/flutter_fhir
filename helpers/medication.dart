import 'reference(Organization).dart';
import 'codeableConcept.dart';
import 'identifier.dart';
import 'package:json_annotation/json_annotation.dart';
part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {
  String resourceType;
  // from Resource: id, meta, implicitRules, and language
  // from DomainResource: text, contained, extension, and modifierExtension
  List<Identifier> identifier;
  List<CodeableConcept> codeableConcept;
  List<code> status;
  List<Reference(Organization)> reference(Organization);
