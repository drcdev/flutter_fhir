import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide {

	static Future<ImplementationGuide> newInstance({
		String  resourceType,
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String url,
		Element elementUrl,
		String version,
		Element elementVersion,
		String name,
		Element elementName,
		String title,
		Element elementTitle,
		String status,
		Element elementStatus,
		bool experimental,
		Element elementExperimental,
		DateTime date,
		Element elementDate,
		String publisher,
		Element elementPublisher,
		List<ContactDetail> contact,
		String description,
		Element elementDescription,
		List<UsageContext> useContext,
		List<CodeableConcept> jurisdiction,
		String copyright,
		Element elementCopyright,
		String packageId,
		Element elementPackageId,
		String license,
		Element elementLicense,
		List<String> fhirVersion,
		List<Element> elementFhirVersion,
		List<ImplementationGuide_DependsOn> dependsOn,
		List<ImplementationGuide_Global> global,
		ImplementationGuide_Definition definition,
		ImplementationGuide_Manifest manifest}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide newImplementationGuide = new ImplementationGuide(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('ImplementationGuide'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			url: url,
			elementUrl: elementUrl,
			version: version,
			elementVersion: elementVersion,
			name: name,
			elementName: elementName,
			title: title,
			elementTitle: elementTitle,
			status: status,
			elementStatus: elementStatus,
			experimental: experimental,
			elementExperimental: elementExperimental,
			date: date,
			elementDate: elementDate,
			publisher: publisher,
			elementPublisher: elementPublisher,
			contact: contact,
			description: description,
			elementDescription: elementDescription,
			useContext: useContext,
			jurisdiction: jurisdiction,
			copyright: copyright,
			elementCopyright: elementCopyright,
			packageId: packageId,
			elementPackageId: elementPackageId,
			license: license,
			elementLicense: elementLicense,
			fhirVersion: fhirVersion,
			elementFhirVersion: elementFhirVersion,
			dependsOn: dependsOn,
			global: global,
			definition: definition,
			manifest: manifest,
);
	int saved = await fhirDb.saveResource(newImplementationGuide);
	return newImplementationGuide;
}
  String resourceType= 'ImplementationGuide';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String status; // <code> enum: draft/active/retired/unknown;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element elementCopyright;
  String packageId;
  Element elementPackageId;
  String license; // <code> enum: not-open-source/0BSD/AAL/Abstyles/Adobe-2006/Adobe-Glyph/ADSL/AFL-1.1/AFL-1.2/AFL-2.0/AFL-2.1/AFL-3.0/Afmparse/AGPL-1.0-only/AGPL-1.0-or-later/AGPL-3.0-only/AGPL-3.0-or-later/Aladdin/AMDPLPA/AML/AMPAS/ANTLR-PD/Apache-1.0/Apache-1.1/Apache-2.0/APAFML/APL-1.0/APSL-1.0/APSL-1.1/APSL-1.2/APSL-2.0/Artistic-1.0-cl8/Artistic-1.0-Perl/Artistic-1.0/Artistic-2.0/Bahyph/Barr/Beerware/BitTorrent-1.0/BitTorrent-1.1/Borceux/BSD-1-Clause/BSD-2-Clause-FreeBSD/BSD-2-Clause-NetBSD/BSD-2-Clause-Patent/BSD-2-Clause/BSD-3-Clause-Attribution/BSD-3-Clause-Clear/BSD-3-Clause-LBNL/BSD-3-Clause-No-Nuclear-License-2014/BSD-3-Clause-No-Nuclear-License/BSD-3-Clause-No-Nuclear-Warranty/BSD-3-Clause/BSD-4-Clause-UC/BSD-4-Clause/BSD-Protection/BSD-Source-Code/BSL-1.0/bzip2-1.0.5/bzip2-1.0.6/Caldera/CATOSL-1.1/CC-BY-1.0/CC-BY-2.0/CC-BY-2.5/CC-BY-3.0/CC-BY-4.0/CC-BY-NC-1.0/CC-BY-NC-2.0/CC-BY-NC-2.5/CC-BY-NC-3.0/CC-BY-NC-4.0/CC-BY-NC-ND-1.0/CC-BY-NC-ND-2.0/CC-BY-NC-ND-2.5/CC-BY-NC-ND-3.0/CC-BY-NC-ND-4.0/CC-BY-NC-SA-1.0/CC-BY-NC-SA-2.0/CC-BY-NC-SA-2.5/CC-BY-NC-SA-3.0/CC-BY-NC-SA-4.0/CC-BY-ND-1.0/CC-BY-ND-2.0/CC-BY-ND-2.5/CC-BY-ND-3.0/CC-BY-ND-4.0/CC-BY-SA-1.0/CC-BY-SA-2.0/CC-BY-SA-2.5/CC-BY-SA-3.0/CC-BY-SA-4.0/CC0-1.0/CDDL-1.0/CDDL-1.1/CDLA-Permissive-1.0/CDLA-Sharing-1.0/CECILL-1.0/CECILL-1.1/CECILL-2.0/CECILL-2.1/CECILL-B/CECILL-C/ClArtistic/CNRI-Jython/CNRI-Python-GPL-Compatible/CNRI-Python/Condor-1.1/CPAL-1.0/CPL-1.0/CPOL-1.02/Crossword/CrystalStacker/CUA-OPL-1.0/Cube/curl/D-FSL-1.0/diffmark/DOC/Dotseqn/DSDP/dvipdfm/ECL-1.0/ECL-2.0/EFL-1.0/EFL-2.0/eGenix/Entessa/EPL-1.0/EPL-2.0/ErlPL-1.1/EUDatagrid/EUPL-1.0/EUPL-1.1/EUPL-1.2/Eurosym/Fair/Frameworx-1.0/FreeImage/FSFAP/FSFUL/FSFULLR/FTL/GFDL-1.1-only/GFDL-1.1-or-later/GFDL-1.2-only/GFDL-1.2-or-later/GFDL-1.3-only/GFDL-1.3-or-later/Giftware/GL2PS/Glide/Glulxe/gnuplot/GPL-1.0-only/GPL-1.0-or-later/GPL-2.0-only/GPL-2.0-or-later/GPL-3.0-only/GPL-3.0-or-later/gSOAP-1.3b/HaskellReport/HPND/IBM-pibs/ICU/IJG/ImageMagick/iMatix/Imlib2/Info-ZIP/Intel-ACPI/Intel/Interbase-1.0/IPA/IPL-1.0/ISC/JasPer-2.0/JSON/LAL-1.2/LAL-1.3/Latex2e/Leptonica/LGPL-2.0-only/LGPL-2.0-or-later/LGPL-2.1-only/LGPL-2.1-or-later/LGPL-3.0-only/LGPL-3.0-or-later/LGPLLR/Libpng/libtiff/LiLiQ-P-1.1/LiLiQ-R-1.1/LiLiQ-Rplus-1.1/Linux-OpenIB/LPL-1.0/LPL-1.02/LPPL-1.0/LPPL-1.1/LPPL-1.2/LPPL-1.3a/LPPL-1.3c/MakeIndex/MirOS/MIT-0/MIT-advertising/MIT-CMU/MIT-enna/MIT-feh/MIT/MITNFA/Motosoto/mpich2/MPL-1.0/MPL-1.1/MPL-2.0-no-copyleft-exception/MPL-2.0/MS-PL/MS-RL/MTLL/Multics/Mup/NASA-1.3/Naumen/NBPL-1.0/NCSA/Net-SNMP/NetCDF/Newsletr/NGPL/NLOD-1.0/NLPL/Nokia/NOSL/Noweb/NPL-1.0/NPL-1.1/NPOSL-3.0/NRL/NTP/OCCT-PL/OCLC-2.0/ODbL-1.0/OFL-1.0/OFL-1.1/OGTSL/OLDAP-1.1/OLDAP-1.2/OLDAP-1.3/OLDAP-1.4/OLDAP-2.0.1/OLDAP-2.0/OLDAP-2.1/OLDAP-2.2.1/OLDAP-2.2.2/OLDAP-2.2/OLDAP-2.3/OLDAP-2.4/OLDAP-2.5/OLDAP-2.6/OLDAP-2.7/OLDAP-2.8/OML/OpenSSL/OPL-1.0/OSET-PL-2.1/OSL-1.0/OSL-1.1/OSL-2.0/OSL-2.1/OSL-3.0/PDDL-1.0/PHP-3.0/PHP-3.01/Plexus/PostgreSQL/psfrag/psutils/Python-2.0/Qhull/QPL-1.0/Rdisc/RHeCos-1.1/RPL-1.1/RPL-1.5/RPSL-1.0/RSA-MD/RSCPL/Ruby/SAX-PD/Saxpath/SCEA/Sendmail/SGI-B-1.0/SGI-B-1.1/SGI-B-2.0/SimPL-2.0/SISSL-1.2/SISSL/Sleepycat/SMLNJ/SMPPL/SNIA/Spencer-86/Spencer-94/Spencer-99/SPL-1.0/SugarCRM-1.1.3/SWL/TCL/TCP-wrappers/TMate/TORQUE-1.1/TOSL/Unicode-DFS-2015/Unicode-DFS-2016/Unicode-TOU/Unlicense/UPL-1.0/Vim/VOSTROM/VSL-1.0/W3C-19980720/W3C-20150513/W3C/Watcom-1.0/Wsuipa/WTFPL/X11/Xerox/XFree86-1.1/xinetd/Xnet/xpp/XSkat/YPL-1.0/YPL-1.1/Zed/Zend-2.0/Zimbra-1.3/Zimbra-1.4/zlib-acknowledgement/Zlib/ZPL-1.1/ZPL-2.0/ZPL-2.1;
  Element elementLicense;
  List<String> fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1> fhirVersion;
  List<Element> elementFhirVersion;
  List<ImplementationGuide_DependsOn> dependsOn;
  List<ImplementationGuide_Global> global;
  ImplementationGuide_Definition definition;
  ImplementationGuide_Manifest manifest;

ImplementationGuide(
  {@required this.resourceType,
    this.id,
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

	static Future<ImplementationGuide_DependsOn> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String uri,
		String packageId,
		Element elementPackageId,
		String version,
		Element elementVersion}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_DependsOn newImplementationGuide_DependsOn = new ImplementationGuide_DependsOn(
			id: await fhirDb.newResourceId('ImplementationGuide_DependsOn'),
			extension: extension,
			modifierExtension: modifierExtension,
			uri: uri,
			packageId: packageId,
			elementPackageId: elementPackageId,
			version: version,
			elementVersion: elementVersion,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_DependsOn);
	return newImplementationGuide_DependsOn;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String uri;
  String packageId;
  Element elementPackageId;
  String version;
  Element elementVersion;

ImplementationGuide_DependsOn(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.uri,
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

	static Future<ImplementationGuide_Global> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		String profile}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Global newImplementationGuide_Global = new ImplementationGuide_Global(
			id: await fhirDb.newResourceId('ImplementationGuide_Global'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			profile: profile,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Global);
	return newImplementationGuide_Global;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String profile;

ImplementationGuide_Global(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    @required this.profile
    });

  factory ImplementationGuide_Global.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GlobalFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GlobalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Definition {

	static Future<ImplementationGuide_Definition> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<ImplementationGuide_Grouping> grouping,
		List<ImplementationGuide_Resource> resource,
		ImplementationGuide_Page page,
		List<ImplementationGuide_Parameter> parameter,
		List<ImplementationGuide_Template> template}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Definition newImplementationGuide_Definition = new ImplementationGuide_Definition(
			id: await fhirDb.newResourceId('ImplementationGuide_Definition'),
			extension: extension,
			modifierExtension: modifierExtension,
			grouping: grouping,
			resource: resource,
			page: page,
			parameter: parameter,
			template: template,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Definition);
	return newImplementationGuide_Definition;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ImplementationGuide_Grouping> grouping;
  List<ImplementationGuide_Resource> resource;
  ImplementationGuide_Page page;
  List<ImplementationGuide_Parameter> parameter;
  List<ImplementationGuide_Template> template;

ImplementationGuide_Definition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.grouping,
    @required this.resource,
    this.page,
    this.parameter,
    this.template
    });

  factory ImplementationGuide_Definition.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Grouping {

	static Future<ImplementationGuide_Grouping> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		String description,
		Element elementDescription}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Grouping newImplementationGuide_Grouping = new ImplementationGuide_Grouping(
			id: await fhirDb.newResourceId('ImplementationGuide_Grouping'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			description: description,
			elementDescription: elementDescription,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Grouping);
	return newImplementationGuide_Grouping;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String description;
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

	static Future<ImplementationGuide_Resource> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference reference,
		List<String> fhirVersion,
		List<Element> elementFhirVersion,
		String name,
		Element elementName,
		String description,
		Element elementDescription,
		bool exampleBoolean,
		Element elementExampleBoolean,
		String exampleCanonical,
		Element elementExampleCanonical,
		String groupingId,
		Element elementGroupingId}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Resource newImplementationGuide_Resource = new ImplementationGuide_Resource(
			id: await fhirDb.newResourceId('ImplementationGuide_Resource'),
			extension: extension,
			modifierExtension: modifierExtension,
			reference: reference,
			fhirVersion: fhirVersion,
			elementFhirVersion: elementFhirVersion,
			name: name,
			elementName: elementName,
			description: description,
			elementDescription: elementDescription,
			exampleBoolean: exampleBoolean,
			elementExampleBoolean: elementExampleBoolean,
			exampleCanonical: exampleCanonical,
			elementExampleCanonical: elementExampleCanonical,
			groupingId: groupingId,
			elementGroupingId: elementGroupingId,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Resource);
	return newImplementationGuide_Resource;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference reference;
  List<String> fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1> fhirVersion;
  List<Element> elementFhirVersion;
  String name;
  Element elementName;
  String description;
  Element elementDescription;
  bool exampleBoolean; //  pattern: ^true|false$
  Element elementExampleBoolean;
  String exampleCanonical; //  pattern: ^\S*$
  Element elementExampleCanonical;
  String groupingId;
  Element elementGroupingId;

ImplementationGuide_Resource(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
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

	static Future<ImplementationGuide_Page> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String nameUrl,
		Element elementNameUrl,
		Reference nameReference,
		String title,
		Element elementTitle,
		String generation,
		Element elementGeneration,
		List<ImplementationGuide_Page> page}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Page newImplementationGuide_Page = new ImplementationGuide_Page(
			id: await fhirDb.newResourceId('ImplementationGuide_Page'),
			extension: extension,
			modifierExtension: modifierExtension,
			nameUrl: nameUrl,
			elementNameUrl: elementNameUrl,
			nameReference: nameReference,
			title: title,
			elementTitle: elementTitle,
			generation: generation,
			elementGeneration: elementGeneration,
			page: page,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Page);
	return newImplementationGuide_Page;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String nameUrl; //  pattern: ^\S*$
  Element elementNameUrl;
  Reference nameReference;
  String title;
  Element elementTitle;
  String generation; // <code> enum: html/markdown/xml/generated;
  Element elementGeneration;
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

	static Future<ImplementationGuide_Parameter> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		String value,
		Element elementValue}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Parameter newImplementationGuide_Parameter = new ImplementationGuide_Parameter(
			id: await fhirDb.newResourceId('ImplementationGuide_Parameter'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			value: value,
			elementValue: elementValue,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Parameter);
	return newImplementationGuide_Parameter;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code; // <code> enum: apply/path-resource/path-pages/path-tx-cache/expansion-parameter/rule-broken-links/generate-xml/generate-json/generate-turtle/html-template;
  Element elementCode;
  String value;
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

	static Future<ImplementationGuide_Template> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		String source,
		Element elementSource,
		String scope,
		Element elementScope}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Template newImplementationGuide_Template = new ImplementationGuide_Template(
			id: await fhirDb.newResourceId('ImplementationGuide_Template'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			source: source,
			elementSource: elementSource,
			scope: scope,
			elementScope: elementScope,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Template);
	return newImplementationGuide_Template;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String source;
  Element elementSource;
  String scope;
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

	static Future<ImplementationGuide_Manifest> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String rendering,
		Element elementRendering,
		List<ImplementationGuide_Resource1> resource,
		List<ImplementationGuide_Page1> page,
		List<String> image,
		List<Element> elementImage,
		List<String> other,
		List<Element> elementOther}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Manifest newImplementationGuide_Manifest = new ImplementationGuide_Manifest(
			id: await fhirDb.newResourceId('ImplementationGuide_Manifest'),
			extension: extension,
			modifierExtension: modifierExtension,
			rendering: rendering,
			elementRendering: elementRendering,
			resource: resource,
			page: page,
			image: image,
			elementImage: elementImage,
			other: other,
			elementOther: elementOther,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Manifest);
	return newImplementationGuide_Manifest;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String rendering;
  Element elementRendering;
  List<ImplementationGuide_Resource1> resource;
  List<ImplementationGuide_Page1> page;
  List<String> image;
  List<Element> elementImage;
  List<String> other;
  List<Element> elementOther;

ImplementationGuide_Manifest(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.rendering,
    this.elementRendering,
    @required this.resource,
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

	static Future<ImplementationGuide_Resource1> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference reference,
		bool exampleBoolean,
		Element elementExampleBoolean,
		String exampleCanonical,
		Element elementExampleCanonical,
		String relativePath,
		Element elementRelativePath}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Resource1 newImplementationGuide_Resource1 = new ImplementationGuide_Resource1(
			id: await fhirDb.newResourceId('ImplementationGuide_Resource1'),
			extension: extension,
			modifierExtension: modifierExtension,
			reference: reference,
			exampleBoolean: exampleBoolean,
			elementExampleBoolean: elementExampleBoolean,
			exampleCanonical: exampleCanonical,
			elementExampleCanonical: elementExampleCanonical,
			relativePath: relativePath,
			elementRelativePath: elementRelativePath,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Resource1);
	return newImplementationGuide_Resource1;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference reference;
  bool exampleBoolean; //  pattern: ^true|false$
  Element elementExampleBoolean;
  String exampleCanonical; //  pattern: ^\S*$
  Element elementExampleCanonical;
  String relativePath;
  Element elementRelativePath;

ImplementationGuide_Resource1(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
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

	static Future<ImplementationGuide_Page1> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		String title,
		Element elementTitle,
		List<String> anchor,
		List<Element> elementAnchor}) async {
	var fhirDb = new DatabaseHelper();
	ImplementationGuide_Page1 newImplementationGuide_Page1 = new ImplementationGuide_Page1(
			id: await fhirDb.newResourceId('ImplementationGuide_Page1'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			title: title,
			elementTitle: elementTitle,
			anchor: anchor,
			elementAnchor: elementAnchor,
);
	int saved = await fhirDb.saveResource(newImplementationGuide_Page1);
	return newImplementationGuide_Page1;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  List<String> anchor;
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
// JsonSerializableGenerator
// **************************************************************************

ImplementationGuide _$ImplementationGuideFromJson(Map<String, dynamic> json) {
  return ImplementationGuide(
    resourceType: json['resourceType'] as String,
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
      'resourceType': instance.resourceType,
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uri: json['uri'] as String,
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
    profile: json['profile'] as String,
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
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource.fromJson(e as Map<String, dynamic>))
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
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
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
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
