

part 'adverseEvent_SuspectEntity.g.dart';

@JsonSerializable(explicitToJson: true)
class AdverseEvent_SuspectEntity {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference instance;
  List<AdverseEvent_Causality> causality;


AdverseEvent_SuspectEntity(
      {this.id,
this.extension,
this.modifierExtension,
this.instance,
this.causality});

  factory AdverseEvent_SuspectEntity.fromJson(Map<String, dynamic> json) => _$AdverseEvent_SuspectEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_SuspectEntityToJson(this);
}