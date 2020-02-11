import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 318)
class ImplementationGuide {

  //  This is a ImplementationGuide resource
  @HiveField(0)
  final String resourceType= 'ImplementationGuide';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  An absolute URI that is used to identify this implementation guide
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this implementation guide is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the implementation guide is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  The identifier that is used to identify this version of the
  // implementation guide when it is referenced in a specification, model,
  // design or instance. This is an arbitrary value managed by the
  // implementation guide author and is not expected to be globally unique.
  // For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  // version is not available. There is also no expectation that versions
  // can be placed in a lexicographical sequence.
  @HiveField(13)
  String version;

  //  Extensions for version
  @HiveField(14)
  Element elementVersion;

  //  A natural language name identifying the implementation guide. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  A short, descriptive, user-friendly title for the implementation
  // guide.
  @HiveField(17)
  String title;

  //  Extensions for title
  @HiveField(18)
  Element elementTitle;

  //  The status of this implementation guide. Enables tracking the
  // life-cycle of the content.
  @HiveField(19)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(20)
  Element elementStatus;

  //  A Boolean value to indicate that this implementation guide is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(21)
  bool experimental;

  //  Extensions for experimental
  @HiveField(22)
  Element elementExperimental;

  //  The date  (and optionally time) when the implementation guide was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the implementation guide
  // changes.
  @HiveField(23)
  DateTime date;

  //  Extensions for date
  @HiveField(24)
  Element elementDate;

  //  The name of the organization or individual that published the
  // implementation guide.
  @HiveField(25)
  String publisher;

  //  Extensions for publisher
  @HiveField(26)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(27)
  List<ContactDetail> contact;

  //  A free text natural language description of the implementation guide
  // from a consumer's perspective.
  @HiveField(28)
  String description;

  //  Extensions for description
  @HiveField(29)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate implementation guide instances.
  @HiveField(30)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the implementation guide is
  // intended to be used.
  @HiveField(31)
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the implementation guide and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the implementation guide.
  @HiveField(32)
  String copyright;

  //  Extensions for copyright
  @HiveField(33)
  Element elementCopyright;

  //  The NPM package name for this Implementation Guide, used in the NPM
  // package distribution, which is the primary mechanism by which FHIR
  // based tooling manages IG dependencies. This value must be globally
  // unique, and should be assigned with care.
  @HiveField(34)
  String packageId;

  //  Extensions for packageId
  @HiveField(35)
  Element elementPackageId;

  //  The license that applies to this Implementation Guide, using an SPDX
  // license code, or 'not-open-source'.
  @HiveField(36)
  String license; // <code> enum: not-open-source/0BSD/AAL/Abstyles/Adobe-2006/Adobe-Glyph/ADSL/AFL-1.1/AFL-1.2/AFL-2.0/AFL-2.1/AFL-3.0/Afmparse/AGPL-1.0-only/AGPL-1.0-or-later/AGPL-3.0-only/AGPL-3.0-or-later/Aladdin/AMDPLPA/AML/AMPAS/ANTLR-PD/Apache-1.0/Apache-1.1/Apache-2.0/APAFML/APL-1.0/APSL-1.0/APSL-1.1/APSL-1.2/APSL-2.0/Artistic-1.0-cl8/Artistic-1.0-Perl/Artistic-1.0/Artistic-2.0/Bahyph/Barr/Beerware/BitTorrent-1.0/BitTorrent-1.1/Borceux/BSD-1-Clause/BSD-2-Clause-FreeBSD/BSD-2-Clause-NetBSD/BSD-2-Clause-Patent/BSD-2-Clause/BSD-3-Clause-Attribution/BSD-3-Clause-Clear/BSD-3-Clause-LBNL/BSD-3-Clause-No-Nuclear-License-2014/BSD-3-Clause-No-Nuclear-License/BSD-3-Clause-No-Nuclear-Warranty/BSD-3-Clause/BSD-4-Clause-UC/BSD-4-Clause/BSD-Protection/BSD-Source-Code/BSL-1.0/bzip2-1.0.5/bzip2-1.0.6/Caldera/CATOSL-1.1/CC-BY-1.0/CC-BY-2.0/CC-BY-2.5/CC-BY-3.0/CC-BY-4.0/CC-BY-NC-1.0/CC-BY-NC-2.0/CC-BY-NC-2.5/CC-BY-NC-3.0/CC-BY-NC-4.0/CC-BY-NC-ND-1.0/CC-BY-NC-ND-2.0/CC-BY-NC-ND-2.5/CC-BY-NC-ND-3.0/CC-BY-NC-ND-4.0/CC-BY-NC-SA-1.0/CC-BY-NC-SA-2.0/CC-BY-NC-SA-2.5/CC-BY-NC-SA-3.0/CC-BY-NC-SA-4.0/CC-BY-ND-1.0/CC-BY-ND-2.0/CC-BY-ND-2.5/CC-BY-ND-3.0/CC-BY-ND-4.0/CC-BY-SA-1.0/CC-BY-SA-2.0/CC-BY-SA-2.5/CC-BY-SA-3.0/CC-BY-SA-4.0/CC0-1.0/CDDL-1.0/CDDL-1.1/CDLA-Permissive-1.0/CDLA-Sharing-1.0/CECILL-1.0/CECILL-1.1/CECILL-2.0/CECILL-2.1/CECILL-B/CECILL-C/ClArtistic/CNRI-Jython/CNRI-Python-GPL-Compatible/CNRI-Python/Condor-1.1/CPAL-1.0/CPL-1.0/CPOL-1.02/Crossword/CrystalStacker/CUA-OPL-1.0/Cube/curl/D-FSL-1.0/diffmark/DOC/Dotseqn/DSDP/dvipdfm/ECL-1.0/ECL-2.0/EFL-1.0/EFL-2.0/eGenix/Entessa/EPL-1.0/EPL-2.0/ErlPL-1.1/EUDatagrid/EUPL-1.0/EUPL-1.1/EUPL-1.2/Eurosym/Fair/Frameworx-1.0/FreeImage/FSFAP/FSFUL/FSFULLR/FTL/GFDL-1.1-only/GFDL-1.1-or-later/GFDL-1.2-only/GFDL-1.2-or-later/GFDL-1.3-only/GFDL-1.3-or-later/Giftware/GL2PS/Glide/Glulxe/gnuplot/GPL-1.0-only/GPL-1.0-or-later/GPL-2.0-only/GPL-2.0-or-later/GPL-3.0-only/GPL-3.0-or-later/gSOAP-1.3b/HaskellReport/HPND/IBM-pibs/ICU/IJG/ImageMagick/iMatix/Imlib2/Info-ZIP/Intel-ACPI/Intel/Interbase-1.0/IPA/IPL-1.0/ISC/JasPer-2.0/JSON/LAL-1.2/LAL-1.3/Latex2e/Leptonica/LGPL-2.0-only/LGPL-2.0-or-later/LGPL-2.1-only/LGPL-2.1-or-later/LGPL-3.0-only/LGPL-3.0-or-later/LGPLLR/Libpng/libtiff/LiLiQ-P-1.1/LiLiQ-R-1.1/LiLiQ-Rplus-1.1/Linux-OpenIB/LPL-1.0/LPL-1.02/LPPL-1.0/LPPL-1.1/LPPL-1.2/LPPL-1.3a/LPPL-1.3c/MakeIndex/MirOS/MIT-0/MIT-advertising/MIT-CMU/MIT-enna/MIT-feh/MIT/MITNFA/Motosoto/mpich2/MPL-1.0/MPL-1.1/MPL-2.0-no-copyleft-exception/MPL-2.0/MS-PL/MS-RL/MTLL/Multics/Mup/NASA-1.3/Naumen/NBPL-1.0/NCSA/Net-SNMP/NetCDF/Newsletr/NGPL/NLOD-1.0/NLPL/Nokia/NOSL/Noweb/NPL-1.0/NPL-1.1/NPOSL-3.0/NRL/NTP/OCCT-PL/OCLC-2.0/ODbL-1.0/OFL-1.0/OFL-1.1/OGTSL/OLDAP-1.1/OLDAP-1.2/OLDAP-1.3/OLDAP-1.4/OLDAP-2.0.1/OLDAP-2.0/OLDAP-2.1/OLDAP-2.2.1/OLDAP-2.2.2/OLDAP-2.2/OLDAP-2.3/OLDAP-2.4/OLDAP-2.5/OLDAP-2.6/OLDAP-2.7/OLDAP-2.8/OML/OpenSSL/OPL-1.0/OSET-PL-2.1/OSL-1.0/OSL-1.1/OSL-2.0/OSL-2.1/OSL-3.0/PDDL-1.0/PHP-3.0/PHP-3.01/Plexus/PostgreSQL/psfrag/psutils/Python-2.0/Qhull/QPL-1.0/Rdisc/RHeCos-1.1/RPL-1.1/RPL-1.5/RPSL-1.0/RSA-MD/RSCPL/Ruby/SAX-PD/Saxpath/SCEA/Sendmail/SGI-B-1.0/SGI-B-1.1/SGI-B-2.0/SimPL-2.0/SISSL-1.2/SISSL/Sleepycat/SMLNJ/SMPPL/SNIA/Spencer-86/Spencer-94/Spencer-99/SPL-1.0/SugarCRM-1.1.3/SWL/TCL/TCP-wrappers/TMate/TORQUE-1.1/TOSL/Unicode-DFS-2015/Unicode-DFS-2016/Unicode-TOU/Unlicense/UPL-1.0/Vim/VOSTROM/VSL-1.0/W3C-19980720/W3C-20150513/W3C/Watcom-1.0/Wsuipa/WTFPL/X11/Xerox/XFree86-1.1/xinetd/Xnet/xpp/XSkat/YPL-1.0/YPL-1.1/Zed/Zend-2.0/Zimbra-1.3/Zimbra-1.4/zlib-acknowledgement/Zlib/ZPL-1.1/ZPL-2.0/ZPL-2.1;

  //  Extensions for license
  @HiveField(37)
  Element elementLicense;

  //  The version(s) of the FHIR specification that this ImplementationGuide
  // targets - e.g. describes how to use. The value of this element is the
  // formal version of the specification, without the revision number, e.g.
  // [publication].[major].[minor], which is 4.0.1. for this version.
  @HiveField(38)
  List<String> fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1> fhirVersion;

  //  Extensions for fhirVersion
  @HiveField(39)
  List<Element> elementFhirVersion;

  //  Another implementation guide that this implementation depends on.
  // Typically, an implementation guide uses value sets, profiles
  // etc.defined in other implementation guides.
  @HiveField(40)
  List<ImplementationGuide_DependsOn> dependsOn;

  //  A set of profiles that all resources covered by this implementation
  // guide must conform to.
  @HiveField(41)
  List<ImplementationGuide_Global> global;

  //  The information needed by an IG publisher tool to publish the whole
  // implementation guide.
  @HiveField(42)
  ImplementationGuide_Definition definition;

  //  Information about an assembled implementation guide, created by the
  // publication tooling.
  @HiveField(43)
  ImplementationGuide_Manifest manifest;

ImplementationGuide(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.elementUrl,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.elementCopyright,
    this.packageId,
    this.elementPackageId,
    this.license,
    this.elementLicense,
    this.fhirVersion,
    this.elementFhirVersion,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest
    });

  factory ImplementationGuide.fromJson(Map<String, dynamic> json) => _$ImplementationGuideFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuideToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_DependsOn {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A canonical reference to the Implementation guide for the dependency.
  String uri;

  //  The NPM package name for the Implementation Guide that this IG depends
  // on.
  String packageId;

  //  Extensions for packageId
  Element elementPackageId;

  //  The version of the IG that is depended on, when the correct version is
  // required to understand the IG correctly.
  String version;

  //  Extensions for version
  Element elementVersion;

ImplementationGuide_DependsOn(
  this.uri,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.packageId,
    this.elementPackageId,
    this.version,
    this.elementVersion
    });

  factory ImplementationGuide_DependsOn.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DependsOnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Global {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The type of resource that all instances must conform to.
  String type;

  //  Extensions for type
  Element elementType;

  //  A reference to the profile that all instances must conform to.
  String profile;

ImplementationGuide_Global(
  this.profile,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType
    });

  factory ImplementationGuide_Global.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GlobalFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GlobalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Definition {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A logical group of resources. Logical groups can be used when building
  // pages.
  List<ImplementationGuide_Grouping> grouping;

  //  A resource that is part of the implementation guide. Conformance
  // resources (value set, structure definition, capability statements etc.)
  // are obvious candidates for inclusion, but any kind of resource can be
  // included as an example resource.
  List<ImplementationGuide_Resource> resource;

  //  A page / section in the implementation guide. The root page is the
  // implementation guide home page.
  ImplementationGuide_Page page;

  //  Defines how IG is built by tools.
  List<ImplementationGuide_Parameter> parameter;

  //  A template for building resources.
  List<ImplementationGuide_Template> template;

ImplementationGuide_Definition(
  this.resource,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.grouping,
    this.page,
    this.parameter,
    this.template
    });

  factory ImplementationGuide_Definition.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Grouping {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The human-readable title to display for the package of resources when
  // rendering the implementation guide.
  String name;

  //  Extensions for name
  Element elementName;

  //  Human readable text describing the package.
  String description;

  //  Extensions for description
  Element elementDescription;

ImplementationGuide_Grouping(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription
    });

  factory ImplementationGuide_Grouping.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GroupingFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GroupingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Where this resource is found.
  Reference reference;

  //  Indicates the FHIR Version(s) this artifact is intended to apply to.
  // If no versions are specified, the resource is assumed to apply to all
  // the versions stated in ImplementationGuide.fhirVersion.
  List<String> fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1> fhirVersion;

  //  Extensions for fhirVersion
  List<Element> elementFhirVersion;

  //  A human assigned name for the resource. All resources SHOULD have a
  // name, but the name may be extracted from the resource (e.g.
  // ValueSet.name).
  String name;

  //  Extensions for name
  Element elementName;

  //  A description of the reason that a resource has been included in the
  // implementation guide.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  If true or a reference, indicates the resource is an example instance.
  //  If a reference is present, indicates that the example is an example of
  // the specified profile.
  bool exampleBoolean; //  pattern: ^true|false$

  //  Extensions for exampleBoolean
  Element elementExampleBoolean;

  //  If true or a reference, indicates the resource is an example instance.
  //  If a reference is present, indicates that the example is an example of
  // the specified profile.
  String exampleCanonical; //  pattern: ^\S*$

  //  Extensions for exampleCanonical
  Element elementExampleCanonical;

  //  Reference to the id of the grouping this resource appears in.
  String groupingId;

  //  Extensions for groupingId
  Element elementGroupingId;

ImplementationGuide_Resource(
  this.reference,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.fhirVersion,
    this.elementFhirVersion,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.exampleBoolean,
    this.elementExampleBoolean,
    this.exampleCanonical,
    this.elementExampleCanonical,
    this.groupingId,
    this.elementGroupingId
    });

  factory ImplementationGuide_Resource.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The source address for the page.
  String nameUrl; //  pattern: ^\S*$

  //  Extensions for nameUrl
  Element elementNameUrl;

  //  The source address for the page.
  Reference nameReference;

  //  A short title used to represent this page in navigational structures
  // such as table of contents, bread crumbs, etc.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  A code that indicates how the page is generated.
  String generation; // <code> enum: html/markdown/xml/generated;

  //  Extensions for generation
  Element elementGeneration;

  //  Nested Pages/Sections under this page.
  List<ImplementationGuide_Page> page;

ImplementationGuide_Page(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.nameUrl,
    this.elementNameUrl,
    this.nameReference,
    this.title,
    this.elementTitle,
    this.generation,
    this.elementGeneration,
    this.page
    });

  factory ImplementationGuide_Page.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_PageFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Parameter {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  apply | path-resource | path-pages | path-tx-cache |
  // expansion-parameter | rule-broken-links | generate-xml | generate-json
  // | generate-turtle | html-template.
  String code; // <code> enum: apply/path-resource/path-pages/path-tx-cache/expansion-parameter/rule-broken-links/generate-xml/generate-json/generate-turtle/html-template;

  //  Extensions for code
  Element elementCode;

  //  Value for named type.
  String value;

  //  Extensions for value
  Element elementValue;

ImplementationGuide_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.value,
    this.elementValue
    });

  factory ImplementationGuide_Parameter.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Template {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Type of template specified.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The source location for the template.
  String source;

  //  Extensions for source
  Element elementSource;

  //  The scope in which the template applies.
  String scope;

  //  Extensions for scope
  Element elementScope;

ImplementationGuide_Template(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.source,
    this.elementSource,
    this.scope,
    this.elementScope
    });

  factory ImplementationGuide_Template.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_TemplateFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_TemplateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Manifest {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A pointer to official web page, PDF or other rendering of the
  // implementation guide.
  String rendering;

  //  Extensions for rendering
  Element elementRendering;

  //  A resource that is part of the implementation guide. Conformance
  // resources (value set, structure definition, capability statements etc.)
  // are obvious candidates for inclusion, but any kind of resource can be
  // included as an example resource.
  List<ImplementationGuide_Resource1> resource;

  //  Information about a page within the IG.
  List<ImplementationGuide_Page1> page;

  //  Indicates a relative path to an image that exists within the IG.
  List<String> image;

  //  Extensions for image
  List<Element> elementImage;

  //  Indicates the relative path of an additional non-page, non-image file
  // that is part of the IG - e.g. zip, jar and similar files that could be
  // the target of a hyperlink in a derived IG.
  List<String> other;

  //  Extensions for other
  List<Element> elementOther;

ImplementationGuide_Manifest(
  this.resource,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.rendering,
    this.elementRendering,
    this.page,
    this.image,
    this.elementImage,
    this.other,
    this.elementOther
    });

  factory ImplementationGuide_Manifest.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ManifestFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ManifestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource1 {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Where this resource is found.
  Reference reference;

  //  If true or a reference, indicates the resource is an example instance.
  //  If a reference is present, indicates that the example is an example of
  // the specified profile.
  bool exampleBoolean; //  pattern: ^true|false$

  //  Extensions for exampleBoolean
  Element elementExampleBoolean;

  //  If true or a reference, indicates the resource is an example instance.
  //  If a reference is present, indicates that the example is an example of
  // the specified profile.
  String exampleCanonical; //  pattern: ^\S*$

  //  Extensions for exampleCanonical
  Element elementExampleCanonical;

  //  The relative path for primary page for this resource within the IG.
  String relativePath;

  //  Extensions for relativePath
  Element elementRelativePath;

ImplementationGuide_Resource1(
  this.reference,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.exampleBoolean,
    this.elementExampleBoolean,
    this.exampleCanonical,
    this.elementExampleCanonical,
    this.relativePath,
    this.elementRelativePath
    });

  factory ImplementationGuide_Resource1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Resource1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Resource1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page1 {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Relative path to the page.
  String name;

  //  Extensions for name
  Element elementName;

  //  Label for the page intended for human display.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The name of an anchor available on the page.
  List<String> anchor;

  //  Extensions for anchor
  List<Element> elementAnchor;

ImplementationGuide_Page1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.anchor,
    this.elementAnchor
    });

  factory ImplementationGuide_Page1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Page1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Page1ToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImplementationGuideAdapter extends TypeAdapter<ImplementationGuide> {
  @override
  final typeId = 318;

  @override
  ImplementationGuide read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      version: fields[13] as String,
      elementVersion: fields[14] as Element,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      title: fields[17] as String,
      elementTitle: fields[18] as Element,
      status: fields[19] as String,
      elementStatus: fields[20] as Element,
      experimental: fields[21] as bool,
      elementExperimental: fields[22] as Element,
      date: fields[23] as DateTime,
      elementDate: fields[24] as Element,
      publisher: fields[25] as String,
      elementPublisher: fields[26] as Element,
      contact: (fields[27] as List)?.cast<ContactDetail>(),
      description: fields[28] as String,
      elementDescription: fields[29] as Element,
      useContext: (fields[30] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[31] as List)?.cast<CodeableConcept>(),
      copyright: fields[32] as String,
      elementCopyright: fields[33] as Element,
      packageId: fields[34] as String,
      elementPackageId: fields[35] as Element,
      license: fields[36] as String,
      elementLicense: fields[37] as Element,
      fhirVersion: (fields[38] as List)?.cast<String>(),
      elementFhirVersion: (fields[39] as List)?.cast<Element>(),
      dependsOn: (fields[40] as List)?.cast<ImplementationGuide_DependsOn>(),
      global: (fields[41] as List)?.cast<ImplementationGuide_Global>(),
      definition: fields[42] as ImplementationGuide_Definition,
      manifest: fields[43] as ImplementationGuide_Manifest,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide obj) {
    writer
      ..writeByte(44)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.version)
      ..writeByte(14)
      ..write(obj.elementVersion)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.title)
      ..writeByte(18)
      ..write(obj.elementTitle)
      ..writeByte(19)
      ..write(obj.status)
      ..writeByte(20)
      ..write(obj.elementStatus)
      ..writeByte(21)
      ..write(obj.experimental)
      ..writeByte(22)
      ..write(obj.elementExperimental)
      ..writeByte(23)
      ..write(obj.date)
      ..writeByte(24)
      ..write(obj.elementDate)
      ..writeByte(25)
      ..write(obj.publisher)
      ..writeByte(26)
      ..write(obj.elementPublisher)
      ..writeByte(27)
      ..write(obj.contact)
      ..writeByte(28)
      ..write(obj.description)
      ..writeByte(29)
      ..write(obj.elementDescription)
      ..writeByte(30)
      ..write(obj.useContext)
      ..writeByte(31)
      ..write(obj.jurisdiction)
      ..writeByte(32)
      ..write(obj.copyright)
      ..writeByte(33)
      ..write(obj.elementCopyright)
      ..writeByte(34)
      ..write(obj.packageId)
      ..writeByte(35)
      ..write(obj.elementPackageId)
      ..writeByte(36)
      ..write(obj.license)
      ..writeByte(37)
      ..write(obj.elementLicense)
      ..writeByte(38)
      ..write(obj.fhirVersion)
      ..writeByte(39)
      ..write(obj.elementFhirVersion)
      ..writeByte(40)
      ..write(obj.dependsOn)
      ..writeByte(41)
      ..write(obj.global)
      ..writeByte(42)
      ..write(obj.definition)
      ..writeByte(43)
      ..write(obj.manifest);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImplementationGuide _$ImplementationGuideFromJson(Map<String, dynamic> json) {
  return ImplementationGuide(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    packageId: json['packageId'] as String,
    elementPackageId: json['elementPackageId'] == null
        ? null
        : Element.fromJson(json['elementPackageId'] as Map<String, dynamic>),
    license: json['license'] as String,
    elementLicense: json['elementLicense'] == null
        ? null
        : Element.fromJson(json['elementLicense'] as Map<String, dynamic>),
    fhirVersion:
        (json['fhirVersion'] as List)?.map((e) => e as String)?.toList(),
    elementFhirVersion: (json['elementFhirVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dependsOn: (json['dependsOn'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    global: (json['global'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Global.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definition: json['definition'] == null
        ? null
        : ImplementationGuide_Definition.fromJson(
            json['definition'] as Map<String, dynamic>),
    manifest: json['manifest'] == null
        ? null
        : ImplementationGuide_Manifest.fromJson(
            json['manifest'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuideToJson(
        ImplementationGuide instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'packageId': instance.packageId,
      'elementPackageId': instance.elementPackageId?.toJson(),
      'license': instance.license,
      'elementLicense': instance.elementLicense?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'elementFhirVersion':
          instance.elementFhirVersion?.map((e) => e?.toJson())?.toList(),
      'dependsOn': instance.dependsOn?.map((e) => e?.toJson())?.toList(),
      'global': instance.global?.map((e) => e?.toJson())?.toList(),
      'definition': instance.definition?.toJson(),
      'manifest': instance.manifest?.toJson(),
    };

ImplementationGuide_DependsOn _$ImplementationGuide_DependsOnFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_DependsOn(
    json['uri'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    packageId: json['packageId'] as String,
    elementPackageId: json['elementPackageId'] == null
        ? null
        : Element.fromJson(json['elementPackageId'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_DependsOnToJson(
        ImplementationGuide_DependsOn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uri': instance.uri,
      'packageId': instance.packageId,
      'elementPackageId': instance.elementPackageId?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
    };

ImplementationGuide_Global _$ImplementationGuide_GlobalFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Global(
    json['profile'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_GlobalToJson(
        ImplementationGuide_Global instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'profile': instance.profile,
    };

ImplementationGuide_Definition _$ImplementationGuide_DefinitionFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Definition(
    (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    grouping: (json['grouping'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Grouping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] == null
        ? null
        : ImplementationGuide_Page.fromJson(
            json['page'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: (json['template'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Template.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_DefinitionToJson(
        ImplementationGuide_Definition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'grouping': instance.grouping?.map((e) => e?.toJson())?.toList(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
      'page': instance.page?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'template': instance.template?.map((e) => e?.toJson())?.toList(),
    };

ImplementationGuide_Grouping _$ImplementationGuide_GroupingFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Grouping(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_GroupingToJson(
        ImplementationGuide_Grouping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };

ImplementationGuide_Resource _$ImplementationGuide_ResourceFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Resource(
    json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fhirVersion:
        (json['fhirVersion'] as List)?.map((e) => e as String)?.toList(),
    elementFhirVersion: (json['elementFhirVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    exampleBoolean: json['exampleBoolean'] as bool,
    elementExampleBoolean: json['elementExampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementExampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    elementExampleCanonical: json['elementExampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementExampleCanonical'] as Map<String, dynamic>),
    groupingId: json['groupingId'] as String,
    elementGroupingId: json['elementGroupingId'] == null
        ? null
        : Element.fromJson(json['elementGroupingId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_ResourceToJson(
        ImplementationGuide_Resource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'elementFhirVersion':
          instance.elementFhirVersion?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'exampleBoolean': instance.exampleBoolean,
      'elementExampleBoolean': instance.elementExampleBoolean?.toJson(),
      'exampleCanonical': instance.exampleCanonical,
      'elementExampleCanonical': instance.elementExampleCanonical?.toJson(),
      'groupingId': instance.groupingId,
      'elementGroupingId': instance.elementGroupingId?.toJson(),
    };

ImplementationGuide_Page _$ImplementationGuide_PageFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Page(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nameUrl: json['nameUrl'] as String,
    elementNameUrl: json['elementNameUrl'] == null
        ? null
        : Element.fromJson(json['elementNameUrl'] as Map<String, dynamic>),
    nameReference: json['nameReference'] == null
        ? null
        : Reference.fromJson(json['nameReference'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    generation: json['generation'] as String,
    elementGeneration: json['elementGeneration'] == null
        ? null
        : Element.fromJson(json['elementGeneration'] as Map<String, dynamic>),
    page: (json['page'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Page.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_PageToJson(
        ImplementationGuide_Page instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'nameUrl': instance.nameUrl,
      'elementNameUrl': instance.elementNameUrl?.toJson(),
      'nameReference': instance.nameReference?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'generation': instance.generation,
      'elementGeneration': instance.elementGeneration?.toJson(),
      'page': instance.page?.map((e) => e?.toJson())?.toList(),
    };

ImplementationGuide_Parameter _$ImplementationGuide_ParameterFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_ParameterToJson(
        ImplementationGuide_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

ImplementationGuide_Template _$ImplementationGuide_TemplateFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Template(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    scope: json['scope'] as String,
    elementScope: json['elementScope'] == null
        ? null
        : Element.fromJson(json['elementScope'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_TemplateToJson(
        ImplementationGuide_Template instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'scope': instance.scope,
      'elementScope': instance.elementScope?.toJson(),
    };

ImplementationGuide_Manifest _$ImplementationGuide_ManifestFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Manifest(
    (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rendering: json['rendering'] as String,
    elementRendering: json['elementRendering'] == null
        ? null
        : Element.fromJson(json['elementRendering'] as Map<String, dynamic>),
    page: (json['page'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Page1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    image: (json['image'] as List)?.map((e) => e as String)?.toList(),
    elementImage: (json['elementImage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    other: (json['other'] as List)?.map((e) => e as String)?.toList(),
    elementOther: (json['elementOther'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_ManifestToJson(
        ImplementationGuide_Manifest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'rendering': instance.rendering,
      'elementRendering': instance.elementRendering?.toJson(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
      'page': instance.page?.map((e) => e?.toJson())?.toList(),
      'image': instance.image,
      'elementImage': instance.elementImage?.map((e) => e?.toJson())?.toList(),
      'other': instance.other,
      'elementOther': instance.elementOther?.map((e) => e?.toJson())?.toList(),
    };

ImplementationGuide_Resource1 _$ImplementationGuide_Resource1FromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Resource1(
    json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exampleBoolean: json['exampleBoolean'] as bool,
    elementExampleBoolean: json['elementExampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementExampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    elementExampleCanonical: json['elementExampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementExampleCanonical'] as Map<String, dynamic>),
    relativePath: json['relativePath'] as String,
    elementRelativePath: json['elementRelativePath'] == null
        ? null
        : Element.fromJson(json['elementRelativePath'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_Resource1ToJson(
        ImplementationGuide_Resource1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'exampleBoolean': instance.exampleBoolean,
      'elementExampleBoolean': instance.elementExampleBoolean?.toJson(),
      'exampleCanonical': instance.exampleCanonical,
      'elementExampleCanonical': instance.elementExampleCanonical?.toJson(),
      'relativePath': instance.relativePath,
      'elementRelativePath': instance.elementRelativePath?.toJson(),
    };

ImplementationGuide_Page1 _$ImplementationGuide_Page1FromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Page1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    anchor: (json['anchor'] as List)?.map((e) => e as String)?.toList(),
    elementAnchor: (json['elementAnchor'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_Page1ToJson(
        ImplementationGuide_Page1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'anchor': instance.anchor,
      'elementAnchor':
          instance.elementAnchor?.map((e) => e?.toJson())?.toList(),
    };
