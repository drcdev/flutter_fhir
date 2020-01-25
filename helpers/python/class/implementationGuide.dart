

part 'implementationGuide.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide {

  This is a ImplementationGuide resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element _url;
  String version;
  Element _version;
  String name;
  Element _name;
  String title;
  Element _title;
  enum: draftactiveretiredunknown status;
  Element _status;
  bool experimental;
  Element _experimental;
  StringTime date;
  Element _date;
  String publisher;
  Element _publisher;
  List<ContactDetail> contact;
  String description;
  Element _description;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element _copyright;
  String packageId;
  Element _packageId;
  enum: not-open-source0BSDAALAbstylesAdobe-2006Adobe-GlyphADSLAFL-1.1AFL-1.2AFL-2.0AFL-2.1AFL-3.0AfmparseAGPL-1.0-onlyAGPL-1.0-or-laterAGPL-3.0-onlyAGPL-3.0-or-laterAladdinAMDPLPAAMLAMPASANTLR-PDApache-1.0Apache-1.1Apache-2.0APAFMLAPL-1.0APSL-1.0APSL-1.1APSL-1.2APSL-2.0Artistic-1.0-cl8Artistic-1.0-PerlArtistic-1.0Artistic-2.0BahyphBarrBeerwareBitTorrent-1.0BitTorrent-1.1BorceuxBSD-1-ClauseBSD-2-Clause-FreeBSDBSD-2-Clause-NetBSDBSD-2-Clause-PatentBSD-2-ClauseBSD-3-Clause-AttributionBSD-3-Clause-ClearBSD-3-Clause-LBNLBSD-3-Clause-No-Nuclear-License-2014BSD-3-Clause-No-Nuclear-LicenseBSD-3-Clause-No-Nuclear-WarrantyBSD-3-ClauseBSD-4-Clause-UCBSD-4-ClauseBSD-ProtectionBSD-Source-CodeBSL-1.0bzip2-1.0.5bzip2-1.0.6CalderaCATOSL-1.1CC-BY-1.0CC-BY-2.0CC-BY-2.5CC-BY-3.0CC-BY-4.0CC-BY-NC-1.0CC-BY-NC-2.0CC-BY-NC-2.5CC-BY-NC-3.0CC-BY-NC-4.0CC-BY-NC-ND-1.0CC-BY-NC-ND-2.0CC-BY-NC-ND-2.5CC-BY-NC-ND-3.0CC-BY-NC-ND-4.0CC-BY-NC-SA-1.0CC-BY-NC-SA-2.0CC-BY-NC-SA-2.5CC-BY-NC-SA-3.0CC-BY-NC-SA-4.0CC-BY-ND-1.0CC-BY-ND-2.0CC-BY-ND-2.5CC-BY-ND-3.0CC-BY-ND-4.0CC-BY-SA-1.0CC-BY-SA-2.0CC-BY-SA-2.5CC-BY-SA-3.0CC-BY-SA-4.0CC0-1.0CDDL-1.0CDDL-1.1CDLA-Permissive-1.0CDLA-Sharing-1.0CECILL-1.0CECILL-1.1CECILL-2.0CECILL-2.1CECILL-BCECILL-CClArtisticCNRI-JythonCNRI-Python-GPL-CompatibleCNRI-PythonCondor-1.1CPAL-1.0CPL-1.0CPOL-1.02CrosswordCrystalStackerCUA-OPL-1.0CubecurlD-FSL-1.0diffmarkDOCDotseqnDSDPdvipdfmECL-1.0ECL-2.0EFL-1.0EFL-2.0eGenixEntessaEPL-1.0EPL-2.0ErlPL-1.1EUDatagridEUPL-1.0EUPL-1.1EUPL-1.2EurosymFairFrameworx-1.0FreeImageFSFAPFSFULFSFULLRFTLGFDL-1.1-onlyGFDL-1.1-or-laterGFDL-1.2-onlyGFDL-1.2-or-laterGFDL-1.3-onlyGFDL-1.3-or-laterGiftwareGL2PSGlideGlulxegnuplotGPL-1.0-onlyGPL-1.0-or-laterGPL-2.0-onlyGPL-2.0-or-laterGPL-3.0-onlyGPL-3.0-or-latergSOAP-1.3bHaskellReportHPNDIBM-pibsICUIJGImageMagickiMatixImlib2Info-ZIPIntel-ACPIIntelInterbase-1.0IPAIPL-1.0ISCJasPer-2.0JSONLAL-1.2LAL-1.3Latex2eLeptonicaLGPL-2.0-onlyLGPL-2.0-or-laterLGPL-2.1-onlyLGPL-2.1-or-laterLGPL-3.0-onlyLGPL-3.0-or-laterLGPLLRLibpnglibtiffLiLiQ-P-1.1LiLiQ-R-1.1LiLiQ-Rplus-1.1Linux-OpenIBLPL-1.0LPL-1.02LPPL-1.0LPPL-1.1LPPL-1.2LPPL-1.3aLPPL-1.3cMakeIndexMirOSMIT-0MIT-advertisingMIT-CMUMIT-ennaMIT-fehMITMITNFAMotosotompich2MPL-1.0MPL-1.1MPL-2.0-no-copyleft-exceptionMPL-2.0MS-PLMS-RLMTLLMulticsMupNASA-1.3NaumenNBPL-1.0NCSANet-SNMPNetCDFNewsletrNGPLNLOD-1.0NLPLNokiaNOSLNowebNPL-1.0NPL-1.1NPOSL-3.0NRLNTPOCCT-PLOCLC-2.0ODbL-1.0OFL-1.0OFL-1.1OGTSLOLDAP-1.1OLDAP-1.2OLDAP-1.3OLDAP-1.4OLDAP-2.0.1OLDAP-2.0OLDAP-2.1OLDAP-2.2.1OLDAP-2.2.2OLDAP-2.2OLDAP-2.3OLDAP-2.4OLDAP-2.5OLDAP-2.6OLDAP-2.7OLDAP-2.8OMLOpenSSLOPL-1.0OSET-PL-2.1OSL-1.0OSL-1.1OSL-2.0OSL-2.1OSL-3.0PDDL-1.0PHP-3.0PHP-3.01PlexusPostgreSQLpsfragpsutilsPython-2.0QhullQPL-1.0RdiscRHeCos-1.1RPL-1.1RPL-1.5RPSL-1.0RSA-MDRSCPLRubySAX-PDSaxpathSCEASendmailSGI-B-1.0SGI-B-1.1SGI-B-2.0SimPL-2.0SISSL-1.2SISSLSleepycatSMLNJSMPPLSNIASpencer-86Spencer-94Spencer-99SPL-1.0SugarCRM-1.1.3SWLTCLTCP-wrappersTMateTORQUE-1.1TOSLUnicode-DFS-2015Unicode-DFS-2016Unicode-TOUUnlicenseUPL-1.0VimVOSTROMVSL-1.0W3C-19980720W3C-20150513W3CWatcom-1.0WsuipaWTFPLX11XeroxXFree86-1.1xinetdXnetxppXSkatYPL-1.0YPL-1.1ZedZend-2.0Zimbra-1.3Zimbra-1.4zlib-acknowledgementZlibZPL-1.1ZPL-2.0ZPL-2.1 license;
  Element _license;
  array fhirVersion;
  List<Element> _fhirVersion;
  List<ImplementationGuide_DependsOn> dependsOn;
  List<ImplementationGuide_Global> global;
  ImplementationGuide_Definition definition;
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
this.manifest});

  factory ImplementationGuide.fromJson(Map<String, dynamic> json) => _$ImplementationGuideFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuideToJson(this);
}