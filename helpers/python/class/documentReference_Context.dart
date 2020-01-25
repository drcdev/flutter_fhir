

part 'documentReference_Context.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference_Context {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> encounter;
  List<CodeableConcept> event;
  Period period;
  CodeableConcept facilityType;
  CodeableConcept practiceSetting;
  Reference sourcePatientInfo;
  List<Reference> related;


DocumentReference_Context(
      {this.id,
this.extension,
this.modifierExtension,
this.encounter,
this.event,
this.period,
this.facilityType,
this.practiceSetting,
this.sourcePatientInfo,
this.related});

  factory DocumentReference_Context.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContextToJson(this);
}