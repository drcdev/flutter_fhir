import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'implementationGuide.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide {


// This is a ImplementationGuide resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// An absolute URI that is used to identify this implementation guide when it is
//  referenced in a specification, model, design or an instance; also called its
//  canonical identifier. This SHOULD be globally unique and SHOULD be a literal
//  address at which at which an authoritative instance of this implementation
//  guide is (or will be) published. This URL can be the target of a canonical
//  reference. It SHALL remain the same when the implementation guide is stored on different servers.
String url;

// Extensions for url
Element _url;

// The identifier that is used to identify this version of the implementation guide
//  when it is referenced in a specification, model, design or instance. This is an
//  arbitrary value managed by the implementation guide author and is not expected
//  to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if
//  a managed version is not available. There is also no expectation that versions
//  can be placed in a lexicographical sequence.
String version;

// Extensions for version
Element _version;

// A natural language name identifying the implementation guide. This name should
//  be usable as an identifier for the module by machine processing applications
//  such as code generation.
String name;

// Extensions for name
Element _name;

// A short, descriptive, user-friendly title for the implementation guide.
String title;

// Extensions for title
Element _title;

// The status of this implementation guide. Enables tracking the life-cycle of the
//  content.
String status; // <code> enum: draft/active/retired/unknown;

// Extensions for status
Element _status;

// A Boolean value to indicate that this implementation guide is authored for
//  testing purposes (or education/evaluation/marketing) and is not intended to be
//  used for genuine usage.
bool experimental;

// Extensions for experimental
Element _experimental;

// The date  (and optionally time) when the implementation guide was published. The
//  date must change when the business version changes and it must change if the
//  status code changes. In addition, it should change when the substantive content
//  of the implementation guide changes.
DateTime date;

// Extensions for date
Element _date;

// The name of the organization or individual that published the implementation
//  guide.
String publisher;

// Extensions for publisher
Element _publisher;

// Contact details to assist a user in finding and communicating with the
//  publisher.
List<ContactDetail> contact;

// A free text natural language description of the implementation guide from a
//  consumer's perspective.
String description;

// Extensions for description
Element _description;

// The content was developed with a focus and intent of supporting the contexts
//  that are listed. These contexts may be general categories (gender, age, ...) or
//  may be references to specific programs (insurance plans, studies, ...) and may
//  be used to assist with indexing and searching for appropriate implementation
//  guide instances.
List<UsageContext> useContext;

// A legal or geographic region in which the implementation guide is intended to be
//  used.
List<CodeableConcept> jurisdiction;

// A copyright statement relating to the implementation guide and/or its contents.
//  Copyright statements are generally legal restrictions on the use and publishing
//  of the implementation guide.
String copyright;

// Extensions for copyright
Element _copyright;

// The NPM package name for this Implementation Guide, used in the NPM package
//  distribution, which is the primary mechanism by which FHIR based tooling
//  manages IG dependencies. This value must be globally unique, and should be
//  assigned with care.
String packageId;

// Extensions for packageId
Element _packageId;

// The license that applies to this Implementation Guide, using an SPDX license
//  code, or 'not-open-source'.
String license; // <code> enum: not-open-source/0BSD/AAL/Abstyles/Adobe-2006/Adobe-Glyph/ADSL/AFL-1.1/AFL-1.2/AFL-2.0/AFL-2.1/AFL-3.0/Afmparse/AGPL-1.0-only/AGPL-1.0-or-later/AGPL-3.0-only/AGPL-3.0-or-later/Aladdin/AMDPLPA/AML/AMPAS/ANTLR-PD/Apache-1.0/Apache-1.1/Apache-2.0/APAFML/APL-1.0/APSL-1.0/APSL-1.1/APSL-1.2/APSL-2.0/Artistic-1.0-cl8/Artistic-1.0-Perl/Artistic-1.0/Artistic-2.0/Bahyph/Barr/Beerware/BitTorrent-1.0/BitTorrent-1.1/Borceux/BSD-1-Clause/BSD-2-Clause-FreeBSD/BSD-2-Clause-NetBSD/BSD-2-Clause-Patent/BSD-2-Clause/BSD-3-Clause-Attribution/BSD-3-Clause-Clear/BSD-3-Clause-LBNL/BSD-3-Clause-No-Nuclear-License-2014/BSD-3-Clause-No-Nuclear-License/BSD-3-Clause-No-Nuclear-Warranty/BSD-3-Clause/BSD-4-Clause-UC/BSD-4-Clause/BSD-Protection/BSD-Source-Code/BSL-1.0/bzip2-1.0.5/bzip2-1.0.6/Caldera/CATOSL-1.1/CC-BY-1.0/CC-BY-2.0/CC-BY-2.5/CC-BY-3.0/CC-BY-4.0/CC-BY-NC-1.0/CC-BY-NC-2.0/CC-BY-NC-2.5/CC-BY-NC-3.0/CC-BY-NC-4.0/CC-BY-NC-ND-1.0/CC-BY-NC-ND-2.0/CC-BY-NC-ND-2.5/CC-BY-NC-ND-3.0/CC-BY-NC-ND-4.0/CC-BY-NC-SA-1.0/CC-BY-NC-SA-2.0/CC-BY-NC-SA-2.5/CC-BY-NC-SA-3.0/CC-BY-NC-SA-4.0/CC-BY-ND-1.0/CC-BY-ND-2.0/CC-BY-ND-2.5/CC-BY-ND-3.0/CC-BY-ND-4.0/CC-BY-SA-1.0/CC-BY-SA-2.0/CC-BY-SA-2.5/CC-BY-SA-3.0/CC-BY-SA-4.0/CC0-1.0/CDDL-1.0/CDDL-1.1/CDLA-Permissive-1.0/CDLA-Sharing-1.0/CECILL-1.0/CECILL-1.1/CECILL-2.0/CECILL-2.1/CECILL-B/CECILL-C/ClArtistic/CNRI-Jython/CNRI-Python-GPL-Compatible/CNRI-Python/Condor-1.1/CPAL-1.0/CPL-1.0/CPOL-1.02/Crossword/CrystalStacker/CUA-OPL-1.0/Cube/curl/D-FSL-1.0/diffmark/DOC/Dotseqn/DSDP/dvipdfm/ECL-1.0/ECL-2.0/EFL-1.0/EFL-2.0/eGenix/Entessa/EPL-1.0/EPL-2.0/ErlPL-1.1/EUDatagrid/EUPL-1.0/EUPL-1.1/EUPL-1.2/Eurosym/Fair/Frameworx-1.0/FreeImage/FSFAP/FSFUL/FSFULLR/FTL/GFDL-1.1-only/GFDL-1.1-or-later/GFDL-1.2-only/GFDL-1.2-or-later/GFDL-1.3-only/GFDL-1.3-or-later/Giftware/GL2PS/Glide/Glulxe/gnuplot/GPL-1.0-only/GPL-1.0-or-later/GPL-2.0-only/GPL-2.0-or-later/GPL-3.0-only/GPL-3.0-or-later/gSOAP-1.3b/HaskellReport/HPND/IBM-pibs/ICU/IJG/ImageMagick/iMatix/Imlib2/Info-ZIP/Intel-ACPI/Intel/Interbase-1.0/IPA/IPL-1.0/ISC/JasPer-2.0/JSON/LAL-1.2/LAL-1.3/Latex2e/Leptonica/LGPL-2.0-only/LGPL-2.0-or-later/LGPL-2.1-only/LGPL-2.1-or-later/LGPL-3.0-only/LGPL-3.0-or-later/LGPLLR/Libpng/libtiff/LiLiQ-P-1.1/LiLiQ-R-1.1/LiLiQ-Rplus-1.1/Linux-OpenIB/LPL-1.0/LPL-1.02/LPPL-1.0/LPPL-1.1/LPPL-1.2/LPPL-1.3a/LPPL-1.3c/MakeIndex/MirOS/MIT-0/MIT-advertising/MIT-CMU/MIT-enna/MIT-feh/MIT/MITNFA/Motosoto/mpich2/MPL-1.0/MPL-1.1/MPL-2.0-no-copyleft-exception/MPL-2.0/MS-PL/MS-RL/MTLL/Multics/Mup/NASA-1.3/Naumen/NBPL-1.0/NCSA/Net-SNMP/NetCDF/Newsletr/NGPL/NLOD-1.0/NLPL/Nokia/NOSL/Noweb/NPL-1.0/NPL-1.1/NPOSL-3.0/NRL/NTP/OCCT-PL/OCLC-2.0/ODbL-1.0/OFL-1.0/OFL-1.1/OGTSL/OLDAP-1.1/OLDAP-1.2/OLDAP-1.3/OLDAP-1.4/OLDAP-2.0.1/OLDAP-2.0/OLDAP-2.1/OLDAP-2.2.1/OLDAP-2.2.2/OLDAP-2.2/OLDAP-2.3/OLDAP-2.4/OLDAP-2.5/OLDAP-2.6/OLDAP-2.7/OLDAP-2.8/OML/OpenSSL/OPL-1.0/OSET-PL-2.1/OSL-1.0/OSL-1.1/OSL-2.0/OSL-2.1/OSL-3.0/PDDL-1.0/PHP-3.0/PHP-3.01/Plexus/PostgreSQL/psfrag/psutils/Python-2.0/Qhull/QPL-1.0/Rdisc/RHeCos-1.1/RPL-1.1/RPL-1.5/RPSL-1.0/RSA-MD/RSCPL/Ruby/SAX-PD/Saxpath/SCEA/Sendmail/SGI-B-1.0/SGI-B-1.1/SGI-B-2.0/SimPL-2.0/SISSL-1.2/SISSL/Sleepycat/SMLNJ/SMPPL/SNIA/Spencer-86/Spencer-94/Spencer-99/SPL-1.0/SugarCRM-1.1.3/SWL/TCL/TCP-wrappers/TMate/TORQUE-1.1/TOSL/Unicode-DFS-2015/Unicode-DFS-2016/Unicode-TOU/Unlicense/UPL-1.0/Vim/VOSTROM/VSL-1.0/W3C-19980720/W3C-20150513/W3C/Watcom-1.0/Wsuipa/WTFPL/X11/Xerox/XFree86-1.1/xinetd/Xnet/xpp/XSkat/YPL-1.0/YPL-1.1/Zed/Zend-2.0/Zimbra-1.3/Zimbra-1.4/zlib-acknowledgement/Zlib/ZPL-1.1/ZPL-2.0/ZPL-2.1;

// Extensions for license
Element _license;

// The version(s) of the FHIR specification that this ImplementationGuide targets -
//  e.g. describes how to use. The value of this element is the formal version of
//  the specification, without the revision number, e.g.
//  [publication].[major].[minor], which is 4.0.1. for this version.

// Extensions for fhirVersion
List<Element> _fhirVersion;

// Another implementation guide that this implementation depends on. Typically, an
//  implementation guide uses value sets, profiles etc.defined in other
//  implementation guides.
List<ImplementationGuide_DependsOn> dependsOn;

// A set of profiles that all resources covered by this implementation guide must
//  conform to.
List<ImplementationGuide_Global> global;

// The information needed by an IG publisher tool to publish the whole
//  implementation guide.
ImplementationGuide_Definition definition;

// Information about an assembled implementation guide, created by the publication
//  tooling.
ImplementationGuide_Manifest manifest;

ImplementationGuide(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this._implicitRules,
    this.language,
    this._language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this._url,
    this.version,
    this._version,
    this.name,
    this._name,
    this.title,
    this._title,
    this.status,
    this._status,
    this.experimental,
    this._experimental,
    this.date,
    this._date,
    this.publisher,
    this._publisher,
    this.contact,
    this.description,
    this._description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this._copyright,
    this.packageId,
    this._packageId,
    this.license,
    this._license,
    this.fhirVersion,
    this._fhirVersion,
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


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// A canonical reference to the Implementation guide for the dependency.
String uri;

// The NPM package name for the Implementation Guide that this IG depends on.
String packageId;

// Extensions for packageId
Element _packageId;

// The version of the IG that is depended on, when the correct version is required
//  to understand the IG correctly.
String version;

// Extensions for version
Element _version;

ImplementationGuide_DependsOn(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.uri,
    this.packageId,
    this._packageId,
    this.version,
    this._version
    });

  factory ImplementationGuide_DependsOn.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DependsOnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Global {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The type of resource that all instances must conform to.
String type;

// Extensions for type
Element _type;

// A reference to the profile that all instances must conform to.
String profile;

ImplementationGuide_Global(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this._type,
    this.profile
    });

  factory ImplementationGuide_Global.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GlobalFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GlobalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Definition {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// A logical group of resources. Logical groups can be used when building pages.
List<ImplementationGuide_Grouping> grouping;

// A resource that is part of the implementation guide. Conformance resources
//  (value set, structure definition, capability statements etc.) are obvious
//  candidates for inclusion, but any kind of resource can be included as an example resource.
List<ImplementationGuide_Resource> resource;

// A page / section in the implementation guide. The root page is the
//  implementation guide home page.
ImplementationGuide_Page page;

// Defines how IG is built by tools.
List<ImplementationGuide_Parameter> parameter;

// A template for building resources.
List<ImplementationGuide_Template> template;

ImplementationGuide_Definition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.grouping,
    this.resource,
    this.page,
    this.parameter,
    this.template
    });

  factory ImplementationGuide_Definition.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Grouping {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The human-readable title to display for the package of resources when rendering
//  the implementation guide.
String name;

// Extensions for name
Element _name;

// Human readable text describing the package.
String description;

// Extensions for description
Element _description;

ImplementationGuide_Grouping(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this._name,
    this.description,
    this._description
    });

  factory ImplementationGuide_Grouping.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GroupingFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GroupingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Where this resource is found.
Reference reference;

// Indicates the FHIR Version(s) this artifact is intended to apply to. If no
//  versions are specified, the resource is assumed to apply to all the versions
//  stated in ImplementationGuide.fhirVersion.

// Extensions for fhirVersion
List<Element> _fhirVersion;

// A human assigned name for the resource. All resources SHOULD have a name, but
//  the name may be extracted from the resource (e.g. ValueSet.name).
String name;

// Extensions for name
Element _name;

// A description of the reason that a resource has been included in the
//  implementation guide.
String description;

// Extensions for description
Element _description;

// If true or a reference, indicates the resource is an example instance.  If a
//  reference is present, indicates that the example is an example of the specified
//  profile.
bool exampleBoolean; //  pattern: ^true|false$

// Extensions for exampleBoolean
Element _exampleBoolean;

// If true or a reference, indicates the resource is an example instance.  If a
//  reference is present, indicates that the example is an example of the specified
//  profile.
String exampleCanonical; //  pattern: ^\S*$

// Extensions for exampleCanonical
Element _exampleCanonical;

// Reference to the id of the grouping this resource appears in.
String groupingId;

// Extensions for groupingId
Element _groupingId;

ImplementationGuide_Resource(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.fhirVersion,
    this._fhirVersion,
    this.name,
    this._name,
    this.description,
    this._description,
    this.exampleBoolean,
    this._exampleBoolean,
    this.exampleCanonical,
    this._exampleCanonical,
    this.groupingId,
    this._groupingId
    });

  factory ImplementationGuide_Resource.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The source address for the page.
String nameUrl; //  pattern: ^\S*$

// Extensions for nameUrl
Element _nameUrl;

// The source address for the page.
Reference nameReference;

// A short title used to represent this page in navigational structures such as
//  table of contents, bread crumbs, etc.
String title;

// Extensions for title
Element _title;

// A code that indicates how the page is generated.
String generation; // <code> enum: html/markdown/xml/generated;

// Extensions for generation
Element _generation;

// Nested Pages/Sections under this page.
List<ImplementationGuide_Page> page;

ImplementationGuide_Page(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.nameUrl,
    this._nameUrl,
    this.nameReference,
    this.title,
    this._title,
    this.generation,
    this._generation,
    this.page
    });

  factory ImplementationGuide_Page.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_PageFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Parameter {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// apply | path-resource | path-pages | path-tx-cache | expansion-parameter |
//  rule-broken-links | generate-xml | generate-json | generate-turtle | html-template.
String code; // <code> enum: apply/path-resource/path-pages/path-tx-cache/expansion-parameter/rule-broken-links/generate-xml/generate-json/generate-turtle/html-template;

// Extensions for code
Element _code;

// Value for named type.
String value;

// Extensions for value
Element _value;

ImplementationGuide_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this._code,
    this.value,
    this._value
    });

  factory ImplementationGuide_Parameter.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Template {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Type of template specified.
String code;

// Extensions for code
Element _code;

// The source location for the template.
String source;

// Extensions for source
Element _source;

// The scope in which the template applies.
String scope;

// Extensions for scope
Element _scope;

ImplementationGuide_Template(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this._code,
    this.source,
    this._source,
    this.scope,
    this._scope
    });

  factory ImplementationGuide_Template.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_TemplateFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_TemplateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Manifest {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// A pointer to official web page, PDF or other rendering of the implementation
//  guide.
String rendering;

// Extensions for rendering
Element _rendering;

// A resource that is part of the implementation guide. Conformance resources
//  (value set, structure definition, capability statements etc.) are obvious
//  candidates for inclusion, but any kind of resource can be included as an example resource.
List<ImplementationGuide_Resource1> resource;

// Information about a page within the IG.
List<ImplementationGuide_Page1> page;

// Indicates a relative path to an image that exists within the IG.
List<String> image;

// Extensions for image
List<Element> _image;

// Indicates the relative path of an additional non-page, non-image file that is
//  part of the IG - e.g. zip, jar and similar files that could be the target of a
//  hyperlink in a derived IG.
List<String> other;

// Extensions for other
List<Element> _other;

ImplementationGuide_Manifest(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.rendering,
    this._rendering,
    this.resource,
    this.page,
    this.image,
    this._image,
    this.other,
    this._other
    });

  factory ImplementationGuide_Manifest.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ManifestFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ManifestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource1 {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Where this resource is found.
Reference reference;

// If true or a reference, indicates the resource is an example instance.  If a
//  reference is present, indicates that the example is an example of the specified
//  profile.
bool exampleBoolean; //  pattern: ^true|false$

// Extensions for exampleBoolean
Element _exampleBoolean;

// If true or a reference, indicates the resource is an example instance.  If a
//  reference is present, indicates that the example is an example of the specified
//  profile.
String exampleCanonical; //  pattern: ^\S*$

// Extensions for exampleCanonical
Element _exampleCanonical;

// The relative path for primary page for this resource within the IG.
String relativePath;

// Extensions for relativePath
Element _relativePath;

ImplementationGuide_Resource1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.exampleBoolean,
    this._exampleBoolean,
    this.exampleCanonical,
    this._exampleCanonical,
    this.relativePath,
    this._relativePath
    });

  factory ImplementationGuide_Resource1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Resource1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Resource1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page1 {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Relative path to the page.
String name;

// Extensions for name
Element _name;

// Label for the page intended for human display.
String title;

// Extensions for title
Element _title;

// The name of an anchor available on the page.
List<String> anchor;

// Extensions for anchor
List<Element> _anchor;

ImplementationGuide_Page1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this._name,
    this.title,
    this._title,
    this.anchor,
    this._anchor
    });

  factory ImplementationGuide_Page1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Page1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Page1ToJson(this);
}

