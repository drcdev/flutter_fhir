CREATE TABLE element(

	id TEXT PRIMARY KEY,
	List extension,
);

CREATE TABLE extension(

	id TEXT PRIMARY KEY,
	List extension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical "ForeignKey", -- 
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId "ForeignKey", -- 
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown "ForeignKey", -- 
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid "ForeignKey", -- 
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl "ForeignKey", -- 
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid "ForeignKey", -- 
	valueAddress "ForeignKey", -- 
	valueAge "ForeignKey", -- 
	valueAnnotation "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueContactPoint "ForeignKey", -- 
	valueCount "ForeignKey", -- 
	valueDistance "ForeignKey", -- 
	valueDuration "ForeignKey", -- 
	valueHumanName "ForeignKey", -- 
	valueIdentifier "ForeignKey", -- 
	valueMoney "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueRatio "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	valueSampledData "ForeignKey", -- 
	valueSignature "ForeignKey", -- 
	valueTiming "ForeignKey", -- 
	valueContactDetail "ForeignKey", -- 
	valueContributor "ForeignKey", -- 
	valueDataRequirement "ForeignKey", -- 
	valueExpression "ForeignKey", -- 
	valueParameterDefinition "ForeignKey", -- 
	valueRelatedArtifact "ForeignKey", -- 
	valueTriggerDefinition "ForeignKey", -- 
	valueUsageContext "ForeignKey", -- 
	valueDosage "ForeignKey", -- 
	valueMeta "ForeignKey", -- 
);

CREATE TABLE narrative(

	id TEXT PRIMARY KEY,
	List extension,
	"status" TEXT, -- enum: generated/extensions/additional/empty
	_status "ForeignKey", -- 
	div "ForeignKey", -- 
);

CREATE TABLE annotation(

	id TEXT PRIMARY KEY,
	List extension,
	authorReference "ForeignKey", -- 
	authorString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_authorString "ForeignKey", -- 
	"time" DATETIME, -- 
	_time "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
);

CREATE TABLE attachment(

	id TEXT PRIMARY KEY,
	List extension,
	contentType TEXT, -- 
	_contentType "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"data" TEXT, -- 
	_data "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"size" INTEGER, -- 
	_size "ForeignKey", -- 
	"hash" TEXT, -- 
	_hash "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	creation DATETIME, -- 
	_creation "ForeignKey", -- 
);

CREATE TABLE identifier(

	id TEXT PRIMARY KEY,
	List extension,
	"use" TEXT, -- enum: usual/official/temp/secondary/old
	_use "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	"period" "ForeignKey", -- 
	assigner "ForeignKey", -- 
);

CREATE TABLE codeableConcept(

	id TEXT PRIMARY KEY,
	List extension,
	List coding,
	"text" TEXT, -- 
	_text "ForeignKey", -- 
);

CREATE TABLE coding(

	id TEXT PRIMARY KEY,
	List extension,
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	userSelected BOOLEAN, -- 
	_userSelected "ForeignKey", -- 
);

CREATE TABLE quantity(

	id TEXT PRIMARY KEY,
	List extension,
	"value" REAL, -- 
	_value "ForeignKey", -- 
	comparator TEXT, -- enum: </<=/>=/>
	_comparator "ForeignKey", -- 
	unit TEXT, -- 
	_unit "ForeignKey", -- 
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
);

CREATE TABLE duration(

	id TEXT PRIMARY KEY,
	List extension,
	"value" REAL, -- 
	_value "ForeignKey", -- 
	comparator TEXT, -- enum: </<=/>=/>
	_comparator "ForeignKey", -- 
	unit TEXT, -- 
	_unit "ForeignKey", -- 
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
);

CREATE TABLE distance(

	id TEXT PRIMARY KEY,
	List extension,
	"value" REAL, -- 
	_value "ForeignKey", -- 
	comparator TEXT, -- enum: </<=/>=/>
	_comparator "ForeignKey", -- 
	unit TEXT, -- 
	_unit "ForeignKey", -- 
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
);

CREATE TABLE count(

	id TEXT PRIMARY KEY,
	List extension,
	"value" REAL, -- 
	_value "ForeignKey", -- 
	comparator TEXT, -- enum: </<=/>=/>
	_comparator "ForeignKey", -- 
	unit TEXT, -- 
	_unit "ForeignKey", -- 
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
);

CREATE TABLE money(

	id TEXT PRIMARY KEY,
	List extension,
	"value" REAL, -- 
	_value "ForeignKey", -- 
	currency TEXT, -- 
	_currency "ForeignKey", -- 
);

CREATE TABLE age(

	id TEXT PRIMARY KEY,
	List extension,
	"value" REAL, -- 
	_value "ForeignKey", -- 
	comparator TEXT, -- enum: </<=/>=/>
	_comparator "ForeignKey", -- 
	unit TEXT, -- 
	_unit "ForeignKey", -- 
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
);

CREATE TABLE range(

	id TEXT PRIMARY KEY,
	List extension,
	low "ForeignKey", -- 
	high "ForeignKey", -- 
);

CREATE TABLE period(

	id TEXT PRIMARY KEY,
	List extension,
	"start" DATETIME, -- 
	_start "ForeignKey", -- 
	"end" DATETIME, -- 
	_end "ForeignKey", -- 
);

CREATE TABLE ratio(

	id TEXT PRIMARY KEY,
	List extension,
	numerator "ForeignKey", -- 
	denominator "ForeignKey", -- 
);

CREATE TABLE reference(

	id TEXT PRIMARY KEY,
	List extension,
	reference TEXT, -- 
	_reference "ForeignKey", -- 
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	identifier "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
);

CREATE TABLE sampledData(

	id TEXT PRIMARY KEY,
	List extension,
	origin "ForeignKey", -- 
	"period" REAL, -- 
	_period "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	lowerLimit REAL, -- 
	_lowerLimit "ForeignKey", -- 
	upperLimit REAL, -- 
	_upperLimit "ForeignKey", -- 
	dimensions INTEGER, -- 
	_dimensions "ForeignKey", -- 
	"data" TEXT, -- 
	_data "ForeignKey", -- 
);

CREATE TABLE signature(

	id TEXT PRIMARY KEY,
	List extension,
	List type,
	"when" DATETIME, -- 
	_when "ForeignKey", -- 
	who "ForeignKey", -- 
	onBehalfOf "ForeignKey", -- 
	targetFormat TEXT, -- 
	_targetFormat "ForeignKey", -- 
	sigFormat TEXT, -- 
	_sigFormat "ForeignKey", -- 
	"data" TEXT, -- 
	_data "ForeignKey", -- 
);

CREATE TABLE humanName(

	id TEXT PRIMARY KEY,
	List extension,
	"use" TEXT, -- enum: usual/official/temp/nickname/anonymous/old/maiden
	_use "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	family TEXT, -- 
	_family "ForeignKey", -- 
	List given,
	List _given,
	List prefix,
	List _prefix,
	List suffix,
	List _suffix,
	"period" "ForeignKey", -- 
);

CREATE TABLE address(

	id TEXT PRIMARY KEY,
	List extension,
	"use" TEXT, -- enum: home/work/temp/old/billing
	_use "ForeignKey", -- 
	"type" TEXT, -- enum: postal/physical/both
	_type "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	List line,
	List _line,
	city TEXT, -- 
	_city "ForeignKey", -- 
	district TEXT, -- 
	_district "ForeignKey", -- 
	state TEXT, -- 
	_state "ForeignKey", -- 
	postalCode TEXT, -- 
	_postalCode "ForeignKey", -- 
	country TEXT, -- 
	_country "ForeignKey", -- 
	"period" "ForeignKey", -- 
);

CREATE TABLE contactPoint(

	id TEXT PRIMARY KEY,
	List extension,
	"system" TEXT, -- enum: phone/fax/email/pager/url/sms/other
	_system "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	"use" TEXT, -- enum: home/work/temp/old/mobile
	_use "ForeignKey", -- 
	"rank" INTEGER, -- 
	_rank "ForeignKey", -- 
	"period" "ForeignKey", -- 
);

CREATE TABLE timing(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	List event,
	List _event,
	repeat "ForeignKey", -- 
	"code" "ForeignKey", -- 
);

CREATE TABLE timing_Repeat(

	id TEXT PRIMARY KEY,
	"timing.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	boundsDuration "ForeignKey", -- 
	boundsRange "ForeignKey", -- 
	boundsPeriod "ForeignKey", -- 
	"count" INTEGER, -- 
	_count "ForeignKey", -- 
	countMax INTEGER, -- 
	_countMax "ForeignKey", -- 
	duration REAL, -- 
	_duration "ForeignKey", -- 
	durationMax REAL, -- 
	_durationMax "ForeignKey", -- 
	durationUnit TEXT, -- enum: s/min/h/d/wk/mo/a
	_durationUnit "ForeignKey", -- 
	frequency INTEGER, -- 
	_frequency "ForeignKey", -- 
	frequencyMax INTEGER, -- 
	_frequencyMax "ForeignKey", -- 
	"period" REAL, -- 
	_period "ForeignKey", -- 
	periodMax REAL, -- 
	_periodMax "ForeignKey", -- 
	periodUnit TEXT, -- enum: s/min/h/d/wk/mo/a
	_periodUnit "ForeignKey", -- 
	List dayOfWeek,
	List _dayOfWeek,
	List timeOfDay,
	List _timeOfDay,
	List when,
	List _when,
	offset INTEGER, -- 
	_offset "ForeignKey", -- 
	FOREIGN KEY ("timing.id")
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE meta(

	id TEXT PRIMARY KEY,
	List extension,
	versionId TEXT, -- 
	_versionId "ForeignKey", -- 
	lastUpdated DATETIME, -- 
	_lastUpdated "ForeignKey", -- 
	"source" TEXT, -- 
	_source "ForeignKey", -- 
	List profile,
	List security,
	List tag,
);

CREATE TABLE contactDetail(

	id TEXT PRIMARY KEY,
	List extension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List telecom,
);

CREATE TABLE contributor(

	id TEXT PRIMARY KEY,
	List extension,
	"type" TEXT, -- enum: author/editor/reviewer/endorser
	_type "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List contact,
);

CREATE TABLE dataRequirement(

	id TEXT PRIMARY KEY,
	List extension,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	List profile,
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	List mustSupport,
	List _mustSupport,
	List codeFilter,
	List dateFilter,
	"limit" INTEGER, -- 
	_limit "ForeignKey", -- 
	List sort,
);

CREATE TABLE dataRequirement_CodeFilter(

	id TEXT PRIMARY KEY,
	"dataRequirement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	searchParam TEXT, -- 
	_searchParam "ForeignKey", -- 
	valueSet TEXT, -- 
	List code,
	FOREIGN KEY ("dataRequirement.id")
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dataRequirement_DateFilter(

	id TEXT PRIMARY KEY,
	"dataRequirement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	searchParam TEXT, -- 
	_searchParam "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	valueDuration "ForeignKey", -- 
	FOREIGN KEY ("dataRequirement.id")
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dataRequirement_Sort(

	id TEXT PRIMARY KEY,
	"dataRequirement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	direction TEXT, -- enum: ascending/descending
	_direction "ForeignKey", -- 
	FOREIGN KEY ("dataRequirement.id")
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE parameterDefinition(

	id TEXT PRIMARY KEY,
	List extension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"use" TEXT, -- 
	_use "ForeignKey", -- 
	"min" INTEGER, -- 
	_min "ForeignKey", -- 
	"max" TEXT, -- 
	_max "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	"profile" TEXT, -- 
);

CREATE TABLE relatedArtifact(

	id TEXT PRIMARY KEY,
	List extension,
	"type" TEXT, -- enum: documentation/justification/citation/predecessor/successor/derived-from/depends-on/composed-of
	_type "ForeignKey", -- 
	label TEXT, -- 
	_label "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	citation TEXT, -- 
	_citation "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	document "ForeignKey", -- 
	resource TEXT, -- 
);

CREATE TABLE triggerDefinition(

	id TEXT PRIMARY KEY,
	List extension,
	"type" TEXT, -- enum: named-event/periodic/data-changed/data-added/data-modified/data-removed/data-accessed/data-access-ended
	_type "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	timingTiming "ForeignKey", -- 
	timingReference "ForeignKey", -- 
	timingDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_timingDate "ForeignKey", -- 
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime "ForeignKey", -- 
	List data,
	"condition" "ForeignKey", -- 
);

CREATE TABLE usageContext(

	id TEXT PRIMARY KEY,
	List extension,
	"code" "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueReference "ForeignKey", -- 
);

CREATE TABLE dosage(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	List additionalInstruction,
	patientInstruction TEXT, -- 
	_patientInstruction "ForeignKey", -- 
	timing "ForeignKey", -- 
	asNeededBoolean BOOLEAN, -- pattern: ^true|false$
	_asNeededBoolean "ForeignKey", -- 
	asNeededCodeableConcept "ForeignKey", -- 
	"site" "ForeignKey", -- 
	route "ForeignKey", -- 
	"method" "ForeignKey", -- 
	List doseAndRate,
	maxDosePerPeriod "ForeignKey", -- 
	maxDosePerAdministration "ForeignKey", -- 
	maxDosePerLifetime "ForeignKey", -- 
);

CREATE TABLE dosage_DoseAndRate(

	id TEXT PRIMARY KEY,
	"dosage.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	doseRange "ForeignKey", -- 
	doseQuantity "ForeignKey", -- 
	rateRatio "ForeignKey", -- 
	rateRange "ForeignKey", -- 
	rateQuantity "ForeignKey", -- 
	FOREIGN KEY ("dosage.id")
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE population(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	ageRange "ForeignKey", -- 
	ageCodeableConcept "ForeignKey", -- 
	gender "ForeignKey", -- 
	race "ForeignKey", -- 
	physiologicalCondition "ForeignKey", -- 
);

CREATE TABLE productShelfLife(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"period" "ForeignKey", -- 
	List specialPrecautionsForStorage,
);

CREATE TABLE prodCharacteristic(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	height "ForeignKey", -- 
	width "ForeignKey", -- 
	"depth" "ForeignKey", -- 
	"weight" "ForeignKey", -- 
	nominalVolume "ForeignKey", -- 
	externalDiameter "ForeignKey", -- 
	shape TEXT, -- 
	_shape "ForeignKey", -- 
	List color,
	List _color,
	List imprint,
	List _imprint,
	List image,
	scoring "ForeignKey", -- 
);

CREATE TABLE marketingStatus(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	country "ForeignKey", -- 
	jurisdiction "ForeignKey", -- 
	"status" "ForeignKey", -- 
	dateRange "ForeignKey", -- 
	restoreDate DATETIME, -- 
	_restoreDate "ForeignKey", -- 
);

CREATE TABLE substanceAmount(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	amountQuantity "ForeignKey", -- 
	amountRange "ForeignKey", -- 
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString "ForeignKey", -- 
	amountType "ForeignKey", -- 
	amountText TEXT, -- 
	_amountText "ForeignKey", -- 
	referenceRange "ForeignKey", -- 
);

CREATE TABLE substanceAmount_ReferenceRange(

	id TEXT PRIMARY KEY,
	"substanceAmount.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	lowLimit "ForeignKey", -- 
	highLimit "ForeignKey", -- 
	FOREIGN KEY ("substanceAmount.id")
		REFERENCES substanceAmount (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE expression(

	id TEXT PRIMARY KEY,
	List extension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"language" TEXT, -- enum: text/cql/text/fhirpath/application/x-fhir-query
	_language "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	reference TEXT, -- 
	_reference "ForeignKey", -- 
);

CREATE TABLE elementDefinition(

	id TEXT PRIMARY KEY,
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	List representation,
	List _representation,
	sliceName TEXT, -- 
	_sliceName "ForeignKey", -- 
	sliceIsConstraining BOOLEAN, -- 
	_sliceIsConstraining "ForeignKey", -- 
	label TEXT, -- 
	_label "ForeignKey", -- 
	List code,
	slicing "ForeignKey", -- 
	short TEXT, -- 
	_short "ForeignKey", -- 
	"definition" TEXT, -- 
	_definition "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	requirements TEXT, -- 
	_requirements "ForeignKey", -- 
	List alias,
	List _alias,
	"min" INTEGER, -- 
	_min "ForeignKey", -- 
	"max" TEXT, -- 
	_max "ForeignKey", -- 
	base "ForeignKey", -- 
	contentReference TEXT, -- 
	_contentReference "ForeignKey", -- 
	List type,
	defaultValueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_defaultValueBase64Binary "ForeignKey", -- 
	defaultValueBoolean BOOLEAN, -- pattern: ^true|false$
	_defaultValueBoolean "ForeignKey", -- 
	defaultValueCanonical TEXT, -- pattern: ^\S*$
	_defaultValueCanonical "ForeignKey", -- 
	defaultValueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_defaultValueCode "ForeignKey", -- 
	defaultValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_defaultValueDate "ForeignKey", -- 
	defaultValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_defaultValueDateTime "ForeignKey", -- 
	defaultValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_defaultValueDecimal "ForeignKey", -- 
	defaultValueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_defaultValueId "ForeignKey", -- 
	defaultValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_defaultValueInstant "ForeignKey", -- 
	defaultValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_defaultValueInteger "ForeignKey", -- 
	defaultValueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueMarkdown "ForeignKey", -- 
	defaultValueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_defaultValueOid "ForeignKey", -- 
	defaultValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_defaultValuePositiveInt "ForeignKey", -- 
	defaultValueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueString "ForeignKey", -- 
	defaultValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_defaultValueTime "ForeignKey", -- 
	defaultValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_defaultValueUnsignedInt "ForeignKey", -- 
	defaultValueUri TEXT, -- pattern: ^\S*$
	_defaultValueUri "ForeignKey", -- 
	defaultValueUrl TEXT, -- pattern: ^\S*$
	_defaultValueUrl "ForeignKey", -- 
	defaultValueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_defaultValueUuid "ForeignKey", -- 
	defaultValueAddress "ForeignKey", -- 
	defaultValueAge "ForeignKey", -- 
	defaultValueAnnotation "ForeignKey", -- 
	defaultValueAttachment "ForeignKey", -- 
	defaultValueCodeableConcept "ForeignKey", -- 
	defaultValueCoding "ForeignKey", -- 
	defaultValueContactPoint "ForeignKey", -- 
	defaultValueCount "ForeignKey", -- 
	defaultValueDistance "ForeignKey", -- 
	defaultValueDuration "ForeignKey", -- 
	defaultValueHumanName "ForeignKey", -- 
	defaultValueIdentifier "ForeignKey", -- 
	defaultValueMoney "ForeignKey", -- 
	defaultValuePeriod "ForeignKey", -- 
	defaultValueQuantity "ForeignKey", -- 
	defaultValueRange "ForeignKey", -- 
	defaultValueRatio "ForeignKey", -- 
	defaultValueReference "ForeignKey", -- 
	defaultValueSampledData "ForeignKey", -- 
	defaultValueSignature "ForeignKey", -- 
	defaultValueTiming "ForeignKey", -- 
	defaultValueContactDetail "ForeignKey", -- 
	defaultValueContributor "ForeignKey", -- 
	defaultValueDataRequirement "ForeignKey", -- 
	defaultValueExpression "ForeignKey", -- 
	defaultValueParameterDefinition "ForeignKey", -- 
	defaultValueRelatedArtifact "ForeignKey", -- 
	defaultValueTriggerDefinition "ForeignKey", -- 
	defaultValueUsageContext "ForeignKey", -- 
	defaultValueDosage "ForeignKey", -- 
	defaultValueMeta "ForeignKey", -- 
	meaningWhenMissing TEXT, -- 
	_meaningWhenMissing "ForeignKey", -- 
	orderMeaning TEXT, -- 
	_orderMeaning "ForeignKey", -- 
	fixedBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_fixedBase64Binary "ForeignKey", -- 
	fixedBoolean BOOLEAN, -- pattern: ^true|false$
	_fixedBoolean "ForeignKey", -- 
	fixedCanonical TEXT, -- pattern: ^\S*$
	_fixedCanonical "ForeignKey", -- 
	fixedCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_fixedCode "ForeignKey", -- 
	fixedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_fixedDate "ForeignKey", -- 
	fixedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_fixedDateTime "ForeignKey", -- 
	fixedDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_fixedDecimal "ForeignKey", -- 
	fixedId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_fixedId "ForeignKey", -- 
	fixedInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_fixedInstant "ForeignKey", -- 
	fixedInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_fixedInteger "ForeignKey", -- 
	fixedMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_fixedMarkdown "ForeignKey", -- 
	fixedOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_fixedOid "ForeignKey", -- 
	fixedPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_fixedPositiveInt "ForeignKey", -- 
	fixedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_fixedString "ForeignKey", -- 
	fixedTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_fixedTime "ForeignKey", -- 
	fixedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_fixedUnsignedInt "ForeignKey", -- 
	fixedUri TEXT, -- pattern: ^\S*$
	_fixedUri "ForeignKey", -- 
	fixedUrl TEXT, -- pattern: ^\S*$
	_fixedUrl "ForeignKey", -- 
	fixedUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_fixedUuid "ForeignKey", -- 
	fixedAddress "ForeignKey", -- 
	fixedAge "ForeignKey", -- 
	fixedAnnotation "ForeignKey", -- 
	fixedAttachment "ForeignKey", -- 
	fixedCodeableConcept "ForeignKey", -- 
	fixedCoding "ForeignKey", -- 
	fixedContactPoint "ForeignKey", -- 
	fixedCount "ForeignKey", -- 
	fixedDistance "ForeignKey", -- 
	fixedDuration "ForeignKey", -- 
	fixedHumanName "ForeignKey", -- 
	fixedIdentifier "ForeignKey", -- 
	fixedMoney "ForeignKey", -- 
	fixedPeriod "ForeignKey", -- 
	fixedQuantity "ForeignKey", -- 
	fixedRange "ForeignKey", -- 
	fixedRatio "ForeignKey", -- 
	fixedReference "ForeignKey", -- 
	fixedSampledData "ForeignKey", -- 
	fixedSignature "ForeignKey", -- 
	fixedTiming "ForeignKey", -- 
	fixedContactDetail "ForeignKey", -- 
	fixedContributor "ForeignKey", -- 
	fixedDataRequirement "ForeignKey", -- 
	fixedExpression "ForeignKey", -- 
	fixedParameterDefinition "ForeignKey", -- 
	fixedRelatedArtifact "ForeignKey", -- 
	fixedTriggerDefinition "ForeignKey", -- 
	fixedUsageContext "ForeignKey", -- 
	fixedDosage "ForeignKey", -- 
	fixedMeta "ForeignKey", -- 
	patternBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_patternBase64Binary "ForeignKey", -- 
	patternBoolean BOOLEAN, -- pattern: ^true|false$
	_patternBoolean "ForeignKey", -- 
	patternCanonical TEXT, -- pattern: ^\S*$
	_patternCanonical "ForeignKey", -- 
	patternCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_patternCode "ForeignKey", -- 
	patternDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_patternDate "ForeignKey", -- 
	patternDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_patternDateTime "ForeignKey", -- 
	patternDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_patternDecimal "ForeignKey", -- 
	patternId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_patternId "ForeignKey", -- 
	patternInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_patternInstant "ForeignKey", -- 
	patternInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_patternInteger "ForeignKey", -- 
	patternMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_patternMarkdown "ForeignKey", -- 
	patternOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_patternOid "ForeignKey", -- 
	patternPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_patternPositiveInt "ForeignKey", -- 
	patternString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_patternString "ForeignKey", -- 
	patternTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_patternTime "ForeignKey", -- 
	patternUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_patternUnsignedInt "ForeignKey", -- 
	patternUri TEXT, -- pattern: ^\S*$
	_patternUri "ForeignKey", -- 
	patternUrl TEXT, -- pattern: ^\S*$
	_patternUrl "ForeignKey", -- 
	patternUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_patternUuid "ForeignKey", -- 
	patternAddress "ForeignKey", -- 
	patternAge "ForeignKey", -- 
	patternAnnotation "ForeignKey", -- 
	patternAttachment "ForeignKey", -- 
	patternCodeableConcept "ForeignKey", -- 
	patternCoding "ForeignKey", -- 
	patternContactPoint "ForeignKey", -- 
	patternCount "ForeignKey", -- 
	patternDistance "ForeignKey", -- 
	patternDuration "ForeignKey", -- 
	patternHumanName "ForeignKey", -- 
	patternIdentifier "ForeignKey", -- 
	patternMoney "ForeignKey", -- 
	patternPeriod "ForeignKey", -- 
	patternQuantity "ForeignKey", -- 
	patternRange "ForeignKey", -- 
	patternRatio "ForeignKey", -- 
	patternReference "ForeignKey", -- 
	patternSampledData "ForeignKey", -- 
	patternSignature "ForeignKey", -- 
	patternTiming "ForeignKey", -- 
	patternContactDetail "ForeignKey", -- 
	patternContributor "ForeignKey", -- 
	patternDataRequirement "ForeignKey", -- 
	patternExpression "ForeignKey", -- 
	patternParameterDefinition "ForeignKey", -- 
	patternRelatedArtifact "ForeignKey", -- 
	patternTriggerDefinition "ForeignKey", -- 
	patternUsageContext "ForeignKey", -- 
	patternDosage "ForeignKey", -- 
	patternMeta "ForeignKey", -- 
	List example,
	minValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_minValueDate "ForeignKey", -- 
	minValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_minValueDateTime "ForeignKey", -- 
	minValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_minValueInstant "ForeignKey", -- 
	minValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_minValueTime "ForeignKey", -- 
	minValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_minValueDecimal "ForeignKey", -- 
	minValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_minValueInteger "ForeignKey", -- 
	minValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_minValuePositiveInt "ForeignKey", -- 
	minValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_minValueUnsignedInt "ForeignKey", -- 
	minValueQuantity "ForeignKey", -- 
	maxValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_maxValueDate "ForeignKey", -- 
	maxValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_maxValueDateTime "ForeignKey", -- 
	maxValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_maxValueInstant "ForeignKey", -- 
	maxValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_maxValueTime "ForeignKey", -- 
	maxValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_maxValueDecimal "ForeignKey", -- 
	maxValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_maxValueInteger "ForeignKey", -- 
	maxValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_maxValuePositiveInt "ForeignKey", -- 
	maxValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_maxValueUnsignedInt "ForeignKey", -- 
	maxValueQuantity "ForeignKey", -- 
	"maxLength" INTEGER, -- 
	_maxLength "ForeignKey", -- 
	List condition,
	List _condition,
	List constraint,
	mustSupport BOOLEAN, -- 
	_mustSupport "ForeignKey", -- 
	isModifier BOOLEAN, -- 
	_isModifier "ForeignKey", -- 
	isModifierReason TEXT, -- 
	_isModifierReason "ForeignKey", -- 
	isSummary BOOLEAN, -- 
	_isSummary "ForeignKey", -- 
	"binding" "ForeignKey", -- 
	List mapping,
);

CREATE TABLE elementDefinition_Slicing(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List discriminator,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	ordered BOOLEAN, -- 
	_ordered "ForeignKey", -- 
	rules TEXT, -- enum: closed/open/openAtEnd
	_rules "ForeignKey", -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Discriminator(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: value/exists/pattern/type/profile
	_type "ForeignKey", -- 
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Base(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	"min" INTEGER, -- 
	_min "ForeignKey", -- 
	"max" TEXT, -- 
	_max "ForeignKey", -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Type(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	List profile,
	List targetProfile,
	List aggregation,
	List _aggregation,
	versioning TEXT, -- enum: either/independent/specific
	_versioning "ForeignKey", -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Example(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	label TEXT, -- 
	_label "ForeignKey", -- 
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical "ForeignKey", -- 
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId "ForeignKey", -- 
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown "ForeignKey", -- 
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid "ForeignKey", -- 
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl "ForeignKey", -- 
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid "ForeignKey", -- 
	valueAddress "ForeignKey", -- 
	valueAge "ForeignKey", -- 
	valueAnnotation "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueContactPoint "ForeignKey", -- 
	valueCount "ForeignKey", -- 
	valueDistance "ForeignKey", -- 
	valueDuration "ForeignKey", -- 
	valueHumanName "ForeignKey", -- 
	valueIdentifier "ForeignKey", -- 
	valueMoney "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueRatio "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	valueSampledData "ForeignKey", -- 
	valueSignature "ForeignKey", -- 
	valueTiming "ForeignKey", -- 
	valueContactDetail "ForeignKey", -- 
	valueContributor "ForeignKey", -- 
	valueDataRequirement "ForeignKey", -- 
	valueExpression "ForeignKey", -- 
	valueParameterDefinition "ForeignKey", -- 
	valueRelatedArtifact "ForeignKey", -- 
	valueTriggerDefinition "ForeignKey", -- 
	valueUsageContext "ForeignKey", -- 
	valueDosage "ForeignKey", -- 
	valueMeta "ForeignKey", -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Constraint(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"key" TEXT, -- 
	_key "ForeignKey", -- 
	requirements TEXT, -- 
	_requirements "ForeignKey", -- 
	severity TEXT, -- enum: error/warning
	_severity "ForeignKey", -- 
	human TEXT, -- 
	_human "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	xpath TEXT, -- 
	_xpath "ForeignKey", -- 
	"source" TEXT, -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Binding(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	strength TEXT, -- enum: required/extensible/preferred/example
	_strength "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	valueSet TEXT, -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Mapping(

	id TEXT PRIMARY KEY,
	"elementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"identity" TEXT, -- 
	_identity "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	map TEXT, -- 
	_map "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	FOREIGN KEY ("elementDefinition.id")
		REFERENCES elementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE account(

	resourceType TEXT, -- resourceType: Account
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: active/inactive/entered-in-error/on-hold/unknown
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List subject,
	servicePeriod "ForeignKey", -- 
	List coverage,
	"owner" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List guarantor,
	partOf "ForeignKey", -- 
);

CREATE TABLE account_Coverage(

	id TEXT PRIMARY KEY,
	"account.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	coverage "ForeignKey", -- 
	"priority" INTEGER, -- 
	_priority "ForeignKey", -- 
	FOREIGN KEY ("account.id")
		REFERENCES account (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE account_Guarantor(

	id TEXT PRIMARY KEY,
	"account.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	party "ForeignKey", -- 
	onHold BOOLEAN, -- 
	_onHold "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("account.id")
		REFERENCES account (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE activityDefinition(

	resourceType TEXT, -- resourceType: ActivityDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	List library,
	kind TEXT, -- 
	_kind "ForeignKey", -- 
	"profile" TEXT, -- 
	"code" "ForeignKey", -- 
	intent TEXT, -- 
	_intent "ForeignKey", -- 
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	doNotPerform BOOLEAN, -- 
	_doNotPerform "ForeignKey", -- 
	timingTiming "ForeignKey", -- 
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime "ForeignKey", -- 
	timingAge "ForeignKey", -- 
	timingPeriod "ForeignKey", -- 
	timingRange "ForeignKey", -- 
	timingDuration "ForeignKey", -- 
	"location" "ForeignKey", -- 
	List participant,
	productReference "ForeignKey", -- 
	productCodeableConcept "ForeignKey", -- 
	quantity "ForeignKey", -- 
	List dosage,
	List bodySite,
	List specimenRequirement,
	List observationRequirement,
	List observationResultRequirement,
	transform TEXT, -- 
	List dynamicValue,
);

CREATE TABLE activityDefinition_Participant(

	id TEXT PRIMARY KEY,
	"activityDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	"role" "ForeignKey", -- 
	FOREIGN KEY ("activityDefinition.id")
		REFERENCES activityDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE activityDefinition_DynamicValue(

	id TEXT PRIMARY KEY,
	"activityDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	expression "ForeignKey", -- 
	FOREIGN KEY ("activityDefinition.id")
		REFERENCES activityDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE adverseEvent(

	resourceType TEXT, -- resourceType: AdverseEvent
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	actuality TEXT, -- enum: actual/potential
	_actuality "ForeignKey", -- 
	List category,
	"event" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	detected DATETIME, -- 
	_detected "ForeignKey", -- 
	recordedDate DATETIME, -- 
	_recordedDate "ForeignKey", -- 
	List resultingCondition,
	"location" "ForeignKey", -- 
	seriousness "ForeignKey", -- 
	severity "ForeignKey", -- 
	outcome "ForeignKey", -- 
	recorder "ForeignKey", -- 
	List contributor,
	List suspectEntity,
	List subjectMedicalHistory,
	List referenceDocument,
	List study,
);

CREATE TABLE adverseEvent_SuspectEntity(

	id TEXT PRIMARY KEY,
	"adverseEvent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"instance" "ForeignKey", -- 
	List causality,
	FOREIGN KEY ("adverseEvent.id")
		REFERENCES adverseEvent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE adverseEvent_Causality(

	id TEXT PRIMARY KEY,
	"adverseEvent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	assessment "ForeignKey", -- 
	productRelatedness TEXT, -- 
	_productRelatedness "ForeignKey", -- 
	author "ForeignKey", -- 
	"method" "ForeignKey", -- 
	FOREIGN KEY ("adverseEvent.id")
		REFERENCES adverseEvent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE allergyIntolerance(

	resourceType TEXT, -- resourceType: AllergyIntolerance
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	clinicalStatus "ForeignKey", -- 
	verificationStatus "ForeignKey", -- 
	"type" TEXT, -- enum: allergy/intolerance
	_type "ForeignKey", -- 
	List category,
	List _category,
	criticality TEXT, -- enum: low/high/unable-to-assess
	_criticality "ForeignKey", -- 
	"code" "ForeignKey", -- 
	patient "ForeignKey", -- 
	encounter "ForeignKey", -- 
	onsetDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_onsetDateTime "ForeignKey", -- 
	onsetAge "ForeignKey", -- 
	onsetPeriod "ForeignKey", -- 
	onsetRange "ForeignKey", -- 
	onsetString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_onsetString "ForeignKey", -- 
	recordedDate DATETIME, -- 
	_recordedDate "ForeignKey", -- 
	recorder "ForeignKey", -- 
	asserter "ForeignKey", -- 
	lastOccurrence DATETIME, -- 
	_lastOccurrence "ForeignKey", -- 
	List note,
	List reaction,
);

CREATE TABLE allergyIntolerance_Reaction(

	id TEXT PRIMARY KEY,
	"allergyIntolerance.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	substance "ForeignKey", -- 
	List manifestation,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	onset DATETIME, -- 
	_onset "ForeignKey", -- 
	severity TEXT, -- enum: mild/moderate/severe
	_severity "ForeignKey", -- 
	exposureRoute "ForeignKey", -- 
	List note,
	FOREIGN KEY ("allergyIntolerance.id")
		REFERENCES allergyIntolerance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE appointment(

	resourceType TEXT, -- resourceType: Appointment
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: proposed/pending/booked/arrived/fulfilled/cancelled/noshow/entered-in-error/checked-in/waitlist
	_status "ForeignKey", -- 
	cancelationReason "ForeignKey", -- 
	List serviceCategory,
	List serviceType,
	List specialty,
	appointmentType "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	"priority" INTEGER, -- 
	_priority "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List supportingInformation,
	"start" DATETIME, -- 
	_start "ForeignKey", -- 
	"end" DATETIME, -- 
	_end "ForeignKey", -- 
	minutesDuration INTEGER, -- 
	_minutesDuration "ForeignKey", -- 
	List slot,
	created DATETIME, -- 
	_created "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	patientInstruction TEXT, -- 
	_patientInstruction "ForeignKey", -- 
	List basedOn,
	List participant,
	List requestedPeriod,
);

CREATE TABLE appointment_Participant(

	id TEXT PRIMARY KEY,
	"appointment.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List type,
	actor "ForeignKey", -- 
	required TEXT, -- enum: required/optional/information-only
	_required "ForeignKey", -- 
	"status" TEXT, -- enum: accepted/declined/tentative/needs-action
	_status "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("appointment.id")
		REFERENCES appointment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE appointmentResponse(

	resourceType TEXT, -- resourceType: AppointmentResponse
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	appointment "ForeignKey", -- 
	"start" DATETIME, -- 
	_start "ForeignKey", -- 
	"end" DATETIME, -- 
	_end "ForeignKey", -- 
	List participantType,
	actor "ForeignKey", -- 
	participantStatus TEXT, -- 
	_participantStatus "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
);

CREATE TABLE auditEvent(

	resourceType TEXT, -- resourceType: AuditEvent
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List subtype,
	"action" TEXT, -- enum: C/R/U/D/E
	_action "ForeignKey", -- 
	"period" "ForeignKey", -- 
	recorded DATETIME, -- 
	_recorded "ForeignKey", -- 
	outcome TEXT, -- enum: 0/4/8/12
	_outcome "ForeignKey", -- 
	outcomeDesc TEXT, -- 
	_outcomeDesc "ForeignKey", -- 
	List purposeOfEvent,
	List agent,
	"source" "ForeignKey", -- 
	List entity,
);

CREATE TABLE auditEvent_Agent(

	id TEXT PRIMARY KEY,
	"auditEvent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List role,
	who "ForeignKey", -- 
	altId TEXT, -- 
	_altId "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	requestor BOOLEAN, -- 
	_requestor "ForeignKey", -- 
	"location" "ForeignKey", -- 
	List policy,
	List _policy,
	media "ForeignKey", -- 
	network "ForeignKey", -- 
	List purposeOfUse,
	FOREIGN KEY ("auditEvent.id")
		REFERENCES auditEvent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Network(

	id TEXT PRIMARY KEY,
	"auditEvent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"address" TEXT, -- 
	_address "ForeignKey", -- 
	"type" TEXT, -- enum: 1/2/3/4/5
	_type "ForeignKey", -- 
	FOREIGN KEY ("auditEvent.id")
		REFERENCES auditEvent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Source(

	id TEXT PRIMARY KEY,
	"auditEvent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"site" TEXT, -- 
	_site "ForeignKey", -- 
	observer "ForeignKey", -- 
	List type,
	FOREIGN KEY ("auditEvent.id")
		REFERENCES auditEvent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Entity(

	id TEXT PRIMARY KEY,
	"auditEvent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	what "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"role" "ForeignKey", -- 
	lifecycle "ForeignKey", -- 
	List securityLabel,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	query TEXT, -- 
	_query "ForeignKey", -- 
	List detail,
	FOREIGN KEY ("auditEvent.id")
		REFERENCES auditEvent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Detail(

	id TEXT PRIMARY KEY,
	"auditEvent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary "ForeignKey", -- 
	FOREIGN KEY ("auditEvent.id")
		REFERENCES auditEvent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE basic(

	resourceType TEXT, -- resourceType: Basic
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	created DATE, -- 
	_created "ForeignKey", -- 
	author "ForeignKey", -- 
);

CREATE TABLE binary(

	resourceType TEXT, -- resourceType: Binary
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	contentType TEXT, -- 
	_contentType "ForeignKey", -- 
	securityContext "ForeignKey", -- 
	"data" TEXT, -- 
	_data "ForeignKey", -- 
);

CREATE TABLE biologicallyDerivedProduct(

	resourceType TEXT, -- resourceType: BiologicallyDerivedProduct
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	productCategory TEXT, -- enum: organ/tissue/fluid/cells/biologicalAgent
	_productCategory "ForeignKey", -- 
	productCode "ForeignKey", -- 
	"status" TEXT, -- enum: available/unavailable
	_status "ForeignKey", -- 
	List request,
	quantity INTEGER, -- 
	_quantity "ForeignKey", -- 
	List parent,
	collection "ForeignKey", -- 
	List processing,
	manipulation "ForeignKey", -- 
	List storage,
);

CREATE TABLE biologicallyDerivedProduct_Collection(

	id TEXT PRIMARY KEY,
	"biologicallyDerivedProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	collector "ForeignKey", -- 
	"source" "ForeignKey", -- 
	collectedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_collectedDateTime "ForeignKey", -- 
	collectedPeriod "ForeignKey", -- 
	FOREIGN KEY ("biologicallyDerivedProduct.id")
		REFERENCES biologicallyDerivedProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct_Processing(

	id TEXT PRIMARY KEY,
	"biologicallyDerivedProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"procedure" "ForeignKey", -- 
	additive "ForeignKey", -- 
	timeDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timeDateTime "ForeignKey", -- 
	timePeriod "ForeignKey", -- 
	FOREIGN KEY ("biologicallyDerivedProduct.id")
		REFERENCES biologicallyDerivedProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct_Manipulation(

	id TEXT PRIMARY KEY,
	"biologicallyDerivedProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	timeDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timeDateTime "ForeignKey", -- 
	timePeriod "ForeignKey", -- 
	FOREIGN KEY ("biologicallyDerivedProduct.id")
		REFERENCES biologicallyDerivedProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct_Storage(

	id TEXT PRIMARY KEY,
	"biologicallyDerivedProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	temperature REAL, -- 
	_temperature "ForeignKey", -- 
	scale TEXT, -- enum: farenheit/celsius/kelvin
	_scale "ForeignKey", -- 
	duration "ForeignKey", -- 
	FOREIGN KEY ("biologicallyDerivedProduct.id")
		REFERENCES biologicallyDerivedProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bodyStructure(

	resourceType TEXT, -- resourceType: BodyStructure
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	morphology "ForeignKey", -- 
	"location" "ForeignKey", -- 
	List locationQualifier,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List image,
	patient "ForeignKey", -- 
);

CREATE TABLE bundle(

	resourceType TEXT, -- resourceType: Bundle
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	identifier "ForeignKey", -- 
	"type" TEXT, -- enum: document/message/transaction/transaction-response/batch/batch-response/history/searchset/collection
	_type "ForeignKey", -- 
	"timestamp" DATETIME, -- 
	_timestamp "ForeignKey", -- 
	total INTEGER, -- 
	_total "ForeignKey", -- 
	List link,
	List entry,
	"signature" "ForeignKey", -- 
);

CREATE TABLE bundle_Link(

	id TEXT PRIMARY KEY,
	"bundle.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	relation TEXT, -- 
	_relation "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	FOREIGN KEY ("bundle.id")
		REFERENCES bundle (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Entry(

	id TEXT PRIMARY KEY,
	"bundle.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List link,
	fullUrl TEXT, -- 
	_fullUrl "ForeignKey", -- 
	resource "ForeignKey", -- 
	"search" "ForeignKey", -- 
	request "ForeignKey", -- 
	response "ForeignKey", -- 
	FOREIGN KEY ("bundle.id")
		REFERENCES bundle (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Search(

	id TEXT PRIMARY KEY,
	"bundle.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	mode TEXT, -- enum: match/include/outcome
	_mode "ForeignKey", -- 
	score REAL, -- 
	_score "ForeignKey", -- 
	FOREIGN KEY ("bundle.id")
		REFERENCES bundle (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Request(

	id TEXT PRIMARY KEY,
	"bundle.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"method" TEXT, -- enum: GET/HEAD/POST/PUT/DELETE/PATCH
	_method "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	ifNoneMatch TEXT, -- 
	_ifNoneMatch "ForeignKey", -- 
	ifModifiedSince DATETIME, -- 
	_ifModifiedSince "ForeignKey", -- 
	ifMatch TEXT, -- 
	_ifMatch "ForeignKey", -- 
	ifNoneExist TEXT, -- 
	_ifNoneExist "ForeignKey", -- 
	FOREIGN KEY ("bundle.id")
		REFERENCES bundle (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Response(

	id TEXT PRIMARY KEY,
	"bundle.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"location" TEXT, -- 
	_location "ForeignKey", -- 
	etag TEXT, -- 
	_etag "ForeignKey", -- 
	lastModified DATETIME, -- 
	_lastModified "ForeignKey", -- 
	outcome "ForeignKey", -- 
	FOREIGN KEY ("bundle.id")
		REFERENCES bundle (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement(

	resourceType TEXT, -- resourceType: CapabilityStatement
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	kind TEXT, -- enum: instance/capability/requirements
	_kind "ForeignKey", -- 
	List instantiates,
	List imports,
	software "ForeignKey", -- 
	"implementation" "ForeignKey", -- 
	fhirVersion TEXT, -- enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion "ForeignKey", -- 
	List format,
	List _format,
	List patchFormat,
	List _patchFormat,
	List implementationGuide,
	List rest,
	List messaging,
	List document,
);

CREATE TABLE capabilityStatement_Software(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	releaseDate DATETIME, -- 
	_releaseDate "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Implementation(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	custodian "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Rest(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	mode TEXT, -- enum: client/server
	_mode "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	"security" "ForeignKey", -- 
	List resource,
	List interaction,
	List searchParam,
	List operation,
	List compartment,
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Security(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	cors BOOLEAN, -- 
	_cors "ForeignKey", -- 
	List service,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Resource(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	"profile" TEXT, -- 
	List supportedProfile,
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	List interaction,
	versioning TEXT, -- enum: no-version/versioned/versioned-update
	_versioning "ForeignKey", -- 
	readHistory BOOLEAN, -- 
	_readHistory "ForeignKey", -- 
	updateCreate BOOLEAN, -- 
	_updateCreate "ForeignKey", -- 
	conditionalCreate BOOLEAN, -- 
	_conditionalCreate "ForeignKey", -- 
	conditionalRead TEXT, -- enum: not-supported/modified-since/not-match/full-support
	_conditionalRead "ForeignKey", -- 
	conditionalUpdate BOOLEAN, -- 
	_conditionalUpdate "ForeignKey", -- 
	conditionalDelete TEXT, -- enum: not-supported/single/multiple
	_conditionalDelete "ForeignKey", -- 
	List referencePolicy,
	List _referencePolicy,
	List searchInclude,
	List _searchInclude,
	List searchRevInclude,
	List _searchRevInclude,
	List searchParam,
	List operation,
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Interaction(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- enum: read/vread/update/patch/delete/history-instance/history-type/create/search-type
	_code "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_SearchParam(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"definition" TEXT, -- 
	"type" TEXT, -- enum: number/date/string/token/reference/composite/quantity/uri/special
	_type "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Operation(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"definition" TEXT, -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Interaction1(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- enum: transaction/batch/search-system/history-system
	_code "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Messaging(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List endpoint,
	reliableCache INTEGER, -- 
	_reliableCache "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	List supportedMessage,
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Endpoint(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	protocol "ForeignKey", -- 
	"address" TEXT, -- 
	_address "ForeignKey", -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_SupportedMessage(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	mode TEXT, -- enum: sender/receiver
	_mode "ForeignKey", -- 
	"definition" TEXT, -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Document(

	id TEXT PRIMARY KEY,
	"capabilityStatement.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	mode TEXT, -- enum: producer/consumer
	_mode "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	"profile" TEXT, -- 
	FOREIGN KEY ("capabilityStatement.id")
		REFERENCES capabilityStatement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE carePlan(

	resourceType TEXT, -- resourceType: CarePlan
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List basedOn,
	List replaces,
	List partOf,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	intent TEXT, -- 
	_intent "ForeignKey", -- 
	List category,
	title TEXT, -- 
	_title "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	"period" "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	author "ForeignKey", -- 
	List contributor,
	List careTeam,
	List addresses,
	List supportingInfo,
	List goal,
	List activity,
	List note,
);

CREATE TABLE carePlan_Activity(

	id TEXT PRIMARY KEY,
	"carePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List outcomeCodeableConcept,
	List outcomeReference,
	List progress,
	reference "ForeignKey", -- 
	detail "ForeignKey", -- 
	FOREIGN KEY ("carePlan.id")
		REFERENCES carePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE carePlan_Detail(

	id TEXT PRIMARY KEY,
	"carePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	kind TEXT, -- 
	_kind "ForeignKey", -- 
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	"code" "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List goal,
	"status" TEXT, -- enum: not-started/scheduled/in-progress/on-hold/completed/cancelled/stopped/unknown/entered-in-error
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	doNotPerform BOOLEAN, -- 
	_doNotPerform "ForeignKey", -- 
	scheduledTiming "ForeignKey", -- 
	scheduledPeriod "ForeignKey", -- 
	scheduledString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_scheduledString "ForeignKey", -- 
	"location" "ForeignKey", -- 
	List performer,
	productCodeableConcept "ForeignKey", -- 
	productReference "ForeignKey", -- 
	dailyAmount "ForeignKey", -- 
	quantity "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("carePlan.id")
		REFERENCES carePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE careTeam(

	resourceType TEXT, -- resourceType: CareTeam
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: proposed/active/suspended/inactive/entered-in-error
	_status "ForeignKey", -- 
	List category,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	"period" "ForeignKey", -- 
	List participant,
	List reasonCode,
	List reasonReference,
	List managingOrganization,
	List telecom,
	List note,
);

CREATE TABLE careTeam_Participant(

	id TEXT PRIMARY KEY,
	"careTeam.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List role,
	"member" "ForeignKey", -- 
	onBehalfOf "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("careTeam.id")
		REFERENCES careTeam (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE catalogEntry(

	resourceType TEXT, -- resourceType: CatalogEntry
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"type" "ForeignKey", -- 
	orderable BOOLEAN, -- 
	_orderable "ForeignKey", -- 
	referencedItem "ForeignKey", -- 
	List additionalIdentifier,
	List classification,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	validityPeriod "ForeignKey", -- 
	validTo DATETIME, -- 
	_validTo "ForeignKey", -- 
	lastUpdated DATETIME, -- 
	_lastUpdated "ForeignKey", -- 
	List additionalCharacteristic,
	List additionalClassification,
	List relatedEntry,
);

CREATE TABLE catalogEntry_RelatedEntry(

	id TEXT PRIMARY KEY,
	"catalogEntry.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	relationtype TEXT, -- enum: triggers/is-replaced-by
	_relationtype "ForeignKey", -- 
	item "ForeignKey", -- 
	FOREIGN KEY ("catalogEntry.id")
		REFERENCES catalogEntry (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItem(

	resourceType TEXT, -- resourceType: ChargeItem
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List definitionUri,
	List _definitionUri,
	List definitionCanonical,
	"status" TEXT, -- enum: planned/billable/not-billable/aborted/billed/entered-in-error/unknown
	_status "ForeignKey", -- 
	List partOf,
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	context "ForeignKey", -- 
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	occurrenceTiming "ForeignKey", -- 
	List performer,
	performingOrganization "ForeignKey", -- 
	requestingOrganization "ForeignKey", -- 
	costCenter "ForeignKey", -- 
	quantity "ForeignKey", -- 
	List bodysite,
	factorOverride REAL, -- 
	_factorOverride "ForeignKey", -- 
	priceOverride "ForeignKey", -- 
	overrideReason TEXT, -- 
	_overrideReason "ForeignKey", -- 
	enterer "ForeignKey", -- 
	enteredDate DATETIME, -- 
	_enteredDate "ForeignKey", -- 
	List reason,
	List service,
	productReference "ForeignKey", -- 
	productCodeableConcept "ForeignKey", -- 
	List account,
	List note,
	List supportingInformation,
);

CREATE TABLE chargeItem_Performer(

	id TEXT PRIMARY KEY,
	"chargeItem.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"function" "ForeignKey", -- 
	actor "ForeignKey", -- 
	FOREIGN KEY ("chargeItem.id")
		REFERENCES chargeItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItemDefinition(

	resourceType TEXT, -- resourceType: ChargeItemDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	List derivedFromUri,
	List _derivedFromUri,
	List partOf,
	List replaces,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	"code" "ForeignKey", -- 
	List instance,
	List applicability,
	List propertyGroup,
);

CREATE TABLE chargeItemDefinition_Applicability(

	id TEXT PRIMARY KEY,
	"chargeItemDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	FOREIGN KEY ("chargeItemDefinition.id")
		REFERENCES chargeItemDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItemDefinition_PropertyGroup(

	id TEXT PRIMARY KEY,
	"chargeItemDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List applicability,
	List priceComponent,
	FOREIGN KEY ("chargeItemDefinition.id")
		REFERENCES chargeItemDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItemDefinition_PriceComponent(

	id TEXT PRIMARY KEY,
	"chargeItemDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	"code" "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("chargeItemDefinition.id")
		REFERENCES chargeItemDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim(

	resourceType TEXT, -- resourceType: Claim
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	subType "ForeignKey", -- 
	"use" TEXT, -- enum: claim/preauthorization/predetermination
	_use "ForeignKey", -- 
	patient "ForeignKey", -- 
	billablePeriod "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	enterer "ForeignKey", -- 
	insurer "ForeignKey", -- 
	"provider" "ForeignKey", -- 
	"priority" "ForeignKey", -- 
	fundsReserve "ForeignKey", -- 
	List related,
	prescription "ForeignKey", -- 
	originalPrescription "ForeignKey", -- 
	payee "ForeignKey", -- 
	referral "ForeignKey", -- 
	facility "ForeignKey", -- 
	List careTeam,
	List supportingInfo,
	List diagnosis,
	List procedure,
	List insurance,
	accident "ForeignKey", -- 
	List item,
	total "ForeignKey", -- 
);

CREATE TABLE claim_Related(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	claim "ForeignKey", -- 
	relationship "ForeignKey", -- 
	reference "ForeignKey", -- 
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Payee(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	party "ForeignKey", -- 
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_CareTeam(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	"provider" "ForeignKey", -- 
	responsible BOOLEAN, -- 
	_responsible "ForeignKey", -- 
	"role" "ForeignKey", -- 
	qualification "ForeignKey", -- 
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_SupportingInfo(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	category "ForeignKey", -- 
	"code" "ForeignKey", -- 
	timingDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_timingDate "ForeignKey", -- 
	timingPeriod "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	reason "ForeignKey", -- 
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Diagnosis(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	diagnosisCodeableConcept "ForeignKey", -- 
	diagnosisReference "ForeignKey", -- 
	List type,
	onAdmission "ForeignKey", -- 
	packageCode "ForeignKey", -- 
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Procedure(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	List type,
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	procedureCodeableConcept "ForeignKey", -- 
	procedureReference "ForeignKey", -- 
	List udi,
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Insurance(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	focal BOOLEAN, -- 
	_focal "ForeignKey", -- 
	identifier "ForeignKey", -- 
	coverage "ForeignKey", -- 
	businessArrangement TEXT, -- 
	_businessArrangement "ForeignKey", -- 
	List preAuthRef,
	List _preAuthRef,
	claimResponse "ForeignKey", -- 
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Accident(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"date" DATE, -- 
	_date "ForeignKey", -- 
	"type" "ForeignKey", -- 
	locationAddress "ForeignKey", -- 
	locationReference "ForeignKey", -- 
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Item(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	List careTeamSequence,
	List _careTeamSequence,
	List diagnosisSequence,
	List _diagnosisSequence,
	List procedureSequence,
	List _procedureSequence,
	List informationSequence,
	List _informationSequence,
	revenue "ForeignKey", -- 
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate "ForeignKey", -- 
	servicedPeriod "ForeignKey", -- 
	locationCodeableConcept "ForeignKey", -- 
	locationAddress "ForeignKey", -- 
	locationReference "ForeignKey", -- 
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List udi,
	bodySite "ForeignKey", -- 
	List subSite,
	List encounter,
	List detail,
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Detail(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	revenue "ForeignKey", -- 
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List udi,
	List subDetail,
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_SubDetail(

	id TEXT PRIMARY KEY,
	"claim.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	revenue "ForeignKey", -- 
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List udi,
	FOREIGN KEY ("claim.id")
		REFERENCES claim (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse(

	resourceType TEXT, -- resourceType: ClaimResponse
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	subType "ForeignKey", -- 
	"use" TEXT, -- 
	_use "ForeignKey", -- 
	patient "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	insurer "ForeignKey", -- 
	requestor "ForeignKey", -- 
	request "ForeignKey", -- 
	outcome TEXT, -- 
	_outcome "ForeignKey", -- 
	disposition TEXT, -- 
	_disposition "ForeignKey", -- 
	preAuthRef TEXT, -- 
	_preAuthRef "ForeignKey", -- 
	preAuthPeriod "ForeignKey", -- 
	payeeType "ForeignKey", -- 
	List item,
	List addItem,
	List adjudication,
	List total,
	payment "ForeignKey", -- 
	fundsReserve "ForeignKey", -- 
	formCode "ForeignKey", -- 
	form "ForeignKey", -- 
	List processNote,
	List communicationRequest,
	List insurance,
	List error,
);

CREATE TABLE claimResponse_Item(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	itemSequence INTEGER, -- 
	_itemSequence "ForeignKey", -- 
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List detail,
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Adjudication(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	reason "ForeignKey", -- 
	amount "ForeignKey", -- 
	"value" REAL, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Detail(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	detailSequence INTEGER, -- 
	_detailSequence "ForeignKey", -- 
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List subDetail,
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_SubDetail(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	subDetailSequence INTEGER, -- 
	_subDetailSequence "ForeignKey", -- 
	List noteNumber,
	List _noteNumber,
	List adjudication,
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_AddItem(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List itemSequence,
	List _itemSequence,
	List detailSequence,
	List _detailSequence,
	List subdetailSequence,
	List _subdetailSequence,
	List provider,
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate "ForeignKey", -- 
	servicedPeriod "ForeignKey", -- 
	locationCodeableConcept "ForeignKey", -- 
	locationAddress "ForeignKey", -- 
	locationReference "ForeignKey", -- 
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	bodySite "ForeignKey", -- 
	List subSite,
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List detail,
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Detail1(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	productOrService "ForeignKey", -- 
	List modifier,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List subDetail,
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_SubDetail1(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	productOrService "ForeignKey", -- 
	List modifier,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List noteNumber,
	List _noteNumber,
	List adjudication,
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Total(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Payment(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	adjustment "ForeignKey", -- 
	adjustmentReason "ForeignKey", -- 
	"date" DATE, -- 
	_date "ForeignKey", -- 
	amount "ForeignKey", -- 
	identifier "ForeignKey", -- 
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_ProcessNote(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	number INTEGER, -- 
	_number "ForeignKey", -- 
	"type" TEXT, -- enum: display/print/printoper
	_type "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	"language" "ForeignKey", -- 
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Insurance(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	focal BOOLEAN, -- 
	_focal "ForeignKey", -- 
	coverage "ForeignKey", -- 
	businessArrangement TEXT, -- 
	_businessArrangement "ForeignKey", -- 
	claimResponse "ForeignKey", -- 
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Error(

	id TEXT PRIMARY KEY,
	"claimResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	itemSequence INTEGER, -- 
	_itemSequence "ForeignKey", -- 
	detailSequence INTEGER, -- 
	_detailSequence "ForeignKey", -- 
	subDetailSequence INTEGER, -- 
	_subDetailSequence "ForeignKey", -- 
	"code" "ForeignKey", -- 
	FOREIGN KEY ("claimResponse.id")
		REFERENCES claimResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE clinicalImpression(

	resourceType TEXT, -- resourceType: ClinicalImpression
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	"code" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	assessor "ForeignKey", -- 
	previous "ForeignKey", -- 
	List problem,
	List investigation,
	List protocol,
	List _protocol,
	summary TEXT, -- 
	_summary "ForeignKey", -- 
	List finding,
	List prognosisCodeableConcept,
	List prognosisReference,
	List supportingInfo,
	List note,
);

CREATE TABLE clinicalImpression_Investigation(

	id TEXT PRIMARY KEY,
	"clinicalImpression.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	List item,
	FOREIGN KEY ("clinicalImpression.id")
		REFERENCES clinicalImpression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE clinicalImpression_Finding(

	id TEXT PRIMARY KEY,
	"clinicalImpression.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	itemCodeableConcept "ForeignKey", -- 
	itemReference "ForeignKey", -- 
	basis TEXT, -- 
	_basis "ForeignKey", -- 
	FOREIGN KEY ("clinicalImpression.id")
		REFERENCES clinicalImpression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem(

	resourceType TEXT, -- resourceType: CodeSystem
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	caseSensitive BOOLEAN, -- 
	_caseSensitive "ForeignKey", -- 
	valueSet TEXT, -- 
	hierarchyMeaning TEXT, -- enum: grouped-by/is-a/part-of/classified-with
	_hierarchyMeaning "ForeignKey", -- 
	compositional BOOLEAN, -- 
	_compositional "ForeignKey", -- 
	versionNeeded BOOLEAN, -- 
	_versionNeeded "ForeignKey", -- 
	content TEXT, -- enum: not-present/example/fragment/complete/supplement
	_content "ForeignKey", -- 
	supplements TEXT, -- 
	"count" INTEGER, -- 
	_count "ForeignKey", -- 
	List filter,
	List property,
	List concept,
);

CREATE TABLE codeSystem_Filter(

	id TEXT PRIMARY KEY,
	"codeSystem.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List operator,
	List _operator,
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("codeSystem.id")
		REFERENCES codeSystem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Property(

	id TEXT PRIMARY KEY,
	"codeSystem.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	uri TEXT, -- 
	_uri "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"type" TEXT, -- enum: code/Coding/string/integer/boolean/dateTime/decimal
	_type "ForeignKey", -- 
	FOREIGN KEY ("codeSystem.id")
		REFERENCES codeSystem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Concept(

	id TEXT PRIMARY KEY,
	"codeSystem.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	"definition" TEXT, -- 
	_definition "ForeignKey", -- 
	List designation,
	List property,
	List concept,
	FOREIGN KEY ("codeSystem.id")
		REFERENCES codeSystem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Designation(

	id TEXT PRIMARY KEY,
	"codeSystem.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"use" "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("codeSystem.id")
		REFERENCES codeSystem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Property1(

	id TEXT PRIMARY KEY,
	"codeSystem.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	FOREIGN KEY ("codeSystem.id")
		REFERENCES codeSystem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE communication(

	resourceType TEXT, -- resourceType: Communication
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List basedOn,
	List partOf,
	List inResponseTo,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	List category,
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	List medium,
	"subject" "ForeignKey", -- 
	topic "ForeignKey", -- 
	List about,
	encounter "ForeignKey", -- 
	sent DATETIME, -- 
	_sent "ForeignKey", -- 
	received DATETIME, -- 
	_received "ForeignKey", -- 
	List recipient,
	sender "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List payload,
	List note,
);

CREATE TABLE communication_Payload(

	id TEXT PRIMARY KEY,
	"communication.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	contentString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_contentString "ForeignKey", -- 
	contentAttachment "ForeignKey", -- 
	contentReference "ForeignKey", -- 
	FOREIGN KEY ("communication.id")
		REFERENCES communication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE communicationRequest(

	resourceType TEXT, -- resourceType: CommunicationRequest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List basedOn,
	List replaces,
	groupIdentifier "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	List category,
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	doNotPerform BOOLEAN, -- 
	_doNotPerform "ForeignKey", -- 
	List medium,
	"subject" "ForeignKey", -- 
	List about,
	encounter "ForeignKey", -- 
	List payload,
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	authoredOn DATETIME, -- 
	_authoredOn "ForeignKey", -- 
	requester "ForeignKey", -- 
	List recipient,
	sender "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List note,
);

CREATE TABLE communicationRequest_Payload(

	id TEXT PRIMARY KEY,
	"communicationRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	contentString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_contentString "ForeignKey", -- 
	contentAttachment "ForeignKey", -- 
	contentReference "ForeignKey", -- 
	FOREIGN KEY ("communicationRequest.id")
		REFERENCES communicationRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE compartmentDefinition(

	resourceType TEXT, -- resourceType: CompartmentDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"code" TEXT, -- enum: Patient/Encounter/RelatedPerson/Practitioner/Device
	_code "ForeignKey", -- 
	"search" BOOLEAN, -- 
	_search "ForeignKey", -- 
	List resource,
);

CREATE TABLE compartmentDefinition_Resource(

	id TEXT PRIMARY KEY,
	"compartmentDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	List param,
	List _param,
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("compartmentDefinition.id")
		REFERENCES compartmentDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition(

	resourceType TEXT, -- resourceType: Composition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"status" TEXT, -- enum: preliminary/final/amended/entered-in-error
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List category,
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	List author,
	title TEXT, -- 
	_title "ForeignKey", -- 
	confidentiality TEXT, -- 
	_confidentiality "ForeignKey", -- 
	List attester,
	custodian "ForeignKey", -- 
	List relatesTo,
	List event,
	List section,
);

CREATE TABLE composition_Attester(

	id TEXT PRIMARY KEY,
	"composition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	mode TEXT, -- enum: personal/professional/legal/official
	_mode "ForeignKey", -- 
	"time" DATETIME, -- 
	_time "ForeignKey", -- 
	party "ForeignKey", -- 
	FOREIGN KEY ("composition.id")
		REFERENCES composition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition_RelatesTo(

	id TEXT PRIMARY KEY,
	"composition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	targetIdentifier "ForeignKey", -- 
	targetReference "ForeignKey", -- 
	FOREIGN KEY ("composition.id")
		REFERENCES composition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition_Event(

	id TEXT PRIMARY KEY,
	"composition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List code,
	"period" "ForeignKey", -- 
	List detail,
	FOREIGN KEY ("composition.id")
		REFERENCES composition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition_Section(

	id TEXT PRIMARY KEY,
	"composition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	title TEXT, -- 
	_title "ForeignKey", -- 
	"code" "ForeignKey", -- 
	List author,
	focus "ForeignKey", -- 
	"text" "ForeignKey", -- 
	mode TEXT, -- 
	_mode "ForeignKey", -- 
	orderedBy "ForeignKey", -- 
	List entry,
	emptyReason "ForeignKey", -- 
	List section,
	FOREIGN KEY ("composition.id")
		REFERENCES composition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap(

	resourceType TEXT, -- resourceType: ConceptMap
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	identifier "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	sourceUri TEXT, -- pattern: ^\S*$
	_sourceUri "ForeignKey", -- 
	sourceCanonical TEXT, -- pattern: ^\S*$
	_sourceCanonical "ForeignKey", -- 
	targetUri TEXT, -- pattern: ^\S*$
	_targetUri "ForeignKey", -- 
	targetCanonical TEXT, -- pattern: ^\S*$
	_targetCanonical "ForeignKey", -- 
	List group,
);

CREATE TABLE conceptMap_Group(

	id TEXT PRIMARY KEY,
	"conceptMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"source" TEXT, -- 
	_source "ForeignKey", -- 
	sourceVersion TEXT, -- 
	_sourceVersion "ForeignKey", -- 
	"target" TEXT, -- 
	_target "ForeignKey", -- 
	targetVersion TEXT, -- 
	_targetVersion "ForeignKey", -- 
	List element,
	unmapped "ForeignKey", -- 
	FOREIGN KEY ("conceptMap.id")
		REFERENCES conceptMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_Element(

	id TEXT PRIMARY KEY,
	"conceptMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	List target,
	FOREIGN KEY ("conceptMap.id")
		REFERENCES conceptMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_Target(

	id TEXT PRIMARY KEY,
	"conceptMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	equivalence TEXT, -- enum: relatedto/equivalent/equal/wider/subsumes/narrower/specializes/inexact/unmatched/disjoint
	_equivalence "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	List dependsOn,
	List product,
	FOREIGN KEY ("conceptMap.id")
		REFERENCES conceptMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_DependsOn(

	id TEXT PRIMARY KEY,
	"conceptMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	property TEXT, -- 
	_property "ForeignKey", -- 
	"system" TEXT, -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	FOREIGN KEY ("conceptMap.id")
		REFERENCES conceptMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_Unmapped(

	id TEXT PRIMARY KEY,
	"conceptMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	mode TEXT, -- enum: provided/fixed/other-map
	_mode "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	"url" TEXT, -- 
	FOREIGN KEY ("conceptMap.id")
		REFERENCES conceptMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE condition(

	resourceType TEXT, -- resourceType: Condition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	clinicalStatus "ForeignKey", -- 
	verificationStatus "ForeignKey", -- 
	List category,
	severity "ForeignKey", -- 
	"code" "ForeignKey", -- 
	List bodySite,
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	onsetDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_onsetDateTime "ForeignKey", -- 
	onsetAge "ForeignKey", -- 
	onsetPeriod "ForeignKey", -- 
	onsetRange "ForeignKey", -- 
	onsetString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_onsetString "ForeignKey", -- 
	abatementDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_abatementDateTime "ForeignKey", -- 
	abatementAge "ForeignKey", -- 
	abatementPeriod "ForeignKey", -- 
	abatementRange "ForeignKey", -- 
	abatementString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_abatementString "ForeignKey", -- 
	recordedDate DATETIME, -- 
	_recordedDate "ForeignKey", -- 
	recorder "ForeignKey", -- 
	asserter "ForeignKey", -- 
	List stage,
	List evidence,
	List note,
);

CREATE TABLE condition_Stage(

	id TEXT PRIMARY KEY,
	"condition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	summary "ForeignKey", -- 
	List assessment,
	"type" "ForeignKey", -- 
	FOREIGN KEY ("condition.id")
		REFERENCES "condition" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE condition_Evidence(

	id TEXT PRIMARY KEY,
	"condition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List code,
	List detail,
	FOREIGN KEY ("condition.id")
		REFERENCES "condition" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent(

	resourceType TEXT, -- resourceType: Consent
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: draft/proposed/active/rejected/inactive/entered-in-error
	_status "ForeignKey", -- 
	"scope" "ForeignKey", -- 
	List category,
	patient "ForeignKey", -- 
	"dateTime" DATETIME, -- 
	_dateTime "ForeignKey", -- 
	List performer,
	List organization,
	sourceAttachment "ForeignKey", -- 
	sourceReference "ForeignKey", -- 
	List policy,
	policyRule "ForeignKey", -- 
	List verification,
	provision "ForeignKey", -- 
);

CREATE TABLE consent_Policy(

	id TEXT PRIMARY KEY,
	"consent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	authority TEXT, -- 
	_authority "ForeignKey", -- 
	uri TEXT, -- 
	_uri "ForeignKey", -- 
	FOREIGN KEY ("consent.id")
		REFERENCES consent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Verification(

	id TEXT PRIMARY KEY,
	"consent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	verified BOOLEAN, -- 
	_verified "ForeignKey", -- 
	verifiedWith "ForeignKey", -- 
	verificationDate DATETIME, -- 
	_verificationDate "ForeignKey", -- 
	FOREIGN KEY ("consent.id")
		REFERENCES consent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Provision(

	id TEXT PRIMARY KEY,
	"consent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: deny/permit
	_type "ForeignKey", -- 
	"period" "ForeignKey", -- 
	List actor,
	List action,
	List securityLabel,
	List purpose,
	List class,
	List code,
	dataPeriod "ForeignKey", -- 
	List data,
	List provision,
	FOREIGN KEY ("consent.id")
		REFERENCES consent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Actor(

	id TEXT PRIMARY KEY,
	"consent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"role" "ForeignKey", -- 
	reference "ForeignKey", -- 
	FOREIGN KEY ("consent.id")
		REFERENCES consent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Data(

	id TEXT PRIMARY KEY,
	"consent.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	meaning TEXT, -- enum: instance/related/dependents/authoredby
	_meaning "ForeignKey", -- 
	reference "ForeignKey", -- 
	FOREIGN KEY ("consent.id")
		REFERENCES consent (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract(

	resourceType TEXT, -- resourceType: Contract
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	legalState "ForeignKey", -- 
	instantiatesCanonical "ForeignKey", -- 
	instantiatesUri TEXT, -- 
	_instantiatesUri "ForeignKey", -- 
	contentDerivative "ForeignKey", -- 
	issued DATETIME, -- 
	_issued "ForeignKey", -- 
	applies "ForeignKey", -- 
	expirationType "ForeignKey", -- 
	List subject,
	List authority,
	List domain,
	List site,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	List alias,
	List _alias,
	author "ForeignKey", -- 
	"scope" "ForeignKey", -- 
	topicCodeableConcept "ForeignKey", -- 
	topicReference "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List subType,
	contentDefinition "ForeignKey", -- 
	List term,
	List supportingInfo,
	List relevantHistory,
	List signer,
	List friendly,
	List legal,
	List rule,
	legallyBindingAttachment "ForeignKey", -- 
	legallyBindingReference "ForeignKey", -- 
);

CREATE TABLE contract_ContentDefinition(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	subType "ForeignKey", -- 
	publisher "ForeignKey", -- 
	publicationDate DATETIME, -- 
	_publicationDate "ForeignKey", -- 
	publicationStatus TEXT, -- 
	_publicationStatus "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Term(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	issued DATETIME, -- 
	_issued "ForeignKey", -- 
	applies "ForeignKey", -- 
	topicCodeableConcept "ForeignKey", -- 
	topicReference "ForeignKey", -- 
	"type" "ForeignKey", -- 
	subType "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	List securityLabel,
	offer "ForeignKey", -- 
	List asset,
	List action,
	List group,
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_SecurityLabel(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List number,
	List _number,
	classification "ForeignKey", -- 
	List category,
	List control,
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Offer(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List identifier,
	List party,
	topic "ForeignKey", -- 
	"type" "ForeignKey", -- 
	decision "ForeignKey", -- 
	List decisionMode,
	List answer,
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	List linkId,
	List _linkId,
	List securityLabelNumber,
	List _securityLabelNumber,
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Party(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List reference,
	"role" "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Answer(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Asset(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"scope" "ForeignKey", -- 
	List type,
	List typeReference,
	List subtype,
	relationship "ForeignKey", -- 
	List context,
	"condition" TEXT, -- 
	_condition "ForeignKey", -- 
	List periodType,
	List period,
	List usePeriod,
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	List linkId,
	List _linkId,
	List answer,
	List securityLabelNumber,
	List _securityLabelNumber,
	List valuedItem,
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Context(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	reference "ForeignKey", -- 
	List code,
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_ValuedItem(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	entityCodeableConcept "ForeignKey", -- 
	entityReference "ForeignKey", -- 
	identifier "ForeignKey", -- 
	effectiveTime DATETIME, -- 
	_effectiveTime "ForeignKey", -- 
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	points REAL, -- 
	_points "ForeignKey", -- 
	net "ForeignKey", -- 
	payment TEXT, -- 
	_payment "ForeignKey", -- 
	paymentDate DATETIME, -- 
	_paymentDate "ForeignKey", -- 
	responsible "ForeignKey", -- 
	recipient "ForeignKey", -- 
	List linkId,
	List _linkId,
	List securityLabelNumber,
	List _securityLabelNumber,
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Action(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	doNotPerform BOOLEAN, -- 
	_doNotPerform "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List subject,
	intent "ForeignKey", -- 
	List linkId,
	List _linkId,
	"status" "ForeignKey", -- 
	context "ForeignKey", -- 
	List contextLinkId,
	List _contextLinkId,
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	occurrenceTiming "ForeignKey", -- 
	List requester,
	List requesterLinkId,
	List _requesterLinkId,
	List performerType,
	performerRole "ForeignKey", -- 
	performer "ForeignKey", -- 
	List performerLinkId,
	List _performerLinkId,
	List reasonCode,
	List reasonReference,
	List reason,
	List _reason,
	List reasonLinkId,
	List _reasonLinkId,
	List note,
	List securityLabelNumber,
	List _securityLabelNumber,
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Subject(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List reference,
	"role" "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Signer(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	party "ForeignKey", -- 
	List signature,
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Friendly(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	contentAttachment "ForeignKey", -- 
	contentReference "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Legal(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	contentAttachment "ForeignKey", -- 
	contentReference "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Rule(

	id TEXT PRIMARY KEY,
	"contract.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	contentAttachment "ForeignKey", -- 
	contentReference "ForeignKey", -- 
	FOREIGN KEY ("contract.id")
		REFERENCES contract (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverage(

	resourceType TEXT, -- resourceType: Coverage
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	policyHolder "ForeignKey", -- 
	subscriber "ForeignKey", -- 
	subscriberId TEXT, -- 
	_subscriberId "ForeignKey", -- 
	beneficiary "ForeignKey", -- 
	dependent TEXT, -- 
	_dependent "ForeignKey", -- 
	relationship "ForeignKey", -- 
	"period" "ForeignKey", -- 
	List payor,
	List class,
	"order" INTEGER, -- 
	_order "ForeignKey", -- 
	network TEXT, -- 
	_network "ForeignKey", -- 
	List costToBeneficiary,
	subrogation BOOLEAN, -- 
	_subrogation "ForeignKey", -- 
	List contract,
);

CREATE TABLE coverage_Class(

	id TEXT PRIMARY KEY,
	"coverage.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	FOREIGN KEY ("coverage.id")
		REFERENCES coverage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverage_CostToBeneficiary(

	id TEXT PRIMARY KEY,
	"coverage.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueMoney "ForeignKey", -- 
	List exception,
	FOREIGN KEY ("coverage.id")
		REFERENCES coverage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverage_Exception(

	id TEXT PRIMARY KEY,
	"coverage.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("coverage.id")
		REFERENCES coverage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest(

	resourceType TEXT, -- resourceType: CoverageEligibilityRequest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"priority" "ForeignKey", -- 
	List purpose,
	List _purpose,
	patient "ForeignKey", -- 
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate "ForeignKey", -- 
	servicedPeriod "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	enterer "ForeignKey", -- 
	"provider" "ForeignKey", -- 
	insurer "ForeignKey", -- 
	facility "ForeignKey", -- 
	List supportingInfo,
	List insurance,
	List item,
);

CREATE TABLE coverageEligibilityRequest_SupportingInfo(

	id TEXT PRIMARY KEY,
	"coverageEligibilityRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	information "ForeignKey", -- 
	appliesToAll BOOLEAN, -- 
	_appliesToAll "ForeignKey", -- 
	FOREIGN KEY ("coverageEligibilityRequest.id")
		REFERENCES coverageEligibilityRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest_Insurance(

	id TEXT PRIMARY KEY,
	"coverageEligibilityRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	focal BOOLEAN, -- 
	_focal "ForeignKey", -- 
	coverage "ForeignKey", -- 
	businessArrangement TEXT, -- 
	_businessArrangement "ForeignKey", -- 
	FOREIGN KEY ("coverageEligibilityRequest.id")
		REFERENCES coverageEligibilityRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest_Item(

	id TEXT PRIMARY KEY,
	"coverageEligibilityRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List supportingInfoSequence,
	List _supportingInfoSequence,
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	"provider" "ForeignKey", -- 
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	facility "ForeignKey", -- 
	List diagnosis,
	List detail,
	FOREIGN KEY ("coverageEligibilityRequest.id")
		REFERENCES coverageEligibilityRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest_Diagnosis(

	id TEXT PRIMARY KEY,
	"coverageEligibilityRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	diagnosisCodeableConcept "ForeignKey", -- 
	diagnosisReference "ForeignKey", -- 
	FOREIGN KEY ("coverageEligibilityRequest.id")
		REFERENCES coverageEligibilityRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse(

	resourceType TEXT, -- resourceType: CoverageEligibilityResponse
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	List purpose,
	List _purpose,
	patient "ForeignKey", -- 
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate "ForeignKey", -- 
	servicedPeriod "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	requestor "ForeignKey", -- 
	request "ForeignKey", -- 
	outcome TEXT, -- enum: queued/complete/error/partial
	_outcome "ForeignKey", -- 
	disposition TEXT, -- 
	_disposition "ForeignKey", -- 
	insurer "ForeignKey", -- 
	List insurance,
	preAuthRef TEXT, -- 
	_preAuthRef "ForeignKey", -- 
	form "ForeignKey", -- 
	List error,
);

CREATE TABLE coverageEligibilityResponse_Insurance(

	id TEXT PRIMARY KEY,
	"coverageEligibilityResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	coverage "ForeignKey", -- 
	inforce BOOLEAN, -- 
	_inforce "ForeignKey", -- 
	benefitPeriod "ForeignKey", -- 
	List item,
	FOREIGN KEY ("coverageEligibilityResponse.id")
		REFERENCES coverageEligibilityResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse_Item(

	id TEXT PRIMARY KEY,
	"coverageEligibilityResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	"provider" "ForeignKey", -- 
	excluded BOOLEAN, -- 
	_excluded "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	network "ForeignKey", -- 
	unit "ForeignKey", -- 
	term "ForeignKey", -- 
	List benefit,
	authorizationRequired BOOLEAN, -- 
	_authorizationRequired "ForeignKey", -- 
	List authorizationSupporting,
	authorizationUrl TEXT, -- 
	_authorizationUrl "ForeignKey", -- 
	FOREIGN KEY ("coverageEligibilityResponse.id")
		REFERENCES coverageEligibilityResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse_Benefit(

	id TEXT PRIMARY KEY,
	"coverageEligibilityResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	allowedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_allowedUnsignedInt "ForeignKey", -- 
	allowedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_allowedString "ForeignKey", -- 
	allowedMoney "ForeignKey", -- 
	usedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_usedUnsignedInt "ForeignKey", -- 
	usedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_usedString "ForeignKey", -- 
	usedMoney "ForeignKey", -- 
	FOREIGN KEY ("coverageEligibilityResponse.id")
		REFERENCES coverageEligibilityResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse_Error(

	id TEXT PRIMARY KEY,
	"coverageEligibilityResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	FOREIGN KEY ("coverageEligibilityResponse.id")
		REFERENCES coverageEligibilityResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE detectedIssue(

	resourceType TEXT, -- resourceType: DetectedIssue
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"code" "ForeignKey", -- 
	severity TEXT, -- enum: high/moderate/low
	_severity "ForeignKey", -- 
	patient "ForeignKey", -- 
	identifiedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_identifiedDateTime "ForeignKey", -- 
	identifiedPeriod "ForeignKey", -- 
	author "ForeignKey", -- 
	List implicated,
	List evidence,
	detail TEXT, -- 
	_detail "ForeignKey", -- 
	reference TEXT, -- 
	_reference "ForeignKey", -- 
	List mitigation,
);

CREATE TABLE detectedIssue_Evidence(

	id TEXT PRIMARY KEY,
	"detectedIssue.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List code,
	List detail,
	FOREIGN KEY ("detectedIssue.id")
		REFERENCES detectedIssue (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE detectedIssue_Mitigation(

	id TEXT PRIMARY KEY,
	"detectedIssue.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"action" "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	author "ForeignKey", -- 
	FOREIGN KEY ("detectedIssue.id")
		REFERENCES detectedIssue (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device(

	resourceType TEXT, -- resourceType: Device
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"definition" "ForeignKey", -- 
	List udiCarrier,
	"status" TEXT, -- enum: active/inactive/entered-in-error/unknown
	_status "ForeignKey", -- 
	List statusReason,
	distinctIdentifier TEXT, -- 
	_distinctIdentifier "ForeignKey", -- 
	manufacturer TEXT, -- 
	_manufacturer "ForeignKey", -- 
	manufactureDate DATETIME, -- 
	_manufactureDate "ForeignKey", -- 
	expirationDate DATETIME, -- 
	_expirationDate "ForeignKey", -- 
	lotNumber TEXT, -- 
	_lotNumber "ForeignKey", -- 
	serialNumber TEXT, -- 
	_serialNumber "ForeignKey", -- 
	List deviceName,
	modelNumber TEXT, -- 
	_modelNumber "ForeignKey", -- 
	partNumber TEXT, -- 
	_partNumber "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List specialization,
	List version,
	List property,
	patient "ForeignKey", -- 
	"owner" "ForeignKey", -- 
	List contact,
	"location" "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List note,
	List safety,
	parent "ForeignKey", -- 
);

CREATE TABLE device_UdiCarrier(

	id TEXT PRIMARY KEY,
	"device.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	deviceIdentifier TEXT, -- 
	_deviceIdentifier "ForeignKey", -- 
	issuer TEXT, -- 
	_issuer "ForeignKey", -- 
	jurisdiction TEXT, -- 
	_jurisdiction "ForeignKey", -- 
	carrierAIDC TEXT, -- 
	_carrierAIDC "ForeignKey", -- 
	carrierHRF TEXT, -- 
	_carrierHRF "ForeignKey", -- 
	entryType TEXT, -- enum: barcode/rfid/manual/card/self-reported/unknown
	_entryType "ForeignKey", -- 
	FOREIGN KEY ("device.id")
		REFERENCES device (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_DeviceName(

	id TEXT PRIMARY KEY,
	"device.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"type" TEXT, -- enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other
	_type "ForeignKey", -- 
	FOREIGN KEY ("device.id")
		REFERENCES device (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_Specialization(

	id TEXT PRIMARY KEY,
	"device.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	systemType "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	FOREIGN KEY ("device.id")
		REFERENCES device (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_Version(

	id TEXT PRIMARY KEY,
	"device.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	component "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("device.id")
		REFERENCES device (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_Property(

	id TEXT PRIMARY KEY,
	"device.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List valueQuantity,
	List valueCode,
	FOREIGN KEY ("device.id")
		REFERENCES device (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition(

	resourceType TEXT, -- resourceType: DeviceDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List udiDeviceIdentifier,
	manufacturerString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_manufacturerString "ForeignKey", -- 
	manufacturerReference "ForeignKey", -- 
	List deviceName,
	modelNumber TEXT, -- 
	_modelNumber "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List specialization,
	List version,
	List _version,
	List safety,
	List shelfLifeStorage,
	physicalCharacteristics "ForeignKey", -- 
	List languageCode,
	List capability,
	List property,
	"owner" "ForeignKey", -- 
	List contact,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	onlineInformation TEXT, -- 
	_onlineInformation "ForeignKey", -- 
	List note,
	quantity "ForeignKey", -- 
	parentDevice "ForeignKey", -- 
	List material,
);

CREATE TABLE deviceDefinition_UdiDeviceIdentifier(

	id TEXT PRIMARY KEY,
	"deviceDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	deviceIdentifier TEXT, -- 
	_deviceIdentifier "ForeignKey", -- 
	issuer TEXT, -- 
	_issuer "ForeignKey", -- 
	jurisdiction TEXT, -- 
	_jurisdiction "ForeignKey", -- 
	FOREIGN KEY ("deviceDefinition.id")
		REFERENCES deviceDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_DeviceName(

	id TEXT PRIMARY KEY,
	"deviceDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"type" TEXT, -- enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other
	_type "ForeignKey", -- 
	FOREIGN KEY ("deviceDefinition.id")
		REFERENCES deviceDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Specialization(

	id TEXT PRIMARY KEY,
	"deviceDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	systemType TEXT, -- 
	_systemType "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	FOREIGN KEY ("deviceDefinition.id")
		REFERENCES deviceDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Capability(

	id TEXT PRIMARY KEY,
	"deviceDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List description,
	FOREIGN KEY ("deviceDefinition.id")
		REFERENCES deviceDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Property(

	id TEXT PRIMARY KEY,
	"deviceDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List valueQuantity,
	List valueCode,
	FOREIGN KEY ("deviceDefinition.id")
		REFERENCES deviceDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Material(

	id TEXT PRIMARY KEY,
	"deviceDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	substance "ForeignKey", -- 
	alternate BOOLEAN, -- 
	_alternate "ForeignKey", -- 
	allergenicIndicator BOOLEAN, -- 
	_allergenicIndicator "ForeignKey", -- 
	FOREIGN KEY ("deviceDefinition.id")
		REFERENCES deviceDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceMetric(

	resourceType TEXT, -- resourceType: DeviceMetric
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"type" "ForeignKey", -- 
	unit "ForeignKey", -- 
	"source" "ForeignKey", -- 
	parent "ForeignKey", -- 
	operationalStatus TEXT, -- enum: on/off/standby/entered-in-error
	_operationalStatus "ForeignKey", -- 
	color TEXT, -- enum: black/red/green/yellow/blue/magenta/cyan/white
	_color "ForeignKey", -- 
	category TEXT, -- enum: measurement/setting/calculation/unspecified
	_category "ForeignKey", -- 
	measurementPeriod "ForeignKey", -- 
	List calibration,
);

CREATE TABLE deviceMetric_Calibration(

	id TEXT PRIMARY KEY,
	"deviceMetric.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: unspecified/offset/gain/two-point
	_type "ForeignKey", -- 
	state TEXT, -- enum: not-calibrated/calibration-required/calibrated/unspecified
	_state "ForeignKey", -- 
	"time" DATETIME, -- 
	_time "ForeignKey", -- 
	FOREIGN KEY ("deviceMetric.id")
		REFERENCES deviceMetric (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceRequest(

	resourceType TEXT, -- resourceType: DeviceRequest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List basedOn,
	List priorRequest,
	groupIdentifier "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	intent TEXT, -- 
	_intent "ForeignKey", -- 
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	codeReference "ForeignKey", -- 
	codeCodeableConcept "ForeignKey", -- 
	List parameter,
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	occurrenceTiming "ForeignKey", -- 
	authoredOn DATETIME, -- 
	_authoredOn "ForeignKey", -- 
	requester "ForeignKey", -- 
	performerType "ForeignKey", -- 
	performer "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List insurance,
	List supportingInfo,
	List note,
	List relevantHistory,
);

CREATE TABLE deviceRequest_Parameter(

	id TEXT PRIMARY KEY,
	"deviceRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	FOREIGN KEY ("deviceRequest.id")
		REFERENCES deviceRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceUseStatement(

	resourceType TEXT, -- resourceType: DeviceUseStatement
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List basedOn,
	"status" TEXT, -- enum: active/completed/entered-in-error/intended/stopped/on-hold
	_status "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	List derivedFrom,
	timingTiming "ForeignKey", -- 
	timingPeriod "ForeignKey", -- 
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime "ForeignKey", -- 
	recordedOn DATETIME, -- 
	_recordedOn "ForeignKey", -- 
	"source" "ForeignKey", -- 
	device "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	bodySite "ForeignKey", -- 
	List note,
);

CREATE TABLE diagnosticReport(

	resourceType TEXT, -- resourceType: DiagnosticReport
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List basedOn,
	"status" TEXT, -- enum: registered/partial/preliminary/final/amended/corrected/appended/cancelled/entered-in-error/unknown
	_status "ForeignKey", -- 
	List category,
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	issued DATETIME, -- 
	_issued "ForeignKey", -- 
	List performer,
	List resultsInterpreter,
	List specimen,
	List result,
	List imagingStudy,
	List media,
	conclusion TEXT, -- 
	_conclusion "ForeignKey", -- 
	List conclusionCode,
	List presentedForm,
);

CREATE TABLE diagnosticReport_Media(

	id TEXT PRIMARY KEY,
	"diagnosticReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	link "ForeignKey", -- 
	FOREIGN KEY ("diagnosticReport.id")
		REFERENCES diagnosticReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentManifest(

	resourceType TEXT, -- resourceType: DocumentManifest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	masterIdentifier "ForeignKey", -- 
	List identifier,
	"status" TEXT, -- enum: current/superseded/entered-in-error
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	List author,
	List recipient,
	"source" TEXT, -- 
	_source "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List content,
	List related,
);

CREATE TABLE documentManifest_Related(

	id TEXT PRIMARY KEY,
	"documentManifest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	ref "ForeignKey", -- 
	FOREIGN KEY ("documentManifest.id")
		REFERENCES documentManifest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentReference(

	resourceType TEXT, -- resourceType: DocumentReference
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	masterIdentifier "ForeignKey", -- 
	List identifier,
	"status" TEXT, -- enum: current/superseded/entered-in-error
	_status "ForeignKey", -- 
	docStatus TEXT, -- 
	_docStatus "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List category,
	"subject" "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	List author,
	authenticator "ForeignKey", -- 
	custodian "ForeignKey", -- 
	List relatesTo,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List securityLabel,
	List content,
	context "ForeignKey", -- 
);

CREATE TABLE documentReference_RelatesTo(

	id TEXT PRIMARY KEY,
	"documentReference.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- enum: replaces/transforms/signs/appends
	_code "ForeignKey", -- 
	"target" "ForeignKey", -- 
	FOREIGN KEY ("documentReference.id")
		REFERENCES documentReference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentReference_Content(

	id TEXT PRIMARY KEY,
	"documentReference.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	attachment "ForeignKey", -- 
	format "ForeignKey", -- 
	FOREIGN KEY ("documentReference.id")
		REFERENCES documentReference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentReference_Context(

	id TEXT PRIMARY KEY,
	"documentReference.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List encounter,
	List event,
	"period" "ForeignKey", -- 
	facilityType "ForeignKey", -- 
	practiceSetting "ForeignKey", -- 
	sourcePatientInfo "ForeignKey", -- 
	List related,
	FOREIGN KEY ("documentReference.id")
		REFERENCES documentReference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis(

	resourceType TEXT, -- resourceType: EffectEvidenceSynthesis
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List note,
	List useContext,
	List jurisdiction,
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	synthesisType "ForeignKey", -- 
	studyType "ForeignKey", -- 
	"population" "ForeignKey", -- 
	exposure "ForeignKey", -- 
	exposureAlternative "ForeignKey", -- 
	outcome "ForeignKey", -- 
	sampleSize "ForeignKey", -- 
	List resultsByExposure,
	List effectEstimate,
	List certainty,
);

CREATE TABLE effectEvidenceSynthesis_SampleSize(

	id TEXT PRIMARY KEY,
	"effectEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	numberOfStudies INTEGER, -- 
	_numberOfStudies "ForeignKey", -- 
	numberOfParticipants INTEGER, -- 
	_numberOfParticipants "ForeignKey", -- 
	FOREIGN KEY ("effectEvidenceSynthesis.id")
		REFERENCES effectEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_ResultsByExposure(

	id TEXT PRIMARY KEY,
	"effectEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	exposureState TEXT, -- enum: exposure/exposure-alternative
	_exposureState "ForeignKey", -- 
	variantState "ForeignKey", -- 
	riskEvidenceSynthesis "ForeignKey", -- 
	FOREIGN KEY ("effectEvidenceSynthesis.id")
		REFERENCES effectEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_EffectEstimate(

	id TEXT PRIMARY KEY,
	"effectEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"type" "ForeignKey", -- 
	variantState "ForeignKey", -- 
	"value" REAL, -- 
	_value "ForeignKey", -- 
	unitOfMeasure "ForeignKey", -- 
	List precisionEstimate,
	FOREIGN KEY ("effectEvidenceSynthesis.id")
		REFERENCES effectEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_PrecisionEstimate(

	id TEXT PRIMARY KEY,
	"effectEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	"level" REAL, -- 
	_level "ForeignKey", -- 
	"from" REAL, -- 
	_from "ForeignKey", -- 
	"to" REAL, -- 
	_to "ForeignKey", -- 
	FOREIGN KEY ("effectEvidenceSynthesis.id")
		REFERENCES effectEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_Certainty(

	id TEXT PRIMARY KEY,
	"effectEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List rating,
	List note,
	List certaintySubcomponent,
	FOREIGN KEY ("effectEvidenceSynthesis.id")
		REFERENCES effectEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_CertaintySubcomponent(

	id TEXT PRIMARY KEY,
	"effectEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List rating,
	List note,
	FOREIGN KEY ("effectEvidenceSynthesis.id")
		REFERENCES effectEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter(

	resourceType TEXT, -- resourceType: Encounter
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown
	_status "ForeignKey", -- 
	List statusHistory,
	class "ForeignKey", -- 
	List classHistory,
	List type,
	serviceType "ForeignKey", -- 
	"priority" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	List episodeOfCare,
	List basedOn,
	List participant,
	List appointment,
	"period" "ForeignKey", -- 
	"length" "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List diagnosis,
	List account,
	hospitalization "ForeignKey", -- 
	List location,
	serviceProvider "ForeignKey", -- 
	partOf "ForeignKey", -- 
);

CREATE TABLE encounter_StatusHistory(

	id TEXT PRIMARY KEY,
	"encounter.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"status" TEXT, -- enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown
	_status "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("encounter.id")
		REFERENCES encounter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_ClassHistory(

	id TEXT PRIMARY KEY,
	"encounter.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	class "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("encounter.id")
		REFERENCES encounter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Participant(

	id TEXT PRIMARY KEY,
	"encounter.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List type,
	"period" "ForeignKey", -- 
	individual "ForeignKey", -- 
	FOREIGN KEY ("encounter.id")
		REFERENCES encounter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Diagnosis(

	id TEXT PRIMARY KEY,
	"encounter.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"condition" "ForeignKey", -- 
	"use" "ForeignKey", -- 
	"rank" INTEGER, -- 
	_rank "ForeignKey", -- 
	FOREIGN KEY ("encounter.id")
		REFERENCES encounter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Hospitalization(

	id TEXT PRIMARY KEY,
	"encounter.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	preAdmissionIdentifier "ForeignKey", -- 
	origin "ForeignKey", -- 
	admitSource "ForeignKey", -- 
	reAdmission "ForeignKey", -- 
	List dietPreference,
	List specialCourtesy,
	List specialArrangement,
	destination "ForeignKey", -- 
	dischargeDisposition "ForeignKey", -- 
	FOREIGN KEY ("encounter.id")
		REFERENCES encounter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Location(

	id TEXT PRIMARY KEY,
	"encounter.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"location" "ForeignKey", -- 
	"status" TEXT, -- enum: planned/active/reserved/completed
	_status "ForeignKey", -- 
	physicalType "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("encounter.id")
		REFERENCES encounter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE endpoint(

	resourceType TEXT, -- resourceType: Endpoint
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: active/suspended/error/off/entered-in-error/test
	_status "ForeignKey", -- 
	connectionType "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	managingOrganization "ForeignKey", -- 
	List contact,
	"period" "ForeignKey", -- 
	List payloadType,
	List payloadMimeType,
	List _payloadMimeType,
	"address" TEXT, -- 
	_address "ForeignKey", -- 
	List header,
	List _header,
);

CREATE TABLE enrollmentRequest(

	resourceType TEXT, -- resourceType: EnrollmentRequest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	insurer "ForeignKey", -- 
	"provider" "ForeignKey", -- 
	candidate "ForeignKey", -- 
	coverage "ForeignKey", -- 
);

CREATE TABLE enrollmentResponse(

	resourceType TEXT, -- resourceType: EnrollmentResponse
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	request "ForeignKey", -- 
	outcome TEXT, -- enum: queued/complete/error/partial
	_outcome "ForeignKey", -- 
	disposition TEXT, -- 
	_disposition "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	organization "ForeignKey", -- 
	requestProvider "ForeignKey", -- 
);

CREATE TABLE episodeOfCare(

	resourceType TEXT, -- resourceType: EpisodeOfCare
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error
	_status "ForeignKey", -- 
	List statusHistory,
	List type,
	List diagnosis,
	patient "ForeignKey", -- 
	managingOrganization "ForeignKey", -- 
	"period" "ForeignKey", -- 
	List referralRequest,
	careManager "ForeignKey", -- 
	List team,
	List account,
);

CREATE TABLE episodeOfCare_StatusHistory(

	id TEXT PRIMARY KEY,
	"episodeOfCare.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"status" TEXT, -- enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error
	_status "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("episodeOfCare.id")
		REFERENCES episodeOfCare (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE episodeOfCare_Diagnosis(

	id TEXT PRIMARY KEY,
	"episodeOfCare.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"condition" "ForeignKey", -- 
	"role" "ForeignKey", -- 
	"rank" INTEGER, -- 
	_rank "ForeignKey", -- 
	FOREIGN KEY ("episodeOfCare.id")
		REFERENCES episodeOfCare (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE eventDefinition(

	resourceType TEXT, -- resourceType: EventDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	List trigger,
);

CREATE TABLE evidence(

	resourceType TEXT, -- resourceType: Evidence
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	shortTitle TEXT, -- 
	_shortTitle "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List note,
	List useContext,
	List jurisdiction,
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	exposureBackground "ForeignKey", -- 
	List exposureVariant,
	List outcome,
);

CREATE TABLE evidenceVariable(

	resourceType TEXT, -- resourceType: EvidenceVariable
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	shortTitle TEXT, -- 
	_shortTitle "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List note,
	List useContext,
	List jurisdiction,
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	"type" TEXT, -- enum: dichotomous/continuous/descriptive
	_type "ForeignKey", -- 
	List characteristic,
);

CREATE TABLE evidenceVariable_Characteristic(

	id TEXT PRIMARY KEY,
	"evidenceVariable.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	definitionReference "ForeignKey", -- 
	definitionCanonical TEXT, -- pattern: ^\S*$
	_definitionCanonical "ForeignKey", -- 
	definitionCodeableConcept "ForeignKey", -- 
	definitionExpression "ForeignKey", -- 
	definitionDataRequirement "ForeignKey", -- 
	definitionTriggerDefinition "ForeignKey", -- 
	List usageContext,
	exclude BOOLEAN, -- 
	_exclude "ForeignKey", -- 
	participantEffectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_participantEffectiveDateTime "ForeignKey", -- 
	participantEffectivePeriod "ForeignKey", -- 
	participantEffectiveDuration "ForeignKey", -- 
	participantEffectiveTiming "ForeignKey", -- 
	timeFromStart "ForeignKey", -- 
	groupMeasure TEXT, -- enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_groupMeasure "ForeignKey", -- 
	FOREIGN KEY ("evidenceVariable.id")
		REFERENCES evidenceVariable (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario(

	resourceType TEXT, -- resourceType: ExampleScenario
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	List useContext,
	List jurisdiction,
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	List actor,
	List instance,
	List process,
	List workflow,
);

CREATE TABLE exampleScenario_Actor(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	actorId TEXT, -- 
	_actorId "ForeignKey", -- 
	"type" TEXT, -- enum: person/entity
	_type "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Instance(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	resourceId TEXT, -- 
	_resourceId "ForeignKey", -- 
	resourceType TEXT, -- 
	_resourceType "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List version,
	List containedInstance,
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Version(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	versionId TEXT, -- 
	_versionId "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_ContainedInstance(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	resourceId TEXT, -- 
	_resourceId "ForeignKey", -- 
	versionId TEXT, -- 
	_versionId "ForeignKey", -- 
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Process(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	title TEXT, -- 
	_title "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	preConditions TEXT, -- 
	_preConditions "ForeignKey", -- 
	postConditions TEXT, -- 
	_postConditions "ForeignKey", -- 
	List step,
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Step(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List process,
	pause BOOLEAN, -- 
	_pause "ForeignKey", -- 
	operation "ForeignKey", -- 
	List alternative,
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Operation(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	number TEXT, -- 
	_number "ForeignKey", -- 
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	initiator TEXT, -- 
	_initiator "ForeignKey", -- 
	receiver TEXT, -- 
	_receiver "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	initiatorActive BOOLEAN, -- 
	_initiatorActive "ForeignKey", -- 
	receiverActive BOOLEAN, -- 
	_receiverActive "ForeignKey", -- 
	request "ForeignKey", -- 
	response "ForeignKey", -- 
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Alternative(

	id TEXT PRIMARY KEY,
	"exampleScenario.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	title TEXT, -- 
	_title "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List step,
	FOREIGN KEY ("exampleScenario.id")
		REFERENCES exampleScenario (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit(

	resourceType TEXT, -- resourceType: ExplanationOfBenefit
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: active/cancelled/draft/entered-in-error
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	subType "ForeignKey", -- 
	"use" TEXT, -- 
	_use "ForeignKey", -- 
	patient "ForeignKey", -- 
	billablePeriod "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	enterer "ForeignKey", -- 
	insurer "ForeignKey", -- 
	"provider" "ForeignKey", -- 
	"priority" "ForeignKey", -- 
	fundsReserveRequested "ForeignKey", -- 
	fundsReserve "ForeignKey", -- 
	List related,
	prescription "ForeignKey", -- 
	originalPrescription "ForeignKey", -- 
	payee "ForeignKey", -- 
	referral "ForeignKey", -- 
	facility "ForeignKey", -- 
	claim "ForeignKey", -- 
	claimResponse "ForeignKey", -- 
	outcome TEXT, -- 
	_outcome "ForeignKey", -- 
	disposition TEXT, -- 
	_disposition "ForeignKey", -- 
	List preAuthRef,
	List _preAuthRef,
	List preAuthRefPeriod,
	List careTeam,
	List supportingInfo,
	List diagnosis,
	List procedure,
	precedence INTEGER, -- 
	_precedence "ForeignKey", -- 
	List insurance,
	accident "ForeignKey", -- 
	List item,
	List addItem,
	List adjudication,
	List total,
	payment "ForeignKey", -- 
	formCode "ForeignKey", -- 
	form "ForeignKey", -- 
	List processNote,
	benefitPeriod "ForeignKey", -- 
	List benefitBalance,
);

CREATE TABLE explanationOfBenefit_Related(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	claim "ForeignKey", -- 
	relationship "ForeignKey", -- 
	reference "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Payee(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	party "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_CareTeam(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	"provider" "ForeignKey", -- 
	responsible BOOLEAN, -- 
	_responsible "ForeignKey", -- 
	"role" "ForeignKey", -- 
	qualification "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_SupportingInfo(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	category "ForeignKey", -- 
	"code" "ForeignKey", -- 
	timingDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_timingDate "ForeignKey", -- 
	timingPeriod "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	reason "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Diagnosis(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	diagnosisCodeableConcept "ForeignKey", -- 
	diagnosisReference "ForeignKey", -- 
	List type,
	onAdmission "ForeignKey", -- 
	packageCode "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Procedure(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	List type,
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	procedureCodeableConcept "ForeignKey", -- 
	procedureReference "ForeignKey", -- 
	List udi,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Insurance(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	focal BOOLEAN, -- 
	_focal "ForeignKey", -- 
	coverage "ForeignKey", -- 
	List preAuthRef,
	List _preAuthRef,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Accident(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"date" DATE, -- 
	_date "ForeignKey", -- 
	"type" "ForeignKey", -- 
	locationAddress "ForeignKey", -- 
	locationReference "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Item(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	List careTeamSequence,
	List _careTeamSequence,
	List diagnosisSequence,
	List _diagnosisSequence,
	List procedureSequence,
	List _procedureSequence,
	List informationSequence,
	List _informationSequence,
	revenue "ForeignKey", -- 
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate "ForeignKey", -- 
	servicedPeriod "ForeignKey", -- 
	locationCodeableConcept "ForeignKey", -- 
	locationAddress "ForeignKey", -- 
	locationReference "ForeignKey", -- 
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List udi,
	bodySite "ForeignKey", -- 
	List subSite,
	List encounter,
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List detail,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Adjudication(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	reason "ForeignKey", -- 
	amount "ForeignKey", -- 
	"value" REAL, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Detail(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	revenue "ForeignKey", -- 
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List udi,
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List subDetail,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_SubDetail(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	revenue "ForeignKey", -- 
	category "ForeignKey", -- 
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List udi,
	List noteNumber,
	List _noteNumber,
	List adjudication,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_AddItem(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List itemSequence,
	List _itemSequence,
	List detailSequence,
	List _detailSequence,
	List subDetailSequence,
	List _subDetailSequence,
	List provider,
	productOrService "ForeignKey", -- 
	List modifier,
	List programCode,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate "ForeignKey", -- 
	servicedPeriod "ForeignKey", -- 
	locationCodeableConcept "ForeignKey", -- 
	locationAddress "ForeignKey", -- 
	locationReference "ForeignKey", -- 
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	bodySite "ForeignKey", -- 
	List subSite,
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List detail,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Detail1(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	productOrService "ForeignKey", -- 
	List modifier,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List noteNumber,
	List _noteNumber,
	List adjudication,
	List subDetail,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_SubDetail1(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	productOrService "ForeignKey", -- 
	List modifier,
	quantity "ForeignKey", -- 
	unitPrice "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	net "ForeignKey", -- 
	List noteNumber,
	List _noteNumber,
	List adjudication,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Total(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Payment(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	adjustment "ForeignKey", -- 
	adjustmentReason "ForeignKey", -- 
	"date" DATE, -- 
	_date "ForeignKey", -- 
	amount "ForeignKey", -- 
	identifier "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_ProcessNote(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	number INTEGER, -- 
	_number "ForeignKey", -- 
	"type" TEXT, -- enum: display/print/printoper
	_type "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	"language" "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_BenefitBalance(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	excluded BOOLEAN, -- 
	_excluded "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	network "ForeignKey", -- 
	unit "ForeignKey", -- 
	term "ForeignKey", -- 
	List financial,
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Financial(

	id TEXT PRIMARY KEY,
	"explanationOfBenefit.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	allowedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_allowedUnsignedInt "ForeignKey", -- 
	allowedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_allowedString "ForeignKey", -- 
	allowedMoney "ForeignKey", -- 
	usedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_usedUnsignedInt "ForeignKey", -- 
	usedMoney "ForeignKey", -- 
	FOREIGN KEY ("explanationOfBenefit.id")
		REFERENCES explanationOfBenefit (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE familyMemberHistory(

	resourceType TEXT, -- resourceType: FamilyMemberHistory
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	"status" TEXT, -- enum: partial/completed/entered-in-error/health-unknown
	_status "ForeignKey", -- 
	dataAbsentReason "ForeignKey", -- 
	patient "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	relationship "ForeignKey", -- 
	sex "ForeignKey", -- 
	bornPeriod "ForeignKey", -- 
	bornDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_bornDate "ForeignKey", -- 
	bornString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_bornString "ForeignKey", -- 
	ageAge "ForeignKey", -- 
	ageRange "ForeignKey", -- 
	ageString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_ageString "ForeignKey", -- 
	estimatedAge BOOLEAN, -- 
	_estimatedAge "ForeignKey", -- 
	deceasedBoolean BOOLEAN, -- pattern: ^true|false$
	_deceasedBoolean "ForeignKey", -- 
	deceasedAge "ForeignKey", -- 
	deceasedRange "ForeignKey", -- 
	deceasedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_deceasedDate "ForeignKey", -- 
	deceasedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_deceasedString "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List note,
	List condition,
);

CREATE TABLE familyMemberHistory_Condition(

	id TEXT PRIMARY KEY,
	"familyMemberHistory.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	outcome "ForeignKey", -- 
	contributedToDeath BOOLEAN, -- 
	_contributedToDeath "ForeignKey", -- 
	onsetAge "ForeignKey", -- 
	onsetRange "ForeignKey", -- 
	onsetPeriod "ForeignKey", -- 
	onsetString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_onsetString "ForeignKey", -- 
	List note,
	FOREIGN KEY ("familyMemberHistory.id")
		REFERENCES familyMemberHistory (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE flag(

	resourceType TEXT, -- resourceType: Flag
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: active/inactive/entered-in-error
	_status "ForeignKey", -- 
	List category,
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	"period" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	author "ForeignKey", -- 
);

CREATE TABLE goal(

	resourceType TEXT, -- resourceType: Goal
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	lifecycleStatus TEXT, -- enum: proposed/planned/accepted/active/on-hold/completed/cancelled/entered-in-error/rejected
	_lifecycleStatus "ForeignKey", -- 
	achievementStatus "ForeignKey", -- 
	List category,
	"priority" "ForeignKey", -- 
	"description" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	startDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_startDate "ForeignKey", -- 
	startCodeableConcept "ForeignKey", -- 
	List target,
	statusDate DATE, -- 
	_statusDate "ForeignKey", -- 
	statusReason TEXT, -- 
	_statusReason "ForeignKey", -- 
	expressedBy "ForeignKey", -- 
	List addresses,
	List note,
	List outcomeCode,
	List outcomeReference,
);

CREATE TABLE goal_Target(

	id TEXT PRIMARY KEY,
	"goal.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	measure "ForeignKey", -- 
	detailQuantity "ForeignKey", -- 
	detailRange "ForeignKey", -- 
	detailCodeableConcept "ForeignKey", -- 
	detailString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_detailString "ForeignKey", -- 
	detailBoolean BOOLEAN, -- pattern: ^true|false$
	_detailBoolean "ForeignKey", -- 
	detailInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_detailInteger "ForeignKey", -- 
	detailRatio "ForeignKey", -- 
	dueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_dueDate "ForeignKey", -- 
	dueDuration "ForeignKey", -- 
	FOREIGN KEY ("goal.id")
		REFERENCES goal (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE graphDefinition(

	resourceType TEXT, -- resourceType: GraphDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"start" TEXT, -- 
	_start "ForeignKey", -- 
	"profile" TEXT, -- 
	List link,
);

CREATE TABLE graphDefinition_Link(

	id TEXT PRIMARY KEY,
	"graphDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	sliceName TEXT, -- 
	_sliceName "ForeignKey", -- 
	"min" INTEGER, -- 
	_min "ForeignKey", -- 
	"max" TEXT, -- 
	_max "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List target,
	FOREIGN KEY ("graphDefinition.id")
		REFERENCES graphDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE graphDefinition_Target(

	id TEXT PRIMARY KEY,
	"graphDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	params TEXT, -- 
	_params "ForeignKey", -- 
	"profile" TEXT, -- 
	List compartment,
	List link,
	FOREIGN KEY ("graphDefinition.id")
		REFERENCES graphDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE graphDefinition_Compartment(

	id TEXT PRIMARY KEY,
	"graphDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"use" TEXT, -- enum: condition/requirement
	_use "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	"rule" TEXT, -- enum: identical/matching/different/custom
	_rule "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("graphDefinition.id")
		REFERENCES graphDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE group(

	resourceType TEXT, -- resourceType: Group
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	"type" TEXT, -- enum: person/animal/practitioner/device/medication/substance
	_type "ForeignKey", -- 
	actual BOOLEAN, -- 
	_actual "ForeignKey", -- 
	"code" "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	quantity INTEGER, -- 
	_quantity "ForeignKey", -- 
	managingEntity "ForeignKey", -- 
	List characteristic,
	List member,
);

CREATE TABLE group_Characteristic(

	id TEXT PRIMARY KEY,
	"group.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	exclude BOOLEAN, -- 
	_exclude "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("group.id")
		REFERENCES "group" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE group_Member(

	id TEXT PRIMARY KEY,
	"group.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	entity "ForeignKey", -- 
	"period" "ForeignKey", -- 
	inactive BOOLEAN, -- 
	_inactive "ForeignKey", -- 
	FOREIGN KEY ("group.id")
		REFERENCES "group" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE guidanceResponse(

	resourceType TEXT, -- resourceType: GuidanceResponse
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	requestIdentifier "ForeignKey", -- 
	List identifier,
	moduleUri TEXT, -- pattern: ^\S*$
	_moduleUri "ForeignKey", -- 
	moduleCanonical TEXT, -- pattern: ^\S*$
	_moduleCanonical "ForeignKey", -- 
	moduleCodeableConcept "ForeignKey", -- 
	"status" TEXT, -- enum: success/data-requested/data-required/in-progress/failure/entered-in-error
	_status "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	occurrenceDateTime DATETIME, -- 
	_occurrenceDateTime "ForeignKey", -- 
	performer "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List note,
	List evaluationMessage,
	outputParameters "ForeignKey", -- 
	"result" "ForeignKey", -- 
	List dataRequirement,
);

CREATE TABLE healthcareService(

	resourceType TEXT, -- resourceType: HealthcareService
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	providedBy "ForeignKey", -- 
	List category,
	List type,
	List specialty,
	List location,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	extraDetails TEXT, -- 
	_extraDetails "ForeignKey", -- 
	photo "ForeignKey", -- 
	List telecom,
	List coverageArea,
	List serviceProvisionCode,
	List eligibility,
	List program,
	List characteristic,
	List communication,
	List referralMethod,
	appointmentRequired BOOLEAN, -- 
	_appointmentRequired "ForeignKey", -- 
	List availableTime,
	List notAvailable,
	availabilityExceptions TEXT, -- 
	_availabilityExceptions "ForeignKey", -- 
	List endpoint,
);

CREATE TABLE healthcareService_Eligibility(

	id TEXT PRIMARY KEY,
	"healthcareService.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	FOREIGN KEY ("healthcareService.id")
		REFERENCES healthcareService (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE healthcareService_AvailableTime(

	id TEXT PRIMARY KEY,
	"healthcareService.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List daysOfWeek,
	List _daysOfWeek,
	allDay BOOLEAN, -- 
	_allDay "ForeignKey", -- 
	availableStartTime TIME, -- 
	_availableStartTime "ForeignKey", -- 
	availableEndTime TIME, -- 
	_availableEndTime "ForeignKey", -- 
	FOREIGN KEY ("healthcareService.id")
		REFERENCES healthcareService (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE healthcareService_NotAvailable(

	id TEXT PRIMARY KEY,
	"healthcareService.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	during "ForeignKey", -- 
	FOREIGN KEY ("healthcareService.id")
		REFERENCES healthcareService (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE imagingStudy(

	resourceType TEXT, -- resourceType: ImagingStudy
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: registered/available/cancelled/entered-in-error/unknown
	_status "ForeignKey", -- 
	List modality,
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	"started" DATETIME, -- 
	_started "ForeignKey", -- 
	List basedOn,
	referrer "ForeignKey", -- 
	List interpreter,
	List endpoint,
	numberOfSeries INTEGER, -- 
	_numberOfSeries "ForeignKey", -- 
	numberOfInstances INTEGER, -- 
	_numberOfInstances "ForeignKey", -- 
	procedureReference "ForeignKey", -- 
	List procedureCode,
	"location" "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List note,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List series,
);

CREATE TABLE imagingStudy_Series(

	id TEXT PRIMARY KEY,
	"imagingStudy.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	uid TEXT, -- 
	_uid "ForeignKey", -- 
	number INTEGER, -- 
	_number "ForeignKey", -- 
	modality "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	numberOfInstances INTEGER, -- 
	_numberOfInstances "ForeignKey", -- 
	List endpoint,
	bodySite "ForeignKey", -- 
	laterality "ForeignKey", -- 
	List specimen,
	"started" DATETIME, -- 
	_started "ForeignKey", -- 
	List performer,
	List instance,
	FOREIGN KEY ("imagingStudy.id")
		REFERENCES imagingStudy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE imagingStudy_Performer(

	id TEXT PRIMARY KEY,
	"imagingStudy.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"function" "ForeignKey", -- 
	actor "ForeignKey", -- 
	FOREIGN KEY ("imagingStudy.id")
		REFERENCES imagingStudy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE imagingStudy_Instance(

	id TEXT PRIMARY KEY,
	"imagingStudy.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	uid TEXT, -- 
	_uid "ForeignKey", -- 
	sopClass "ForeignKey", -- 
	number INTEGER, -- 
	_number "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	FOREIGN KEY ("imagingStudy.id")
		REFERENCES imagingStudy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization(

	resourceType TEXT, -- resourceType: Immunization
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	vaccineCode "ForeignKey", -- 
	patient "ForeignKey", -- 
	encounter "ForeignKey", -- 
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrenceString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_occurrenceString "ForeignKey", -- 
	recorded DATETIME, -- 
	_recorded "ForeignKey", -- 
	primarySource BOOLEAN, -- 
	_primarySource "ForeignKey", -- 
	reportOrigin "ForeignKey", -- 
	"location" "ForeignKey", -- 
	manufacturer "ForeignKey", -- 
	lotNumber TEXT, -- 
	_lotNumber "ForeignKey", -- 
	expirationDate DATE, -- 
	_expirationDate "ForeignKey", -- 
	"site" "ForeignKey", -- 
	route "ForeignKey", -- 
	doseQuantity "ForeignKey", -- 
	List performer,
	List note,
	List reasonCode,
	List reasonReference,
	isSubpotent BOOLEAN, -- 
	_isSubpotent "ForeignKey", -- 
	List subpotentReason,
	List education,
	List programEligibility,
	fundingSource "ForeignKey", -- 
	List reaction,
	List protocolApplied,
);

CREATE TABLE immunization_Performer(

	id TEXT PRIMARY KEY,
	"immunization.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"function" "ForeignKey", -- 
	actor "ForeignKey", -- 
	FOREIGN KEY ("immunization.id")
		REFERENCES immunization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization_Education(

	id TEXT PRIMARY KEY,
	"immunization.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	documentType TEXT, -- 
	_documentType "ForeignKey", -- 
	reference TEXT, -- 
	_reference "ForeignKey", -- 
	publicationDate DATETIME, -- 
	_publicationDate "ForeignKey", -- 
	presentationDate DATETIME, -- 
	_presentationDate "ForeignKey", -- 
	FOREIGN KEY ("immunization.id")
		REFERENCES immunization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization_Reaction(

	id TEXT PRIMARY KEY,
	"immunization.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	detail "ForeignKey", -- 
	reported BOOLEAN, -- 
	_reported "ForeignKey", -- 
	FOREIGN KEY ("immunization.id")
		REFERENCES immunization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization_ProtocolApplied(

	id TEXT PRIMARY KEY,
	"immunization.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	series TEXT, -- 
	_series "ForeignKey", -- 
	authority "ForeignKey", -- 
	List targetDisease,
	doseNumberPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_doseNumberPositiveInt "ForeignKey", -- 
	doseNumberString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_doseNumberString "ForeignKey", -- 
	seriesDosesPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_seriesDosesPositiveInt "ForeignKey", -- 
	seriesDosesString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_seriesDosesString "ForeignKey", -- 
	FOREIGN KEY ("immunization.id")
		REFERENCES immunization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunizationEvaluation(

	resourceType TEXT, -- resourceType: ImmunizationEvaluation
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	patient "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	authority "ForeignKey", -- 
	targetDisease "ForeignKey", -- 
	immunizationEvent "ForeignKey", -- 
	doseStatus "ForeignKey", -- 
	List doseStatusReason,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	series TEXT, -- 
	_series "ForeignKey", -- 
	doseNumberPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_doseNumberPositiveInt "ForeignKey", -- 
	doseNumberString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_doseNumberString "ForeignKey", -- 
	seriesDosesPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_seriesDosesPositiveInt "ForeignKey", -- 
	seriesDosesString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_seriesDosesString "ForeignKey", -- 
);

CREATE TABLE immunizationRecommendation(

	resourceType TEXT, -- resourceType: ImmunizationRecommendation
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	patient "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	authority "ForeignKey", -- 
	List recommendation,
);

CREATE TABLE immunizationRecommendation_Recommendation(

	id TEXT PRIMARY KEY,
	"immunizationRecommendation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List vaccineCode,
	targetDisease "ForeignKey", -- 
	List contraindicatedVaccineCode,
	forecastStatus "ForeignKey", -- 
	List forecastReason,
	List dateCriterion,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	series TEXT, -- 
	_series "ForeignKey", -- 
	doseNumberPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_doseNumberPositiveInt "ForeignKey", -- 
	doseNumberString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_doseNumberString "ForeignKey", -- 
	seriesDosesPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_seriesDosesPositiveInt "ForeignKey", -- 
	seriesDosesString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_seriesDosesString "ForeignKey", -- 
	List supportingImmunization,
	List supportingPatientInformation,
	FOREIGN KEY ("immunizationRecommendation.id")
		REFERENCES immunizationRecommendation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunizationRecommendation_DateCriterion(

	id TEXT PRIMARY KEY,
	"immunizationRecommendation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"value" DATETIME, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("immunizationRecommendation.id")
		REFERENCES immunizationRecommendation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide(

	resourceType TEXT, -- resourceType: ImplementationGuide
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	packageId TEXT, -- 
	_packageId "ForeignKey", -- 
	license TEXT, -- enum: not-open-source/0BSD/AAL/Abstyles/Adobe-2006/Adobe-Glyph/ADSL/AFL-1.1/AFL-1.2/AFL-2.0/AFL-2.1/AFL-3.0/Afmparse/AGPL-1.0-only/AGPL-1.0-or-later/AGPL-3.0-only/AGPL-3.0-or-later/Aladdin/AMDPLPA/AML/AMPAS/ANTLR-PD/Apache-1.0/Apache-1.1/Apache-2.0/APAFML/APL-1.0/APSL-1.0/APSL-1.1/APSL-1.2/APSL-2.0/Artistic-1.0-cl8/Artistic-1.0-Perl/Artistic-1.0/Artistic-2.0/Bahyph/Barr/Beerware/BitTorrent-1.0/BitTorrent-1.1/Borceux/BSD-1-Clause/BSD-2-Clause-FreeBSD/BSD-2-Clause-NetBSD/BSD-2-Clause-Patent/BSD-2-Clause/BSD-3-Clause-Attribution/BSD-3-Clause-Clear/BSD-3-Clause-LBNL/BSD-3-Clause-No-Nuclear-License-2014/BSD-3-Clause-No-Nuclear-License/BSD-3-Clause-No-Nuclear-Warranty/BSD-3-Clause/BSD-4-Clause-UC/BSD-4-Clause/BSD-Protection/BSD-Source-Code/BSL-1.0/bzip2-1.0.5/bzip2-1.0.6/Caldera/CATOSL-1.1/CC-BY-1.0/CC-BY-2.0/CC-BY-2.5/CC-BY-3.0/CC-BY-4.0/CC-BY-NC-1.0/CC-BY-NC-2.0/CC-BY-NC-2.5/CC-BY-NC-3.0/CC-BY-NC-4.0/CC-BY-NC-ND-1.0/CC-BY-NC-ND-2.0/CC-BY-NC-ND-2.5/CC-BY-NC-ND-3.0/CC-BY-NC-ND-4.0/CC-BY-NC-SA-1.0/CC-BY-NC-SA-2.0/CC-BY-NC-SA-2.5/CC-BY-NC-SA-3.0/CC-BY-NC-SA-4.0/CC-BY-ND-1.0/CC-BY-ND-2.0/CC-BY-ND-2.5/CC-BY-ND-3.0/CC-BY-ND-4.0/CC-BY-SA-1.0/CC-BY-SA-2.0/CC-BY-SA-2.5/CC-BY-SA-3.0/CC-BY-SA-4.0/CC0-1.0/CDDL-1.0/CDDL-1.1/CDLA-Permissive-1.0/CDLA-Sharing-1.0/CECILL-1.0/CECILL-1.1/CECILL-2.0/CECILL-2.1/CECILL-B/CECILL-C/ClArtistic/CNRI-Jython/CNRI-Python-GPL-Compatible/CNRI-Python/Condor-1.1/CPAL-1.0/CPL-1.0/CPOL-1.02/Crossword/CrystalStacker/CUA-OPL-1.0/Cube/curl/D-FSL-1.0/diffmark/DOC/Dotseqn/DSDP/dvipdfm/ECL-1.0/ECL-2.0/EFL-1.0/EFL-2.0/eGenix/Entessa/EPL-1.0/EPL-2.0/ErlPL-1.1/EUDatagrid/EUPL-1.0/EUPL-1.1/EUPL-1.2/Eurosym/Fair/Frameworx-1.0/FreeImage/FSFAP/FSFUL/FSFULLR/FTL/GFDL-1.1-only/GFDL-1.1-or-later/GFDL-1.2-only/GFDL-1.2-or-later/GFDL-1.3-only/GFDL-1.3-or-later/Giftware/GL2PS/Glide/Glulxe/gnuplot/GPL-1.0-only/GPL-1.0-or-later/GPL-2.0-only/GPL-2.0-or-later/GPL-3.0-only/GPL-3.0-or-later/gSOAP-1.3b/HaskellReport/HPND/IBM-pibs/ICU/IJG/ImageMagick/iMatix/Imlib2/Info-ZIP/Intel-ACPI/Intel/Interbase-1.0/IPA/IPL-1.0/ISC/JasPer-2.0/JSON/LAL-1.2/LAL-1.3/Latex2e/Leptonica/LGPL-2.0-only/LGPL-2.0-or-later/LGPL-2.1-only/LGPL-2.1-or-later/LGPL-3.0-only/LGPL-3.0-or-later/LGPLLR/Libpng/libtiff/LiLiQ-P-1.1/LiLiQ-R-1.1/LiLiQ-Rplus-1.1/Linux-OpenIB/LPL-1.0/LPL-1.02/LPPL-1.0/LPPL-1.1/LPPL-1.2/LPPL-1.3a/LPPL-1.3c/MakeIndex/MirOS/MIT-0/MIT-advertising/MIT-CMU/MIT-enna/MIT-feh/MIT/MITNFA/Motosoto/mpich2/MPL-1.0/MPL-1.1/MPL-2.0-no-copyleft-exception/MPL-2.0/MS-PL/MS-RL/MTLL/Multics/Mup/NASA-1.3/Naumen/NBPL-1.0/NCSA/Net-SNMP/NetCDF/Newsletr/NGPL/NLOD-1.0/NLPL/Nokia/NOSL/Noweb/NPL-1.0/NPL-1.1/NPOSL-3.0/NRL/NTP/OCCT-PL/OCLC-2.0/ODbL-1.0/OFL-1.0/OFL-1.1/OGTSL/OLDAP-1.1/OLDAP-1.2/OLDAP-1.3/OLDAP-1.4/OLDAP-2.0.1/OLDAP-2.0/OLDAP-2.1/OLDAP-2.2.1/OLDAP-2.2.2/OLDAP-2.2/OLDAP-2.3/OLDAP-2.4/OLDAP-2.5/OLDAP-2.6/OLDAP-2.7/OLDAP-2.8/OML/OpenSSL/OPL-1.0/OSET-PL-2.1/OSL-1.0/OSL-1.1/OSL-2.0/OSL-2.1/OSL-3.0/PDDL-1.0/PHP-3.0/PHP-3.01/Plexus/PostgreSQL/psfrag/psutils/Python-2.0/Qhull/QPL-1.0/Rdisc/RHeCos-1.1/RPL-1.1/RPL-1.5/RPSL-1.0/RSA-MD/RSCPL/Ruby/SAX-PD/Saxpath/SCEA/Sendmail/SGI-B-1.0/SGI-B-1.1/SGI-B-2.0/SimPL-2.0/SISSL-1.2/SISSL/Sleepycat/SMLNJ/SMPPL/SNIA/Spencer-86/Spencer-94/Spencer-99/SPL-1.0/SugarCRM-1.1.3/SWL/TCL/TCP-wrappers/TMate/TORQUE-1.1/TOSL/Unicode-DFS-2015/Unicode-DFS-2016/Unicode-TOU/Unlicense/UPL-1.0/Vim/VOSTROM/VSL-1.0/W3C-19980720/W3C-20150513/W3C/Watcom-1.0/Wsuipa/WTFPL/X11/Xerox/XFree86-1.1/xinetd/Xnet/xpp/XSkat/YPL-1.0/YPL-1.1/Zed/Zend-2.0/Zimbra-1.3/Zimbra-1.4/zlib-acknowledgement/Zlib/ZPL-1.1/ZPL-2.0/ZPL-2.1
	_license "ForeignKey", -- 
	List fhirVersion,
	List _fhirVersion,
	List dependsOn,
	List global,
	"definition" "ForeignKey", -- 
	manifest "ForeignKey", -- 
);

CREATE TABLE implementationGuide_DependsOn(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	uri TEXT, -- 
	packageId TEXT, -- 
	_packageId "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Global(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	"profile" TEXT, -- 
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Definition(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List grouping,
	List resource,
	page "ForeignKey", -- 
	List parameter,
	List template,
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Grouping(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Resource(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	reference "ForeignKey", -- 
	List fhirVersion,
	List _fhirVersion,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	exampleBoolean BOOLEAN, -- pattern: ^true|false$
	_exampleBoolean "ForeignKey", -- 
	exampleCanonical TEXT, -- pattern: ^\S*$
	_exampleCanonical "ForeignKey", -- 
	groupingId TEXT, -- 
	_groupingId "ForeignKey", -- 
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Page(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	nameUrl TEXT, -- pattern: ^\S*$
	_nameUrl "ForeignKey", -- 
	nameReference "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	generation TEXT, -- enum: html/markdown/xml/generated
	_generation "ForeignKey", -- 
	List page,
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Parameter(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- enum: apply/path-resource/path-pages/path-tx-cache/expansion-parameter/rule-broken-links/generate-xml/generate-json/generate-turtle/html-template
	_code "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Template(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	"source" TEXT, -- 
	_source "ForeignKey", -- 
	"scope" TEXT, -- 
	_scope "ForeignKey", -- 
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Manifest(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	rendering TEXT, -- 
	_rendering "ForeignKey", -- 
	List resource,
	List page,
	List image,
	List _image,
	List other,
	List _other,
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Resource1(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	reference "ForeignKey", -- 
	exampleBoolean BOOLEAN, -- pattern: ^true|false$
	_exampleBoolean "ForeignKey", -- 
	exampleCanonical TEXT, -- pattern: ^\S*$
	_exampleCanonical "ForeignKey", -- 
	relativePath TEXT, -- 
	_relativePath "ForeignKey", -- 
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Page1(

	id TEXT PRIMARY KEY,
	"implementationGuide.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	List anchor,
	List _anchor,
	FOREIGN KEY ("implementationGuide.id")
		REFERENCES implementationGuide (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan(

	resourceType TEXT, -- resourceType: InsurancePlan
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	List type,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List alias,
	List _alias,
	"period" "ForeignKey", -- 
	ownedBy "ForeignKey", -- 
	administeredBy "ForeignKey", -- 
	List coverageArea,
	List contact,
	List endpoint,
	List network,
	List coverage,
	List plan,
);

CREATE TABLE insurancePlan_Contact(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	purpose "ForeignKey", -- 
	"name" "ForeignKey", -- 
	List telecom,
	"address" "ForeignKey", -- 
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Coverage(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List network,
	List benefit,
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Benefit(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	requirement TEXT, -- 
	_requirement "ForeignKey", -- 
	List limit,
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Limit(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"value" "ForeignKey", -- 
	"code" "ForeignKey", -- 
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Plan(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List identifier,
	"type" "ForeignKey", -- 
	List coverageArea,
	List network,
	List generalCost,
	List specificCost,
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_GeneralCost(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	groupSize INTEGER, -- 
	_groupSize "ForeignKey", -- 
	cost "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_SpecificCost(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	List benefit,
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Benefit1(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List cost,
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Cost(

	id TEXT PRIMARY KEY,
	"insurancePlan.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	applicability "ForeignKey", -- 
	List qualifiers,
	"value" "ForeignKey", -- 
	FOREIGN KEY ("insurancePlan.id")
		REFERENCES insurancePlan (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE invoice(

	resourceType TEXT, -- resourceType: Invoice
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: draft/issued/balanced/cancelled/entered-in-error
	_status "ForeignKey", -- 
	cancelledReason TEXT, -- 
	_cancelledReason "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	recipient "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	List participant,
	issuer "ForeignKey", -- 
	account "ForeignKey", -- 
	List lineItem,
	List totalPriceComponent,
	totalNet "ForeignKey", -- 
	totalGross "ForeignKey", -- 
	paymentTerms TEXT, -- 
	_paymentTerms "ForeignKey", -- 
	List note,
);

CREATE TABLE invoice_Participant(

	id TEXT PRIMARY KEY,
	"invoice.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"role" "ForeignKey", -- 
	actor "ForeignKey", -- 
	FOREIGN KEY ("invoice.id")
		REFERENCES invoice (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE invoice_LineItem(

	id TEXT PRIMARY KEY,
	"invoice.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"sequence" INTEGER, -- 
	_sequence "ForeignKey", -- 
	chargeItemReference "ForeignKey", -- 
	chargeItemCodeableConcept "ForeignKey", -- 
	List priceComponent,
	FOREIGN KEY ("invoice.id")
		REFERENCES invoice (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE invoice_PriceComponent(

	id TEXT PRIMARY KEY,
	"invoice.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: base/surcharge/deduction/discount/tax/informational
	_type "ForeignKey", -- 
	"code" "ForeignKey", -- 
	factor REAL, -- 
	_factor "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("invoice.id")
		REFERENCES invoice (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE library(

	resourceType TEXT, -- resourceType: Library
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"type" "ForeignKey", -- 
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	List parameter,
	List dataRequirement,
	List content,
);

CREATE TABLE linkage(

	resourceType TEXT, -- resourceType: Linkage
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	author "ForeignKey", -- 
	List item,
);

CREATE TABLE linkage_Item(

	id TEXT PRIMARY KEY,
	"linkage.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: source/alternate/historical
	_type "ForeignKey", -- 
	resource "ForeignKey", -- 
	FOREIGN KEY ("linkage.id")
		REFERENCES linkage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE list(

	resourceType TEXT, -- resourceType: List
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: current/retired/entered-in-error
	_status "ForeignKey", -- 
	mode TEXT, -- enum: working/snapshot/changes
	_mode "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	"source" "ForeignKey", -- 
	orderedBy "ForeignKey", -- 
	List note,
	List entry,
	emptyReason "ForeignKey", -- 
);

CREATE TABLE list_Entry(

	id TEXT PRIMARY KEY,
	"list.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	flag "ForeignKey", -- 
	deleted BOOLEAN, -- 
	_deleted "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	item "ForeignKey", -- 
	FOREIGN KEY ("list.id")
		REFERENCES list (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE location(

	resourceType TEXT, -- resourceType: Location
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: active/suspended/inactive
	_status "ForeignKey", -- 
	operationalStatus "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List alias,
	List _alias,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	mode TEXT, -- enum: instance/kind
	_mode "ForeignKey", -- 
	List type,
	List telecom,
	"address" "ForeignKey", -- 
	physicalType "ForeignKey", -- 
	"position" "ForeignKey", -- 
	managingOrganization "ForeignKey", -- 
	partOf "ForeignKey", -- 
	List hoursOfOperation,
	availabilityExceptions TEXT, -- 
	_availabilityExceptions "ForeignKey", -- 
	List endpoint,
);

CREATE TABLE location_Position(

	id TEXT PRIMARY KEY,
	"location.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	longitude REAL, -- 
	_longitude "ForeignKey", -- 
	latitude REAL, -- 
	_latitude "ForeignKey", -- 
	altitude REAL, -- 
	_altitude "ForeignKey", -- 
	FOREIGN KEY ("location.id")
		REFERENCES "location" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE location_HoursOfOperation(

	id TEXT PRIMARY KEY,
	"location.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List daysOfWeek,
	List _daysOfWeek,
	allDay BOOLEAN, -- 
	_allDay "ForeignKey", -- 
	openingTime TIME, -- 
	_openingTime "ForeignKey", -- 
	closingTime TIME, -- 
	_closingTime "ForeignKey", -- 
	FOREIGN KEY ("location.id")
		REFERENCES "location" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure(

	resourceType TEXT, -- resourceType: Measure
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	List library,
	disclaimer TEXT, -- 
	_disclaimer "ForeignKey", -- 
	scoring "ForeignKey", -- 
	compositeScoring "ForeignKey", -- 
	List type,
	riskAdjustment TEXT, -- 
	_riskAdjustment "ForeignKey", -- 
	rateAggregation TEXT, -- 
	_rateAggregation "ForeignKey", -- 
	rationale TEXT, -- 
	_rationale "ForeignKey", -- 
	clinicalRecommendationStatement TEXT, -- 
	_clinicalRecommendationStatement "ForeignKey", -- 
	improvementNotation "ForeignKey", -- 
	List definition,
	List _definition,
	guidance TEXT, -- 
	_guidance "ForeignKey", -- 
	List group,
	List supplementalData,
);

CREATE TABLE measure_Group(

	id TEXT PRIMARY KEY,
	"measure.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List population,
	List stratifier,
	FOREIGN KEY ("measure.id")
		REFERENCES measure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_Population(

	id TEXT PRIMARY KEY,
	"measure.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	criteria "ForeignKey", -- 
	FOREIGN KEY ("measure.id")
		REFERENCES measure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_Stratifier(

	id TEXT PRIMARY KEY,
	"measure.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	criteria "ForeignKey", -- 
	List component,
	FOREIGN KEY ("measure.id")
		REFERENCES measure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_Component(

	id TEXT PRIMARY KEY,
	"measure.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	criteria "ForeignKey", -- 
	FOREIGN KEY ("measure.id")
		REFERENCES measure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_SupplementalData(

	id TEXT PRIMARY KEY,
	"measure.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	List usage,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	criteria "ForeignKey", -- 
	FOREIGN KEY ("measure.id")
		REFERENCES measure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport(

	resourceType TEXT, -- resourceType: MeasureReport
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: complete/pending/error
	_status "ForeignKey", -- 
	"type" TEXT, -- enum: individual/subject-list/summary/data-collection
	_type "ForeignKey", -- 
	measure TEXT, -- 
	"subject" "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	reporter "ForeignKey", -- 
	"period" "ForeignKey", -- 
	improvementNotation "ForeignKey", -- 
	List group,
	List evaluatedResource,
);

CREATE TABLE measureReport_Group(

	id TEXT PRIMARY KEY,
	"measureReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	List population,
	measureScore "ForeignKey", -- 
	List stratifier,
	FOREIGN KEY ("measureReport.id")
		REFERENCES measureReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Population(

	id TEXT PRIMARY KEY,
	"measureReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"count" INTEGER, -- 
	_count "ForeignKey", -- 
	subjectResults "ForeignKey", -- 
	FOREIGN KEY ("measureReport.id")
		REFERENCES measureReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Stratifier(

	id TEXT PRIMARY KEY,
	"measureReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List code,
	List stratum,
	FOREIGN KEY ("measureReport.id")
		REFERENCES measureReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Stratum(

	id TEXT PRIMARY KEY,
	"measureReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"value" "ForeignKey", -- 
	List component,
	List population,
	measureScore "ForeignKey", -- 
	FOREIGN KEY ("measureReport.id")
		REFERENCES measureReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Component(

	id TEXT PRIMARY KEY,
	"measureReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"value" "ForeignKey", -- 
	FOREIGN KEY ("measureReport.id")
		REFERENCES measureReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Population1(

	id TEXT PRIMARY KEY,
	"measureReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"count" INTEGER, -- 
	_count "ForeignKey", -- 
	subjectResults "ForeignKey", -- 
	FOREIGN KEY ("measureReport.id")
		REFERENCES measureReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE media(

	resourceType TEXT, -- resourceType: Media
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List basedOn,
	List partOf,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	modality "ForeignKey", -- 
	"view" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	createdDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_createdDateTime "ForeignKey", -- 
	createdPeriod "ForeignKey", -- 
	issued DATETIME, -- 
	_issued "ForeignKey", -- 
	operator "ForeignKey", -- 
	List reasonCode,
	bodySite "ForeignKey", -- 
	deviceName TEXT, -- 
	_deviceName "ForeignKey", -- 
	device "ForeignKey", -- 
	height INTEGER, -- 
	_height "ForeignKey", -- 
	width INTEGER, -- 
	_width "ForeignKey", -- 
	frames INTEGER, -- 
	_frames "ForeignKey", -- 
	duration REAL, -- 
	_duration "ForeignKey", -- 
	content "ForeignKey", -- 
	List note,
);

CREATE TABLE medication(

	resourceType TEXT, -- resourceType: Medication
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"code" "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	manufacturer "ForeignKey", -- 
	form "ForeignKey", -- 
	amount "ForeignKey", -- 
	List ingredient,
	batch "ForeignKey", -- 
);

CREATE TABLE medication_Ingredient(

	id TEXT PRIMARY KEY,
	"medication.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	itemCodeableConcept "ForeignKey", -- 
	itemReference "ForeignKey", -- 
	isActive BOOLEAN, -- 
	_isActive "ForeignKey", -- 
	strength "ForeignKey", -- 
	FOREIGN KEY ("medication.id")
		REFERENCES medication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medication_Batch(

	id TEXT PRIMARY KEY,
	"medication.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	lotNumber TEXT, -- 
	_lotNumber "ForeignKey", -- 
	expirationDate DATETIME, -- 
	_expirationDate "ForeignKey", -- 
	FOREIGN KEY ("medication.id")
		REFERENCES medication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationAdministration(

	resourceType TEXT, -- resourceType: MedicationAdministration
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiates,
	List _instantiates,
	List partOf,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	List statusReason,
	category "ForeignKey", -- 
	medicationCodeableConcept "ForeignKey", -- 
	medicationReference "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	context "ForeignKey", -- 
	List supportingInformation,
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List performer,
	List reasonCode,
	List reasonReference,
	request "ForeignKey", -- 
	List device,
	List note,
	dosage "ForeignKey", -- 
	List eventHistory,
);

CREATE TABLE medicationAdministration_Performer(

	id TEXT PRIMARY KEY,
	"medicationAdministration.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"function" "ForeignKey", -- 
	actor "ForeignKey", -- 
	FOREIGN KEY ("medicationAdministration.id")
		REFERENCES medicationAdministration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationAdministration_Dosage(

	id TEXT PRIMARY KEY,
	"medicationAdministration.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	"site" "ForeignKey", -- 
	route "ForeignKey", -- 
	"method" "ForeignKey", -- 
	dose "ForeignKey", -- 
	rateRatio "ForeignKey", -- 
	rateQuantity "ForeignKey", -- 
	FOREIGN KEY ("medicationAdministration.id")
		REFERENCES medicationAdministration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationDispense(

	resourceType TEXT, -- resourceType: MedicationDispense
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List partOf,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusReasonCodeableConcept "ForeignKey", -- 
	statusReasonReference "ForeignKey", -- 
	category "ForeignKey", -- 
	medicationCodeableConcept "ForeignKey", -- 
	medicationReference "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	context "ForeignKey", -- 
	List supportingInformation,
	List performer,
	"location" "ForeignKey", -- 
	List authorizingPrescription,
	"type" "ForeignKey", -- 
	quantity "ForeignKey", -- 
	daysSupply "ForeignKey", -- 
	whenPrepared DATETIME, -- 
	_whenPrepared "ForeignKey", -- 
	whenHandedOver DATETIME, -- 
	_whenHandedOver "ForeignKey", -- 
	destination "ForeignKey", -- 
	List receiver,
	List note,
	List dosageInstruction,
	substitution "ForeignKey", -- 
	List detectedIssue,
	List eventHistory,
);

CREATE TABLE medicationDispense_Performer(

	id TEXT PRIMARY KEY,
	"medicationDispense.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"function" "ForeignKey", -- 
	actor "ForeignKey", -- 
	FOREIGN KEY ("medicationDispense.id")
		REFERENCES medicationDispense (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationDispense_Substitution(

	id TEXT PRIMARY KEY,
	"medicationDispense.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	wasSubstituted BOOLEAN, -- 
	_wasSubstituted "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List reason,
	List responsibleParty,
	FOREIGN KEY ("medicationDispense.id")
		REFERENCES medicationDispense (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge(

	resourceType TEXT, -- resourceType: MedicationKnowledge
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	manufacturer "ForeignKey", -- 
	doseForm "ForeignKey", -- 
	amount "ForeignKey", -- 
	List synonym,
	List _synonym,
	List relatedMedicationKnowledge,
	List associatedMedication,
	List productType,
	List monograph,
	List ingredient,
	preparationInstruction TEXT, -- 
	_preparationInstruction "ForeignKey", -- 
	List intendedRoute,
	List cost,
	List monitoringProgram,
	List administrationGuidelines,
	List medicineClassification,
	packaging "ForeignKey", -- 
	List drugCharacteristic,
	List contraindication,
	List regulatory,
	List kinetics,
);

CREATE TABLE medicationKnowledge_RelatedMedicationKnowledge(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List reference,
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Monograph(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	"source" "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Ingredient(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	itemCodeableConcept "ForeignKey", -- 
	itemReference "ForeignKey", -- 
	isActive BOOLEAN, -- 
	_isActive "ForeignKey", -- 
	strength "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Cost(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	"source" TEXT, -- 
	_source "ForeignKey", -- 
	cost "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_MonitoringProgram(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_AdministrationGuidelines(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List dosage,
	indicationCodeableConcept "ForeignKey", -- 
	indicationReference "ForeignKey", -- 
	List patientCharacteristics,
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Dosage(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List dosage,
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_PatientCharacteristics(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	characteristicCodeableConcept "ForeignKey", -- 
	characteristicQuantity "ForeignKey", -- 
	List value,
	List _value,
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_MedicineClassification(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List classification,
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Packaging(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	quantity "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_DrugCharacteristic(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Regulatory(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	regulatoryAuthority "ForeignKey", -- 
	List substitution,
	List schedule,
	maxDispense "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Substitution(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	allowed BOOLEAN, -- 
	_allowed "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Schedule(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	schedule "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_MaxDispense(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	quantity "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Kinetics(

	id TEXT PRIMARY KEY,
	"medicationKnowledge.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List areaUnderCurve,
	List lethalDose50,
	halfLifePeriod "ForeignKey", -- 
	FOREIGN KEY ("medicationKnowledge.id")
		REFERENCES medicationKnowledge (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationRequest(

	resourceType TEXT, -- resourceType: MedicationRequest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	intent TEXT, -- 
	_intent "ForeignKey", -- 
	List category,
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	doNotPerform BOOLEAN, -- 
	_doNotPerform "ForeignKey", -- 
	reportedBoolean BOOLEAN, -- pattern: ^true|false$
	_reportedBoolean "ForeignKey", -- 
	reportedReference "ForeignKey", -- 
	medicationCodeableConcept "ForeignKey", -- 
	medicationReference "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	List supportingInformation,
	authoredOn DATETIME, -- 
	_authoredOn "ForeignKey", -- 
	requester "ForeignKey", -- 
	performer "ForeignKey", -- 
	performerType "ForeignKey", -- 
	recorder "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List instantiatesCanonical,
	List _instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List basedOn,
	groupIdentifier "ForeignKey", -- 
	courseOfTherapyType "ForeignKey", -- 
	List insurance,
	List note,
	List dosageInstruction,
	dispenseRequest "ForeignKey", -- 
	substitution "ForeignKey", -- 
	priorPrescription "ForeignKey", -- 
	List detectedIssue,
	List eventHistory,
);

CREATE TABLE medicationRequest_DispenseRequest(

	id TEXT PRIMARY KEY,
	"medicationRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	initialFill "ForeignKey", -- 
	dispenseInterval "ForeignKey", -- 
	validityPeriod "ForeignKey", -- 
	numberOfRepeatsAllowed INTEGER, -- 
	_numberOfRepeatsAllowed "ForeignKey", -- 
	quantity "ForeignKey", -- 
	expectedSupplyDuration "ForeignKey", -- 
	performer "ForeignKey", -- 
	FOREIGN KEY ("medicationRequest.id")
		REFERENCES medicationRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationRequest_InitialFill(

	id TEXT PRIMARY KEY,
	"medicationRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	quantity "ForeignKey", -- 
	duration "ForeignKey", -- 
	FOREIGN KEY ("medicationRequest.id")
		REFERENCES medicationRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationRequest_Substitution(

	id TEXT PRIMARY KEY,
	"medicationRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	allowedBoolean BOOLEAN, -- pattern: ^true|false$
	_allowedBoolean "ForeignKey", -- 
	allowedCodeableConcept "ForeignKey", -- 
	reason "ForeignKey", -- 
	FOREIGN KEY ("medicationRequest.id")
		REFERENCES medicationRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationStatement(

	resourceType TEXT, -- resourceType: MedicationStatement
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List basedOn,
	List partOf,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	List statusReason,
	category "ForeignKey", -- 
	medicationCodeableConcept "ForeignKey", -- 
	medicationReference "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	context "ForeignKey", -- 
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	dateAsserted DATETIME, -- 
	_dateAsserted "ForeignKey", -- 
	informationSource "ForeignKey", -- 
	List derivedFrom,
	List reasonCode,
	List reasonReference,
	List note,
	List dosage,
);

CREATE TABLE medicinalProduct(

	resourceType TEXT, -- resourceType: MedicinalProduct
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"type" "ForeignKey", -- 
	"domain" "ForeignKey", -- 
	combinedPharmaceuticalDoseForm "ForeignKey", -- 
	legalStatusOfSupply "ForeignKey", -- 
	additionalMonitoringIndicator "ForeignKey", -- 
	List specialMeasures,
	List _specialMeasures,
	paediatricUseIndicator "ForeignKey", -- 
	List productClassification,
	List marketingStatus,
	List pharmaceuticalProduct,
	List packagedMedicinalProduct,
	List attachedDocument,
	List masterFile,
	List contact,
	List clinicalTrial,
	List name,
	List crossReference,
	List manufacturingBusinessOperation,
	List specialDesignation,
);

CREATE TABLE medicinalProduct_Name(

	id TEXT PRIMARY KEY,
	"medicinalProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	productName TEXT, -- 
	_productName "ForeignKey", -- 
	List namePart,
	List countryLanguage,
	FOREIGN KEY ("medicinalProduct.id")
		REFERENCES medicinalProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_NamePart(

	id TEXT PRIMARY KEY,
	"medicinalProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	part TEXT, -- 
	_part "ForeignKey", -- 
	"type" "ForeignKey", -- 
	FOREIGN KEY ("medicinalProduct.id")
		REFERENCES medicinalProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_CountryLanguage(

	id TEXT PRIMARY KEY,
	"medicinalProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	country "ForeignKey", -- 
	jurisdiction "ForeignKey", -- 
	"language" "ForeignKey", -- 
	FOREIGN KEY ("medicinalProduct.id")
		REFERENCES medicinalProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_ManufacturingBusinessOperation(

	id TEXT PRIMARY KEY,
	"medicinalProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	operationType "ForeignKey", -- 
	authorisationReferenceNumber "ForeignKey", -- 
	effectiveDate DATETIME, -- 
	_effectiveDate "ForeignKey", -- 
	confidentialityIndicator "ForeignKey", -- 
	List manufacturer,
	regulator "ForeignKey", -- 
	FOREIGN KEY ("medicinalProduct.id")
		REFERENCES medicinalProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_SpecialDesignation(

	id TEXT PRIMARY KEY,
	"medicinalProduct.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List identifier,
	"type" "ForeignKey", -- 
	intendedUse "ForeignKey", -- 
	indicationCodeableConcept "ForeignKey", -- 
	indicationReference "ForeignKey", -- 
	"status" "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	species "ForeignKey", -- 
	FOREIGN KEY ("medicinalProduct.id")
		REFERENCES medicinalProduct (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductAuthorization(

	resourceType TEXT, -- resourceType: MedicinalProductAuthorization
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"subject" "ForeignKey", -- 
	List country,
	List jurisdiction,
	"status" "ForeignKey", -- 
	statusDate DATETIME, -- 
	_statusDate "ForeignKey", -- 
	restoreDate DATETIME, -- 
	_restoreDate "ForeignKey", -- 
	validityPeriod "ForeignKey", -- 
	dataExclusivityPeriod "ForeignKey", -- 
	dateOfFirstAuthorization DATETIME, -- 
	_dateOfFirstAuthorization "ForeignKey", -- 
	internationalBirthDate DATETIME, -- 
	_internationalBirthDate "ForeignKey", -- 
	legalBasis "ForeignKey", -- 
	List jurisdictionalAuthorization,
	holder "ForeignKey", -- 
	regulator "ForeignKey", -- 
	"procedure" "ForeignKey", -- 
);

CREATE TABLE medicinalProductAuthorization_JurisdictionalAuthorization(

	id TEXT PRIMARY KEY,
	"medicinalProductAuthorization.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List identifier,
	country "ForeignKey", -- 
	List jurisdiction,
	legalStatusOfSupply "ForeignKey", -- 
	validityPeriod "ForeignKey", -- 
	FOREIGN KEY ("medicinalProductAuthorization.id")
		REFERENCES medicinalProductAuthorization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductAuthorization_Procedure(

	id TEXT PRIMARY KEY,
	"medicinalProductAuthorization.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"type" "ForeignKey", -- 
	datePeriod "ForeignKey", -- 
	dateDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_dateDateTime "ForeignKey", -- 
	List application,
	FOREIGN KEY ("medicinalProductAuthorization.id")
		REFERENCES medicinalProductAuthorization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductContraindication(

	resourceType TEXT, -- resourceType: MedicinalProductContraindication
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List subject,
	disease "ForeignKey", -- 
	diseaseStatus "ForeignKey", -- 
	List comorbidity,
	List therapeuticIndication,
	List otherTherapy,
	List population,
);

CREATE TABLE medicinalProductContraindication_OtherTherapy(

	id TEXT PRIMARY KEY,
	"medicinalProductContraindication.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	therapyRelationshipType "ForeignKey", -- 
	medicationCodeableConcept "ForeignKey", -- 
	medicationReference "ForeignKey", -- 
	FOREIGN KEY ("medicinalProductContraindication.id")
		REFERENCES medicinalProductContraindication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIndication(

	resourceType TEXT, -- resourceType: MedicinalProductIndication
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List subject,
	diseaseSymptomProcedure "ForeignKey", -- 
	diseaseStatus "ForeignKey", -- 
	List comorbidity,
	intendedEffect "ForeignKey", -- 
	duration "ForeignKey", -- 
	List otherTherapy,
	List undesirableEffect,
	List population,
);

CREATE TABLE medicinalProductIndication_OtherTherapy(

	id TEXT PRIMARY KEY,
	"medicinalProductIndication.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	therapyRelationshipType "ForeignKey", -- 
	medicationCodeableConcept "ForeignKey", -- 
	medicationReference "ForeignKey", -- 
	FOREIGN KEY ("medicinalProductIndication.id")
		REFERENCES medicinalProductIndication (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient(

	resourceType TEXT, -- resourceType: MedicinalProductIngredient
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"role" "ForeignKey", -- 
	allergenicIndicator BOOLEAN, -- 
	_allergenicIndicator "ForeignKey", -- 
	List manufacturer,
	List specifiedSubstance,
	substance "ForeignKey", -- 
);

CREATE TABLE medicinalProductIngredient_SpecifiedSubstance(

	id TEXT PRIMARY KEY,
	"medicinalProductIngredient.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"group" "ForeignKey", -- 
	confidentiality "ForeignKey", -- 
	List strength,
	FOREIGN KEY ("medicinalProductIngredient.id")
		REFERENCES medicinalProductIngredient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient_Strength(

	id TEXT PRIMARY KEY,
	"medicinalProductIngredient.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	presentation "ForeignKey", -- 
	presentationLowLimit "ForeignKey", -- 
	concentration "ForeignKey", -- 
	concentrationLowLimit "ForeignKey", -- 
	measurementPoint TEXT, -- 
	_measurementPoint "ForeignKey", -- 
	List country,
	List referenceStrength,
	FOREIGN KEY ("medicinalProductIngredient.id")
		REFERENCES medicinalProductIngredient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient_ReferenceStrength(

	id TEXT PRIMARY KEY,
	"medicinalProductIngredient.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	substance "ForeignKey", -- 
	strength "ForeignKey", -- 
	strengthLowLimit "ForeignKey", -- 
	measurementPoint TEXT, -- 
	_measurementPoint "ForeignKey", -- 
	List country,
	FOREIGN KEY ("medicinalProductIngredient.id")
		REFERENCES medicinalProductIngredient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient_Substance(

	id TEXT PRIMARY KEY,
	"medicinalProductIngredient.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	List strength,
	FOREIGN KEY ("medicinalProductIngredient.id")
		REFERENCES medicinalProductIngredient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductInteraction(

	resourceType TEXT, -- resourceType: MedicinalProductInteraction
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List subject,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List interactant,
	"type" "ForeignKey", -- 
	effect "ForeignKey", -- 
	incidence "ForeignKey", -- 
	management "ForeignKey", -- 
);

CREATE TABLE medicinalProductInteraction_Interactant(

	id TEXT PRIMARY KEY,
	"medicinalProductInteraction.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	itemReference "ForeignKey", -- 
	itemCodeableConcept "ForeignKey", -- 
	FOREIGN KEY ("medicinalProductInteraction.id")
		REFERENCES medicinalProductInteraction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductManufactured(

	resourceType TEXT, -- resourceType: MedicinalProductManufactured
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	manufacturedDoseForm "ForeignKey", -- 
	unitOfPresentation "ForeignKey", -- 
	quantity "ForeignKey", -- 
	List manufacturer,
	List ingredient,
	physicalCharacteristics "ForeignKey", -- 
	List otherCharacteristics,
);

CREATE TABLE medicinalProductPackaged(

	resourceType TEXT, -- resourceType: MedicinalProductPackaged
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List subject,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	legalStatusOfSupply "ForeignKey", -- 
	List marketingStatus,
	marketingAuthorization "ForeignKey", -- 
	List manufacturer,
	List batchIdentifier,
	List packageItem,
);

CREATE TABLE medicinalProductPackaged_BatchIdentifier(

	id TEXT PRIMARY KEY,
	"medicinalProductPackaged.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	outerPackaging "ForeignKey", -- 
	immediatePackaging "ForeignKey", -- 
	FOREIGN KEY ("medicinalProductPackaged.id")
		REFERENCES medicinalProductPackaged (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPackaged_PackageItem(

	id TEXT PRIMARY KEY,
	"medicinalProductPackaged.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List identifier,
	"type" "ForeignKey", -- 
	quantity "ForeignKey", -- 
	List material,
	List alternateMaterial,
	List device,
	List manufacturedItem,
	List packageItem,
	physicalCharacteristics "ForeignKey", -- 
	List otherCharacteristics,
	List shelfLifeStorage,
	List manufacturer,
	FOREIGN KEY ("medicinalProductPackaged.id")
		REFERENCES medicinalProductPackaged (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical(

	resourceType TEXT, -- resourceType: MedicinalProductPharmaceutical
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	administrableDoseForm "ForeignKey", -- 
	unitOfPresentation "ForeignKey", -- 
	List ingredient,
	List device,
	List characteristics,
	List routeOfAdministration,
);

CREATE TABLE medicinalProductPharmaceutical_Characteristics(

	id TEXT PRIMARY KEY,
	"medicinalProductPharmaceutical.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"status" "ForeignKey", -- 
	FOREIGN KEY ("medicinalProductPharmaceutical.id")
		REFERENCES medicinalProductPharmaceutical (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical_RouteOfAdministration(

	id TEXT PRIMARY KEY,
	"medicinalProductPharmaceutical.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	firstDose "ForeignKey", -- 
	maxSingleDose "ForeignKey", -- 
	maxDosePerDay "ForeignKey", -- 
	maxDosePerTreatmentPeriod "ForeignKey", -- 
	maxTreatmentPeriod "ForeignKey", -- 
	List targetSpecies,
	FOREIGN KEY ("medicinalProductPharmaceutical.id")
		REFERENCES medicinalProductPharmaceutical (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical_TargetSpecies(

	id TEXT PRIMARY KEY,
	"medicinalProductPharmaceutical.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	List withdrawalPeriod,
	FOREIGN KEY ("medicinalProductPharmaceutical.id")
		REFERENCES medicinalProductPharmaceutical (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical_WithdrawalPeriod(

	id TEXT PRIMARY KEY,
	"medicinalProductPharmaceutical.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	tissue "ForeignKey", -- 
	"value" "ForeignKey", -- 
	supportingInformation TEXT, -- 
	_supportingInformation "ForeignKey", -- 
	FOREIGN KEY ("medicinalProductPharmaceutical.id")
		REFERENCES medicinalProductPharmaceutical (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductUndesirableEffect(

	resourceType TEXT, -- resourceType: MedicinalProductUndesirableEffect
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List subject,
	symptomConditionEffect "ForeignKey", -- 
	classification "ForeignKey", -- 
	frequencyOfOccurrence "ForeignKey", -- 
	List population,
);

CREATE TABLE messageDefinition(

	resourceType TEXT, -- resourceType: MessageDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	List replaces,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	base TEXT, -- 
	List parent,
	eventCoding "ForeignKey", -- 
	eventUri TEXT, -- pattern: ^\S*$
	_eventUri "ForeignKey", -- 
	category TEXT, -- enum: consequence/currency/notification
	_category "ForeignKey", -- 
	List focus,
	responseRequired TEXT, -- enum: always/on-error/never/on-success
	_responseRequired "ForeignKey", -- 
	List allowedResponse,
	List graph,
);

CREATE TABLE messageDefinition_Focus(

	id TEXT PRIMARY KEY,
	"messageDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	"profile" TEXT, -- 
	"min" INTEGER, -- 
	_min "ForeignKey", -- 
	"max" TEXT, -- 
	_max "ForeignKey", -- 
	FOREIGN KEY ("messageDefinition.id")
		REFERENCES messageDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageDefinition_AllowedResponse(

	id TEXT PRIMARY KEY,
	"messageDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	message TEXT, -- 
	situation TEXT, -- 
	_situation "ForeignKey", -- 
	FOREIGN KEY ("messageDefinition.id")
		REFERENCES messageDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageHeader(

	resourceType TEXT, -- resourceType: MessageHeader
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	eventCoding "ForeignKey", -- 
	eventUri TEXT, -- pattern: ^\S*$
	_eventUri "ForeignKey", -- 
	List destination,
	sender "ForeignKey", -- 
	enterer "ForeignKey", -- 
	author "ForeignKey", -- 
	"source" "ForeignKey", -- 
	responsible "ForeignKey", -- 
	reason "ForeignKey", -- 
	response "ForeignKey", -- 
	List focus,
	"definition" TEXT, -- 
);

CREATE TABLE messageHeader_Destination(

	id TEXT PRIMARY KEY,
	"messageHeader.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"target" "ForeignKey", -- 
	"endpoint" TEXT, -- 
	_endpoint "ForeignKey", -- 
	receiver "ForeignKey", -- 
	FOREIGN KEY ("messageHeader.id")
		REFERENCES messageHeader (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageHeader_Source(

	id TEXT PRIMARY KEY,
	"messageHeader.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	software TEXT, -- 
	_software "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	contact "ForeignKey", -- 
	"endpoint" TEXT, -- 
	_endpoint "ForeignKey", -- 
	FOREIGN KEY ("messageHeader.id")
		REFERENCES messageHeader (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageHeader_Response(

	id TEXT PRIMARY KEY,
	"messageHeader.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier TEXT, -- 
	_identifier "ForeignKey", -- 
	"code" TEXT, -- enum: ok/transient-error/fatal-error
	_code "ForeignKey", -- 
	details "ForeignKey", -- 
	FOREIGN KEY ("messageHeader.id")
		REFERENCES messageHeader (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence(

	resourceType TEXT, -- resourceType: MolecularSequence
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"type" TEXT, -- enum: aa/dna/rna
	_type "ForeignKey", -- 
	coordinateSystem INTEGER, -- 
	_coordinateSystem "ForeignKey", -- 
	patient "ForeignKey", -- 
	specimen "ForeignKey", -- 
	device "ForeignKey", -- 
	performer "ForeignKey", -- 
	quantity "ForeignKey", -- 
	referenceSeq "ForeignKey", -- 
	List variant,
	observedSeq TEXT, -- 
	_observedSeq "ForeignKey", -- 
	List quality,
	readCoverage INTEGER, -- 
	_readCoverage "ForeignKey", -- 
	List repository,
	List pointer,
	List structureVariant,
);

CREATE TABLE molecularSequence_ReferenceSeq(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	chromosome "ForeignKey", -- 
	genomeBuild TEXT, -- 
	_genomeBuild "ForeignKey", -- 
	orientation TEXT, -- enum: sense/antisense
	_orientation "ForeignKey", -- 
	referenceSeqId "ForeignKey", -- 
	referenceSeqPointer "ForeignKey", -- 
	referenceSeqString TEXT, -- 
	_referenceSeqString "ForeignKey", -- 
	strand TEXT, -- enum: watson/crick
	_strand "ForeignKey", -- 
	windowStart INTEGER, -- 
	_windowStart "ForeignKey", -- 
	windowEnd INTEGER, -- 
	_windowEnd "ForeignKey", -- 
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Variant(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"start" INTEGER, -- 
	_start "ForeignKey", -- 
	"end" INTEGER, -- 
	_end "ForeignKey", -- 
	observedAllele TEXT, -- 
	_observedAllele "ForeignKey", -- 
	referenceAllele TEXT, -- 
	_referenceAllele "ForeignKey", -- 
	cigar TEXT, -- 
	_cigar "ForeignKey", -- 
	variantPointer "ForeignKey", -- 
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Quality(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: indel/snp/unknown
	_type "ForeignKey", -- 
	standardSequence "ForeignKey", -- 
	"start" INTEGER, -- 
	_start "ForeignKey", -- 
	"end" INTEGER, -- 
	_end "ForeignKey", -- 
	score "ForeignKey", -- 
	"method" "ForeignKey", -- 
	truthTP REAL, -- 
	_truthTP "ForeignKey", -- 
	queryTP REAL, -- 
	_queryTP "ForeignKey", -- 
	truthFN REAL, -- 
	_truthFN "ForeignKey", -- 
	queryFP REAL, -- 
	_queryFP "ForeignKey", -- 
	gtFP REAL, -- 
	_gtFP "ForeignKey", -- 
	precision REAL, -- 
	_precision "ForeignKey", -- 
	recall REAL, -- 
	_recall "ForeignKey", -- 
	fScore REAL, -- 
	_fScore "ForeignKey", -- 
	roc "ForeignKey", -- 
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Roc(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List score,
	List _score,
	List numTP,
	List _numTP,
	List numFP,
	List _numFP,
	List numFN,
	List _numFN,
	List precision,
	List _precision,
	List sensitivity,
	List _sensitivity,
	List fMeasure,
	List _fMeasure,
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Repository(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: directlink/openapi/login/oauth/other
	_type "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	datasetId TEXT, -- 
	_datasetId "ForeignKey", -- 
	variantsetId TEXT, -- 
	_variantsetId "ForeignKey", -- 
	readsetId TEXT, -- 
	_readsetId "ForeignKey", -- 
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_StructureVariant(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	variantType "ForeignKey", -- 
	exact BOOLEAN, -- 
	_exact "ForeignKey", -- 
	"length" INTEGER, -- 
	_length "ForeignKey", -- 
	"outer" "ForeignKey", -- 
	"inner" "ForeignKey", -- 
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Outer(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"start" INTEGER, -- 
	_start "ForeignKey", -- 
	"end" INTEGER, -- 
	_end "ForeignKey", -- 
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Inner(

	id TEXT PRIMARY KEY,
	"molecularSequence.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"start" INTEGER, -- 
	_start "ForeignKey", -- 
	"end" INTEGER, -- 
	_end "ForeignKey", -- 
	FOREIGN KEY ("molecularSequence.id")
		REFERENCES molecularSequence (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE namingSystem(

	resourceType TEXT, -- resourceType: NamingSystem
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	kind TEXT, -- enum: codesystem/identifier/root
	_kind "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	responsible TEXT, -- 
	_responsible "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	List uniqueId,
);

CREATE TABLE namingSystem_UniqueId(

	id TEXT PRIMARY KEY,
	"namingSystem.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: oid/uuid/uri/other
	_type "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	preferred BOOLEAN, -- 
	_preferred "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("namingSystem.id")
		REFERENCES namingSystem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder(

	resourceType TEXT, -- resourceType: NutritionOrder
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List instantiates,
	List _instantiates,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	intent TEXT, -- 
	_intent "ForeignKey", -- 
	patient "ForeignKey", -- 
	encounter "ForeignKey", -- 
	"dateTime" DATETIME, -- 
	_dateTime "ForeignKey", -- 
	orderer "ForeignKey", -- 
	List allergyIntolerance,
	List foodPreferenceModifier,
	List excludeFoodModifier,
	oralDiet "ForeignKey", -- 
	List supplement,
	enteralFormula "ForeignKey", -- 
	List note,
);

CREATE TABLE nutritionOrder_OralDiet(

	id TEXT PRIMARY KEY,
	"nutritionOrder.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List type,
	List schedule,
	List nutrient,
	List texture,
	List fluidConsistencyType,
	instruction TEXT, -- 
	_instruction "ForeignKey", -- 
	FOREIGN KEY ("nutritionOrder.id")
		REFERENCES nutritionOrder (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Nutrient(

	id TEXT PRIMARY KEY,
	"nutritionOrder.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	modifier "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("nutritionOrder.id")
		REFERENCES nutritionOrder (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Texture(

	id TEXT PRIMARY KEY,
	"nutritionOrder.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	modifier "ForeignKey", -- 
	foodType "ForeignKey", -- 
	FOREIGN KEY ("nutritionOrder.id")
		REFERENCES nutritionOrder (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Supplement(

	id TEXT PRIMARY KEY,
	"nutritionOrder.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	productName TEXT, -- 
	_productName "ForeignKey", -- 
	List schedule,
	quantity "ForeignKey", -- 
	instruction TEXT, -- 
	_instruction "ForeignKey", -- 
	FOREIGN KEY ("nutritionOrder.id")
		REFERENCES nutritionOrder (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_EnteralFormula(

	id TEXT PRIMARY KEY,
	"nutritionOrder.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	baseFormulaType "ForeignKey", -- 
	baseFormulaProductName TEXT, -- 
	_baseFormulaProductName "ForeignKey", -- 
	additiveType "ForeignKey", -- 
	additiveProductName TEXT, -- 
	_additiveProductName "ForeignKey", -- 
	caloricDensity "ForeignKey", -- 
	routeofAdministration "ForeignKey", -- 
	List administration,
	maxVolumeToDeliver "ForeignKey", -- 
	administrationInstruction TEXT, -- 
	_administrationInstruction "ForeignKey", -- 
	FOREIGN KEY ("nutritionOrder.id")
		REFERENCES nutritionOrder (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Administration(

	id TEXT PRIMARY KEY,
	"nutritionOrder.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	schedule "ForeignKey", -- 
	quantity "ForeignKey", -- 
	rateQuantity "ForeignKey", -- 
	rateRatio "ForeignKey", -- 
	FOREIGN KEY ("nutritionOrder.id")
		REFERENCES nutritionOrder (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observation(

	resourceType TEXT, -- resourceType: Observation
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List basedOn,
	List partOf,
	"status" TEXT, -- enum: registered/preliminary/final/amended/corrected/cancelled/entered-in-error/unknown
	_status "ForeignKey", -- 
	List category,
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	List focus,
	encounter "ForeignKey", -- 
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	effectiveTiming "ForeignKey", -- 
	effectiveInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_effectiveInstant "ForeignKey", -- 
	issued DATETIME, -- 
	_issued "ForeignKey", -- 
	List performer,
	valueQuantity "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueRatio "ForeignKey", -- 
	valueSampledData "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	dataAbsentReason "ForeignKey", -- 
	List interpretation,
	List note,
	bodySite "ForeignKey", -- 
	"method" "ForeignKey", -- 
	specimen "ForeignKey", -- 
	device "ForeignKey", -- 
	List referenceRange,
	List hasMember,
	List derivedFrom,
	List component,
);

CREATE TABLE observation_ReferenceRange(

	id TEXT PRIMARY KEY,
	"observation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	low "ForeignKey", -- 
	high "ForeignKey", -- 
	"type" "ForeignKey", -- 
	List appliesTo,
	age "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	FOREIGN KEY ("observation.id")
		REFERENCES observation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observation_Component(

	id TEXT PRIMARY KEY,
	"observation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueRatio "ForeignKey", -- 
	valueSampledData "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	dataAbsentReason "ForeignKey", -- 
	List interpretation,
	List referenceRange,
	FOREIGN KEY ("observation.id")
		REFERENCES observation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observationDefinition(

	resourceType TEXT, -- resourceType: ObservationDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List category,
	"code" "ForeignKey", -- 
	List identifier,
	List permittedDataType,
	List _permittedDataType,
	multipleResultsAllowed BOOLEAN, -- 
	_multipleResultsAllowed "ForeignKey", -- 
	"method" "ForeignKey", -- 
	preferredReportName TEXT, -- 
	_preferredReportName "ForeignKey", -- 
	quantitativeDetails "ForeignKey", -- 
	List qualifiedInterval,
	validCodedValueSet "ForeignKey", -- 
	normalCodedValueSet "ForeignKey", -- 
	abnormalCodedValueSet "ForeignKey", -- 
	criticalCodedValueSet "ForeignKey", -- 
);

CREATE TABLE observationDefinition_QuantitativeDetails(

	id TEXT PRIMARY KEY,
	"observationDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	customaryUnit "ForeignKey", -- 
	unit "ForeignKey", -- 
	conversionFactor REAL, -- 
	_conversionFactor "ForeignKey", -- 
	decimalPrecision INTEGER, -- 
	_decimalPrecision "ForeignKey", -- 
	FOREIGN KEY ("observationDefinition.id")
		REFERENCES observationDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observationDefinition_QualifiedInterval(

	id TEXT PRIMARY KEY,
	"observationDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category TEXT, -- enum: reference/critical/absolute
	_category "ForeignKey", -- 
	"range" "ForeignKey", -- 
	context "ForeignKey", -- 
	List appliesTo,
	gender TEXT, -- enum: male/female/other/unknown
	_gender "ForeignKey", -- 
	age "ForeignKey", -- 
	gestationalAge "ForeignKey", -- 
	"condition" TEXT, -- 
	_condition "ForeignKey", -- 
	FOREIGN KEY ("observationDefinition.id")
		REFERENCES observationDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition(

	resourceType TEXT, -- resourceType: OperationDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	kind TEXT, -- enum: operation/query
	_kind "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	affectsState BOOLEAN, -- 
	_affectsState "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	base TEXT, -- 
	List resource,
	List _resource,
	"system" BOOLEAN, -- 
	_system "ForeignKey", -- 
	"type" BOOLEAN, -- 
	_type "ForeignKey", -- 
	"instance" BOOLEAN, -- 
	_instance "ForeignKey", -- 
	inputProfile TEXT, -- 
	outputProfile TEXT, -- 
	List parameter,
	List overload,
);

CREATE TABLE operationDefinition_Parameter(

	id TEXT PRIMARY KEY,
	"operationDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"use" TEXT, -- enum: in/out
	_use "ForeignKey", -- 
	"min" INTEGER, -- 
	_min "ForeignKey", -- 
	"max" TEXT, -- 
	_max "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	List targetProfile,
	searchType TEXT, -- enum: number/date/string/token/reference/composite/quantity/uri/special
	_searchType "ForeignKey", -- 
	"binding" "ForeignKey", -- 
	List referencedFrom,
	List part,
	FOREIGN KEY ("operationDefinition.id")
		REFERENCES operationDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition_Binding(

	id TEXT PRIMARY KEY,
	"operationDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	strength TEXT, -- enum: required/extensible/preferred/example
	_strength "ForeignKey", -- 
	valueSet TEXT, -- 
	FOREIGN KEY ("operationDefinition.id")
		REFERENCES operationDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition_ReferencedFrom(

	id TEXT PRIMARY KEY,
	"operationDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"source" TEXT, -- 
	_source "ForeignKey", -- 
	sourceId TEXT, -- 
	_sourceId "ForeignKey", -- 
	FOREIGN KEY ("operationDefinition.id")
		REFERENCES operationDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition_Overload(

	id TEXT PRIMARY KEY,
	"operationDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List parameterName,
	List _parameterName,
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	FOREIGN KEY ("operationDefinition.id")
		REFERENCES operationDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationOutcome(

	resourceType TEXT, -- resourceType: OperationOutcome
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List issue,
);

CREATE TABLE operationOutcome_Issue(

	id TEXT PRIMARY KEY,
	"operationOutcome.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	severity TEXT, -- enum: fatal/error/warning/information
	_severity "ForeignKey", -- 
	"code" TEXT, -- enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational
	_code "ForeignKey", -- 
	details "ForeignKey", -- 
	diagnostics TEXT, -- 
	_diagnostics "ForeignKey", -- 
	List location,
	List _location,
	List expression,
	List _expression,
	FOREIGN KEY ("operationOutcome.id")
		REFERENCES operationOutcome (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE organization(

	resourceType TEXT, -- resourceType: Organization
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	List type,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List alias,
	List _alias,
	List telecom,
	List address,
	partOf "ForeignKey", -- 
	List contact,
	List endpoint,
);

CREATE TABLE organization_Contact(

	id TEXT PRIMARY KEY,
	"organization.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	purpose "ForeignKey", -- 
	"name" "ForeignKey", -- 
	List telecom,
	"address" "ForeignKey", -- 
	FOREIGN KEY ("organization.id")
		REFERENCES organization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE organizationAffiliation(

	resourceType TEXT, -- resourceType: OrganizationAffiliation
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	"period" "ForeignKey", -- 
	organization "ForeignKey", -- 
	participatingOrganization "ForeignKey", -- 
	List network,
	List code,
	List specialty,
	List location,
	List healthcareService,
	List telecom,
	List endpoint,
);

CREATE TABLE parameters(

	resourceType TEXT, -- resourceType: Parameters
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	List parameter,
);

CREATE TABLE parameters_Parameter(

	id TEXT PRIMARY KEY,
	"parameters.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical "ForeignKey", -- 
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId "ForeignKey", -- 
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown "ForeignKey", -- 
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid "ForeignKey", -- 
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl "ForeignKey", -- 
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid "ForeignKey", -- 
	valueAddress "ForeignKey", -- 
	valueAge "ForeignKey", -- 
	valueAnnotation "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueContactPoint "ForeignKey", -- 
	valueCount "ForeignKey", -- 
	valueDistance "ForeignKey", -- 
	valueDuration "ForeignKey", -- 
	valueHumanName "ForeignKey", -- 
	valueIdentifier "ForeignKey", -- 
	valueMoney "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueRatio "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	valueSampledData "ForeignKey", -- 
	valueSignature "ForeignKey", -- 
	valueTiming "ForeignKey", -- 
	valueContactDetail "ForeignKey", -- 
	valueContributor "ForeignKey", -- 
	valueDataRequirement "ForeignKey", -- 
	valueExpression "ForeignKey", -- 
	valueParameterDefinition "ForeignKey", -- 
	valueRelatedArtifact "ForeignKey", -- 
	valueTriggerDefinition "ForeignKey", -- 
	valueUsageContext "ForeignKey", -- 
	valueDosage "ForeignKey", -- 
	valueMeta "ForeignKey", -- 
	resource "ForeignKey", -- 
	List part,
	FOREIGN KEY ("parameters.id")
		REFERENCES parameters (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE patient(

	resourceType TEXT, -- resourceType: Patient
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	List name,
	List telecom,
	gender TEXT, -- enum: male/female/other/unknown
	_gender "ForeignKey", -- 
	birthDate DATE, -- 
	_birthDate "ForeignKey", -- 
	deceasedBoolean BOOLEAN, -- pattern: ^true|false$
	_deceasedBoolean "ForeignKey", -- 
	deceasedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_deceasedDateTime "ForeignKey", -- 
	List address,
	maritalStatus "ForeignKey", -- 
	multipleBirthBoolean BOOLEAN, -- pattern: ^true|false$
	_multipleBirthBoolean "ForeignKey", -- 
	multipleBirthInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_multipleBirthInteger "ForeignKey", -- 
	List photo,
	List contact,
	List communication,
	List generalPractitioner,
	managingOrganization "ForeignKey", -- 
	List link,
);

CREATE TABLE patient_Contact(

	id TEXT PRIMARY KEY,
	"patient.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List relationship,
	"name" "ForeignKey", -- 
	List telecom,
	"address" "ForeignKey", -- 
	gender TEXT, -- enum: male/female/other/unknown
	_gender "ForeignKey", -- 
	organization "ForeignKey", -- 
	"period" "ForeignKey", -- 
	FOREIGN KEY ("patient.id")
		REFERENCES patient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE patient_Communication(

	id TEXT PRIMARY KEY,
	"patient.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"language" "ForeignKey", -- 
	preferred BOOLEAN, -- 
	_preferred "ForeignKey", -- 
	FOREIGN KEY ("patient.id")
		REFERENCES patient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE patient_Link(

	id TEXT PRIMARY KEY,
	"patient.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	other "ForeignKey", -- 
	"type" TEXT, -- enum: replaced-by/replaces/refer/seealso
	_type "ForeignKey", -- 
	FOREIGN KEY ("patient.id")
		REFERENCES patient (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE paymentNotice(

	resourceType TEXT, -- resourceType: PaymentNotice
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	request "ForeignKey", -- 
	response "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	"provider" "ForeignKey", -- 
	payment "ForeignKey", -- 
	paymentDate DATE, -- 
	_paymentDate "ForeignKey", -- 
	payee "ForeignKey", -- 
	recipient "ForeignKey", -- 
	amount "ForeignKey", -- 
	paymentStatus "ForeignKey", -- 
);

CREATE TABLE paymentReconciliation(

	resourceType TEXT, -- resourceType: PaymentReconciliation
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"period" "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	paymentIssuer "ForeignKey", -- 
	request "ForeignKey", -- 
	requestor "ForeignKey", -- 
	outcome TEXT, -- enum: queued/complete/error/partial
	_outcome "ForeignKey", -- 
	disposition TEXT, -- 
	_disposition "ForeignKey", -- 
	paymentDate DATE, -- 
	_paymentDate "ForeignKey", -- 
	paymentAmount "ForeignKey", -- 
	paymentIdentifier "ForeignKey", -- 
	List detail,
	formCode "ForeignKey", -- 
	List processNote,
);

CREATE TABLE paymentReconciliation_Detail(

	id TEXT PRIMARY KEY,
	"paymentReconciliation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	predecessor "ForeignKey", -- 
	"type" "ForeignKey", -- 
	request "ForeignKey", -- 
	submitter "ForeignKey", -- 
	response "ForeignKey", -- 
	"date" DATE, -- 
	_date "ForeignKey", -- 
	responsible "ForeignKey", -- 
	payee "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("paymentReconciliation.id")
		REFERENCES paymentReconciliation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE paymentReconciliation_ProcessNote(

	id TEXT PRIMARY KEY,
	"paymentReconciliation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: display/print/printoper
	_type "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	FOREIGN KEY ("paymentReconciliation.id")
		REFERENCES paymentReconciliation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE person(

	resourceType TEXT, -- resourceType: Person
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List name,
	List telecom,
	gender TEXT, -- enum: male/female/other/unknown
	_gender "ForeignKey", -- 
	birthDate DATE, -- 
	_birthDate "ForeignKey", -- 
	List address,
	photo "ForeignKey", -- 
	managingOrganization "ForeignKey", -- 
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	List link,
);

CREATE TABLE person_Link(

	id TEXT PRIMARY KEY,
	"person.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"target" "ForeignKey", -- 
	assurance TEXT, -- enum: level1/level2/level3/level4
	_assurance "ForeignKey", -- 
	FOREIGN KEY ("person.id")
		REFERENCES person (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition(

	resourceType TEXT, -- resourceType: PlanDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	List library,
	List goal,
	List action,
);

CREATE TABLE planDefinition_Goal(

	id TEXT PRIMARY KEY,
	"planDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	"description" "ForeignKey", -- 
	"priority" "ForeignKey", -- 
	"start" "ForeignKey", -- 
	List addresses,
	List documentation,
	List target,
	FOREIGN KEY ("planDefinition.id")
		REFERENCES planDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Target(

	id TEXT PRIMARY KEY,
	"planDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	measure "ForeignKey", -- 
	detailQuantity "ForeignKey", -- 
	detailRange "ForeignKey", -- 
	detailCodeableConcept "ForeignKey", -- 
	due "ForeignKey", -- 
	FOREIGN KEY ("planDefinition.id")
		REFERENCES planDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Action(

	id TEXT PRIMARY KEY,
	"planDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	prefix TEXT, -- 
	_prefix "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	textEquivalent TEXT, -- 
	_textEquivalent "ForeignKey", -- 
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	List code,
	List reason,
	List documentation,
	List goalId,
	List _goalId,
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	List trigger,
	List condition,
	List input,
	List output,
	List relatedAction,
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime "ForeignKey", -- 
	timingAge "ForeignKey", -- 
	timingPeriod "ForeignKey", -- 
	timingDuration "ForeignKey", -- 
	timingRange "ForeignKey", -- 
	timingTiming "ForeignKey", -- 
	List participant,
	"type" "ForeignKey", -- 
	groupingBehavior TEXT, -- enum: visual-group/logical-group/sentence-group
	_groupingBehavior "ForeignKey", -- 
	selectionBehavior TEXT, -- enum: any/all/all-or-none/exactly-one/at-most-one/one-or-more
	_selectionBehavior "ForeignKey", -- 
	requiredBehavior TEXT, -- enum: must/could/must-unless-documented
	_requiredBehavior "ForeignKey", -- 
	precheckBehavior TEXT, -- enum: yes/no
	_precheckBehavior "ForeignKey", -- 
	cardinalityBehavior TEXT, -- enum: single/multiple
	_cardinalityBehavior "ForeignKey", -- 
	definitionCanonical TEXT, -- pattern: ^\S*$
	_definitionCanonical "ForeignKey", -- 
	definitionUri TEXT, -- pattern: ^\S*$
	_definitionUri "ForeignKey", -- 
	transform TEXT, -- 
	List dynamicValue,
	List action,
	FOREIGN KEY ("planDefinition.id")
		REFERENCES planDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Condition(

	id TEXT PRIMARY KEY,
	"planDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	kind TEXT, -- enum: applicability/start/stop
	_kind "ForeignKey", -- 
	expression "ForeignKey", -- 
	FOREIGN KEY ("planDefinition.id")
		REFERENCES planDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_RelatedAction(

	id TEXT PRIMARY KEY,
	"planDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	actionId TEXT, -- 
	_actionId "ForeignKey", -- 
	relationship TEXT, -- enum: before-start/before/before-end/concurrent-with-start/concurrent/concurrent-with-end/after-start/after/after-end
	_relationship "ForeignKey", -- 
	offsetDuration "ForeignKey", -- 
	offsetRange "ForeignKey", -- 
	FOREIGN KEY ("planDefinition.id")
		REFERENCES planDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Participant(

	id TEXT PRIMARY KEY,
	"planDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: patient/practitioner/related-person/device
	_type "ForeignKey", -- 
	"role" "ForeignKey", -- 
	FOREIGN KEY ("planDefinition.id")
		REFERENCES planDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_DynamicValue(

	id TEXT PRIMARY KEY,
	"planDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	expression "ForeignKey", -- 
	FOREIGN KEY ("planDefinition.id")
		REFERENCES planDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitioner(

	resourceType TEXT, -- resourceType: Practitioner
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	List name,
	List telecom,
	List address,
	gender TEXT, -- enum: male/female/other/unknown
	_gender "ForeignKey", -- 
	birthDate DATE, -- 
	_birthDate "ForeignKey", -- 
	List photo,
	List qualification,
	List communication,
);

CREATE TABLE practitioner_Qualification(

	id TEXT PRIMARY KEY,
	"practitioner.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List identifier,
	"code" "ForeignKey", -- 
	"period" "ForeignKey", -- 
	issuer "ForeignKey", -- 
	FOREIGN KEY ("practitioner.id")
		REFERENCES practitioner (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitionerRole(

	resourceType TEXT, -- resourceType: PractitionerRole
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	"period" "ForeignKey", -- 
	practitioner "ForeignKey", -- 
	organization "ForeignKey", -- 
	List code,
	List specialty,
	List location,
	List healthcareService,
	List telecom,
	List availableTime,
	List notAvailable,
	availabilityExceptions TEXT, -- 
	_availabilityExceptions "ForeignKey", -- 
	List endpoint,
);

CREATE TABLE practitionerRole_AvailableTime(

	id TEXT PRIMARY KEY,
	"practitionerRole.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List daysOfWeek,
	List _daysOfWeek,
	allDay BOOLEAN, -- 
	_allDay "ForeignKey", -- 
	availableStartTime TIME, -- 
	_availableStartTime "ForeignKey", -- 
	availableEndTime TIME, -- 
	_availableEndTime "ForeignKey", -- 
	FOREIGN KEY ("practitionerRole.id")
		REFERENCES practitionerRole (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitionerRole_NotAvailable(

	id TEXT PRIMARY KEY,
	"practitionerRole.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	during "ForeignKey", -- 
	FOREIGN KEY ("practitionerRole.id")
		REFERENCES practitionerRole (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE procedure(

	resourceType TEXT, -- resourceType: Procedure
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List basedOn,
	List partOf,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	category "ForeignKey", -- 
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	performedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_performedDateTime "ForeignKey", -- 
	performedPeriod "ForeignKey", -- 
	performedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_performedString "ForeignKey", -- 
	performedAge "ForeignKey", -- 
	performedRange "ForeignKey", -- 
	recorder "ForeignKey", -- 
	asserter "ForeignKey", -- 
	List performer,
	"location" "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List bodySite,
	outcome "ForeignKey", -- 
	List report,
	List complication,
	List complicationDetail,
	List followUp,
	List note,
	List focalDevice,
	List usedReference,
	List usedCode,
);

CREATE TABLE procedure_Performer(

	id TEXT PRIMARY KEY,
	"procedure.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"function" "ForeignKey", -- 
	actor "ForeignKey", -- 
	onBehalfOf "ForeignKey", -- 
	FOREIGN KEY ("procedure.id")
		REFERENCES "procedure" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE procedure_FocalDevice(

	id TEXT PRIMARY KEY,
	"procedure.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"action" "ForeignKey", -- 
	manipulated "ForeignKey", -- 
	FOREIGN KEY ("procedure.id")
		REFERENCES "procedure" (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE provenance(

	resourceType TEXT, -- resourceType: Provenance
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List target,
	occurredPeriod "ForeignKey", -- 
	occurredDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurredDateTime "ForeignKey", -- 
	recorded DATETIME, -- 
	_recorded "ForeignKey", -- 
	List policy,
	List _policy,
	"location" "ForeignKey", -- 
	List reason,
	activity "ForeignKey", -- 
	List agent,
	List entity,
	List signature,
);

CREATE TABLE provenance_Agent(

	id TEXT PRIMARY KEY,
	"provenance.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List role,
	who "ForeignKey", -- 
	onBehalfOf "ForeignKey", -- 
	FOREIGN KEY ("provenance.id")
		REFERENCES provenance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE provenance_Entity(

	id TEXT PRIMARY KEY,
	"provenance.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"role" TEXT, -- enum: derivation/revision/quotation/source/removal
	_role "ForeignKey", -- 
	what "ForeignKey", -- 
	List agent,
	FOREIGN KEY ("provenance.id")
		REFERENCES provenance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire(

	resourceType TEXT, -- resourceType: Questionnaire
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	List derivedFrom,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	List subjectType,
	List _subjectType,
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List code,
	List item,
);

CREATE TABLE questionnaire_Item(

	id TEXT PRIMARY KEY,
	"questionnaire.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	linkId TEXT, -- 
	_linkId "ForeignKey", -- 
	"definition" TEXT, -- 
	_definition "ForeignKey", -- 
	List code,
	prefix TEXT, -- 
	_prefix "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	"type" TEXT, -- enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity
	_type "ForeignKey", -- 
	List enableWhen,
	enableBehavior TEXT, -- enum: all/any
	_enableBehavior "ForeignKey", -- 
	required BOOLEAN, -- 
	_required "ForeignKey", -- 
	repeats BOOLEAN, -- 
	_repeats "ForeignKey", -- 
	readOnly BOOLEAN, -- 
	_readOnly "ForeignKey", -- 
	"maxLength" INTEGER, -- 
	_maxLength "ForeignKey", -- 
	answerValueSet TEXT, -- 
	List answerOption,
	List initial,
	List item,
	FOREIGN KEY ("questionnaire.id")
		REFERENCES questionnaire (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire_EnableWhen(

	id TEXT PRIMARY KEY,
	"questionnaire.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	question TEXT, -- 
	_question "ForeignKey", -- 
	operator TEXT, -- enum: exists/=/!=/>/</>=/<=
	_operator "ForeignKey", -- 
	answerBoolean BOOLEAN, -- pattern: ^true|false$
	_answerBoolean "ForeignKey", -- 
	answerDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_answerDecimal "ForeignKey", -- 
	answerInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_answerInteger "ForeignKey", -- 
	answerDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_answerDate "ForeignKey", -- 
	answerDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_answerDateTime "ForeignKey", -- 
	answerTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_answerTime "ForeignKey", -- 
	answerString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_answerString "ForeignKey", -- 
	answerCoding "ForeignKey", -- 
	answerQuantity "ForeignKey", -- 
	answerReference "ForeignKey", -- 
	FOREIGN KEY ("questionnaire.id")
		REFERENCES questionnaire (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire_AnswerOption(

	id TEXT PRIMARY KEY,
	"questionnaire.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	initialSelected BOOLEAN, -- 
	_initialSelected "ForeignKey", -- 
	FOREIGN KEY ("questionnaire.id")
		REFERENCES questionnaire (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire_Initial(

	id TEXT PRIMARY KEY,
	"questionnaire.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	FOREIGN KEY ("questionnaire.id")
		REFERENCES questionnaire (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaireResponse(

	resourceType TEXT, -- resourceType: QuestionnaireResponse
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	List basedOn,
	List partOf,
	questionnaire TEXT, -- 
	"status" TEXT, -- enum: in-progress/completed/amended/entered-in-error/stopped
	_status "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	authored DATETIME, -- 
	_authored "ForeignKey", -- 
	author "ForeignKey", -- 
	"source" "ForeignKey", -- 
	List item,
);

CREATE TABLE questionnaireResponse_Item(

	id TEXT PRIMARY KEY,
	"questionnaireResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	linkId TEXT, -- 
	_linkId "ForeignKey", -- 
	"definition" TEXT, -- 
	_definition "ForeignKey", -- 
	"text" TEXT, -- 
	_text "ForeignKey", -- 
	List answer,
	List item,
	FOREIGN KEY ("questionnaireResponse.id")
		REFERENCES questionnaireResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaireResponse_Answer(

	id TEXT PRIMARY KEY,
	"questionnaireResponse.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	List item,
	FOREIGN KEY ("questionnaireResponse.id")
		REFERENCES questionnaireResponse (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE relatedPerson(

	resourceType TEXT, -- resourceType: RelatedPerson
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	patient "ForeignKey", -- 
	List relationship,
	List name,
	List telecom,
	gender TEXT, -- enum: male/female/other/unknown
	_gender "ForeignKey", -- 
	birthDate DATE, -- 
	_birthDate "ForeignKey", -- 
	List address,
	List photo,
	"period" "ForeignKey", -- 
	List communication,
);

CREATE TABLE relatedPerson_Communication(

	id TEXT PRIMARY KEY,
	"relatedPerson.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"language" "ForeignKey", -- 
	preferred BOOLEAN, -- 
	_preferred "ForeignKey", -- 
	FOREIGN KEY ("relatedPerson.id")
		REFERENCES relatedPerson (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE requestGroup(

	resourceType TEXT, -- resourceType: RequestGroup
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List _instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List basedOn,
	List replaces,
	groupIdentifier "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	intent TEXT, -- 
	_intent "ForeignKey", -- 
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	authoredOn DATETIME, -- 
	_authoredOn "ForeignKey", -- 
	author "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List note,
	List action,
);

CREATE TABLE requestGroup_Action(

	id TEXT PRIMARY KEY,
	"requestGroup.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	prefix TEXT, -- 
	_prefix "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	textEquivalent TEXT, -- 
	_textEquivalent "ForeignKey", -- 
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	List code,
	List documentation,
	List condition,
	List relatedAction,
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime "ForeignKey", -- 
	timingAge "ForeignKey", -- 
	timingPeriod "ForeignKey", -- 
	timingDuration "ForeignKey", -- 
	timingRange "ForeignKey", -- 
	timingTiming "ForeignKey", -- 
	List participant,
	"type" "ForeignKey", -- 
	groupingBehavior TEXT, -- 
	_groupingBehavior "ForeignKey", -- 
	selectionBehavior TEXT, -- 
	_selectionBehavior "ForeignKey", -- 
	requiredBehavior TEXT, -- 
	_requiredBehavior "ForeignKey", -- 
	precheckBehavior TEXT, -- 
	_precheckBehavior "ForeignKey", -- 
	cardinalityBehavior TEXT, -- 
	_cardinalityBehavior "ForeignKey", -- 
	resource "ForeignKey", -- 
	List action,
	FOREIGN KEY ("requestGroup.id")
		REFERENCES requestGroup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE requestGroup_Condition(

	id TEXT PRIMARY KEY,
	"requestGroup.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	kind TEXT, -- 
	_kind "ForeignKey", -- 
	expression "ForeignKey", -- 
	FOREIGN KEY ("requestGroup.id")
		REFERENCES requestGroup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE requestGroup_RelatedAction(

	id TEXT PRIMARY KEY,
	"requestGroup.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	actionId TEXT, -- 
	_actionId "ForeignKey", -- 
	relationship TEXT, -- 
	_relationship "ForeignKey", -- 
	offsetDuration "ForeignKey", -- 
	offsetRange "ForeignKey", -- 
	FOREIGN KEY ("requestGroup.id")
		REFERENCES requestGroup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchDefinition(

	resourceType TEXT, -- resourceType: ResearchDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	shortTitle TEXT, -- 
	_shortTitle "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List comment,
	List _comment,
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	List library,
	"population" "ForeignKey", -- 
	exposure "ForeignKey", -- 
	exposureAlternative "ForeignKey", -- 
	outcome "ForeignKey", -- 
);

CREATE TABLE researchElementDefinition(

	resourceType TEXT, -- resourceType: ResearchElementDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	shortTitle TEXT, -- 
	_shortTitle "ForeignKey", -- 
	subtitle TEXT, -- 
	_subtitle "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	subjectCodeableConcept "ForeignKey", -- 
	subjectReference "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List comment,
	List _comment,
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"usage" TEXT, -- 
	_usage "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	List library,
	"type" TEXT, -- enum: population/exposure/outcome
	_type "ForeignKey", -- 
	variableType TEXT, -- enum: dichotomous/continuous/descriptive
	_variableType "ForeignKey", -- 
	List characteristic,
);

CREATE TABLE researchElementDefinition_Characteristic(

	id TEXT PRIMARY KEY,
	"researchElementDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	definitionCodeableConcept "ForeignKey", -- 
	definitionCanonical TEXT, -- pattern: ^\S*$
	_definitionCanonical "ForeignKey", -- 
	definitionExpression "ForeignKey", -- 
	definitionDataRequirement "ForeignKey", -- 
	List usageContext,
	exclude BOOLEAN, -- 
	_exclude "ForeignKey", -- 
	unitOfMeasure "ForeignKey", -- 
	studyEffectiveDescription TEXT, -- 
	_studyEffectiveDescription "ForeignKey", -- 
	studyEffectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_studyEffectiveDateTime "ForeignKey", -- 
	studyEffectivePeriod "ForeignKey", -- 
	studyEffectiveDuration "ForeignKey", -- 
	studyEffectiveTiming "ForeignKey", -- 
	studyEffectiveTimeFromStart "ForeignKey", -- 
	studyEffectiveGroupMeasure TEXT, -- enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_studyEffectiveGroupMeasure "ForeignKey", -- 
	participantEffectiveDescription TEXT, -- 
	_participantEffectiveDescription "ForeignKey", -- 
	participantEffectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_participantEffectiveDateTime "ForeignKey", -- 
	participantEffectivePeriod "ForeignKey", -- 
	participantEffectiveDuration "ForeignKey", -- 
	participantEffectiveTiming "ForeignKey", -- 
	participantEffectiveTimeFromStart "ForeignKey", -- 
	participantEffectiveGroupMeasure TEXT, -- enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_participantEffectiveGroupMeasure "ForeignKey", -- 
	FOREIGN KEY ("researchElementDefinition.id")
		REFERENCES researchElementDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchStudy(

	resourceType TEXT, -- resourceType: ResearchStudy
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	title TEXT, -- 
	_title "ForeignKey", -- 
	List protocol,
	List partOf,
	"status" TEXT, -- enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn
	_status "ForeignKey", -- 
	primaryPurposeType "ForeignKey", -- 
	phase "ForeignKey", -- 
	List category,
	List focus,
	List condition,
	List contact,
	List relatedArtifact,
	List keyword,
	List location,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List enrollment,
	"period" "ForeignKey", -- 
	sponsor "ForeignKey", -- 
	principalInvestigator "ForeignKey", -- 
	List site,
	reasonStopped "ForeignKey", -- 
	List note,
	List arm,
	List objective,
);

CREATE TABLE researchStudy_Arm(

	id TEXT PRIMARY KEY,
	"researchStudy.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("researchStudy.id")
		REFERENCES researchStudy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchStudy_Objective(

	id TEXT PRIMARY KEY,
	"researchStudy.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"type" "ForeignKey", -- 
	FOREIGN KEY ("researchStudy.id")
		REFERENCES researchStudy (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchSubject(

	resourceType TEXT, -- resourceType: ResearchSubject
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: candidate/eligible/follow-up/ineligible/not-registered/off-study/on-study/on-study-intervention/on-study-observation/pending-on-study/potential-candidate/screening/withdrawn
	_status "ForeignKey", -- 
	"period" "ForeignKey", -- 
	study "ForeignKey", -- 
	individual "ForeignKey", -- 
	assignedArm TEXT, -- 
	_assignedArm "ForeignKey", -- 
	actualArm TEXT, -- 
	_actualArm "ForeignKey", -- 
	consent "ForeignKey", -- 
);

CREATE TABLE riskAssessment(

	resourceType TEXT, -- resourceType: RiskAssessment
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	basedOn "ForeignKey", -- 
	parent "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	"method" "ForeignKey", -- 
	"code" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	"condition" "ForeignKey", -- 
	performer "ForeignKey", -- 
	List reasonCode,
	List reasonReference,
	List basis,
	List prediction,
	mitigation TEXT, -- 
	_mitigation "ForeignKey", -- 
	List note,
);

CREATE TABLE riskAssessment_Prediction(

	id TEXT PRIMARY KEY,
	"riskAssessment.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	outcome "ForeignKey", -- 
	probabilityDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_probabilityDecimal "ForeignKey", -- 
	probabilityRange "ForeignKey", -- 
	qualitativeRisk "ForeignKey", -- 
	relativeRisk REAL, -- 
	_relativeRisk "ForeignKey", -- 
	whenPeriod "ForeignKey", -- 
	whenRange "ForeignKey", -- 
	rationale TEXT, -- 
	_rationale "ForeignKey", -- 
	FOREIGN KEY ("riskAssessment.id")
		REFERENCES riskAssessment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis(

	resourceType TEXT, -- resourceType: RiskEvidenceSynthesis
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List note,
	List useContext,
	List jurisdiction,
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	approvalDate DATE, -- 
	_approvalDate "ForeignKey", -- 
	lastReviewDate DATE, -- 
	_lastReviewDate "ForeignKey", -- 
	effectivePeriod "ForeignKey", -- 
	List topic,
	List author,
	List editor,
	List reviewer,
	List endorser,
	List relatedArtifact,
	synthesisType "ForeignKey", -- 
	studyType "ForeignKey", -- 
	"population" "ForeignKey", -- 
	exposure "ForeignKey", -- 
	outcome "ForeignKey", -- 
	sampleSize "ForeignKey", -- 
	riskEstimate "ForeignKey", -- 
	List certainty,
);

CREATE TABLE riskEvidenceSynthesis_SampleSize(

	id TEXT PRIMARY KEY,
	"riskEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	numberOfStudies INTEGER, -- 
	_numberOfStudies "ForeignKey", -- 
	numberOfParticipants INTEGER, -- 
	_numberOfParticipants "ForeignKey", -- 
	FOREIGN KEY ("riskEvidenceSynthesis.id")
		REFERENCES riskEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_RiskEstimate(

	id TEXT PRIMARY KEY,
	"riskEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"value" REAL, -- 
	_value "ForeignKey", -- 
	unitOfMeasure "ForeignKey", -- 
	denominatorCount INTEGER, -- 
	_denominatorCount "ForeignKey", -- 
	numeratorCount INTEGER, -- 
	_numeratorCount "ForeignKey", -- 
	List precisionEstimate,
	FOREIGN KEY ("riskEvidenceSynthesis.id")
		REFERENCES riskEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_PrecisionEstimate(

	id TEXT PRIMARY KEY,
	"riskEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	"level" REAL, -- 
	_level "ForeignKey", -- 
	"from" REAL, -- 
	_from "ForeignKey", -- 
	"to" REAL, -- 
	_to "ForeignKey", -- 
	FOREIGN KEY ("riskEvidenceSynthesis.id")
		REFERENCES riskEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_Certainty(

	id TEXT PRIMARY KEY,
	"riskEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List rating,
	List note,
	List certaintySubcomponent,
	FOREIGN KEY ("riskEvidenceSynthesis.id")
		REFERENCES riskEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_CertaintySubcomponent(

	id TEXT PRIMARY KEY,
	"riskEvidenceSynthesis.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	List rating,
	List note,
	FOREIGN KEY ("riskEvidenceSynthesis.id")
		REFERENCES riskEvidenceSynthesis (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE schedule(

	resourceType TEXT, -- resourceType: Schedule
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	active BOOLEAN, -- 
	_active "ForeignKey", -- 
	List serviceCategory,
	List serviceType,
	List specialty,
	List actor,
	planningHorizon "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
);

CREATE TABLE searchParameter(

	resourceType TEXT, -- resourceType: SearchParameter
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	derivedFrom TEXT, -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	List base,
	List _base,
	"type" TEXT, -- enum: number/date/string/token/reference/composite/quantity/uri/special
	_type "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	xpath TEXT, -- 
	_xpath "ForeignKey", -- 
	xpathUsage TEXT, -- enum: normal/phonetic/nearby/distance/other
	_xpathUsage "ForeignKey", -- 
	List target,
	List _target,
	multipleOr BOOLEAN, -- 
	_multipleOr "ForeignKey", -- 
	multipleAnd BOOLEAN, -- 
	_multipleAnd "ForeignKey", -- 
	List comparator,
	List _comparator,
	List modifier,
	List _modifier,
	List chain,
	List _chain,
	List component,
);

CREATE TABLE searchParameter_Component(

	id TEXT PRIMARY KEY,
	"searchParameter.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"definition" TEXT, -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	FOREIGN KEY ("searchParameter.id")
		REFERENCES searchParameter (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE serviceRequest(

	resourceType TEXT, -- resourceType: ServiceRequest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List instantiatesCanonical,
	List instantiatesUri,
	List _instantiatesUri,
	List basedOn,
	List replaces,
	requisition "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	intent TEXT, -- 
	_intent "ForeignKey", -- 
	List category,
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	doNotPerform BOOLEAN, -- 
	_doNotPerform "ForeignKey", -- 
	"code" "ForeignKey", -- 
	List orderDetail,
	quantityQuantity "ForeignKey", -- 
	quantityRatio "ForeignKey", -- 
	quantityRange "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	occurrenceTiming "ForeignKey", -- 
	asNeededBoolean BOOLEAN, -- pattern: ^true|false$
	_asNeededBoolean "ForeignKey", -- 
	asNeededCodeableConcept "ForeignKey", -- 
	authoredOn DATETIME, -- 
	_authoredOn "ForeignKey", -- 
	requester "ForeignKey", -- 
	performerType "ForeignKey", -- 
	List performer,
	List locationCode,
	List locationReference,
	List reasonCode,
	List reasonReference,
	List insurance,
	List supportingInfo,
	List specimen,
	List bodySite,
	List note,
	patientInstruction TEXT, -- 
	_patientInstruction "ForeignKey", -- 
	List relevantHistory,
);

CREATE TABLE slot(

	resourceType TEXT, -- resourceType: Slot
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List serviceCategory,
	List serviceType,
	List specialty,
	appointmentType "ForeignKey", -- 
	schedule "ForeignKey", -- 
	"status" TEXT, -- enum: busy/free/busy-unavailable/busy-tentative/entered-in-error
	_status "ForeignKey", -- 
	"start" DATETIME, -- 
	_start "ForeignKey", -- 
	"end" DATETIME, -- 
	_end "ForeignKey", -- 
	overbooked BOOLEAN, -- 
	_overbooked "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
);

CREATE TABLE specimen(

	resourceType TEXT, -- resourceType: Specimen
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	accessionIdentifier "ForeignKey", -- 
	"status" TEXT, -- enum: available/unavailable/unsatisfactory/entered-in-error
	_status "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"subject" "ForeignKey", -- 
	receivedTime DATETIME, -- 
	_receivedTime "ForeignKey", -- 
	List parent,
	List request,
	collection "ForeignKey", -- 
	List processing,
	List container,
	List condition,
	List note,
);

CREATE TABLE specimen_Collection(

	id TEXT PRIMARY KEY,
	"specimen.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	collector "ForeignKey", -- 
	collectedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_collectedDateTime "ForeignKey", -- 
	collectedPeriod "ForeignKey", -- 
	duration "ForeignKey", -- 
	quantity "ForeignKey", -- 
	"method" "ForeignKey", -- 
	bodySite "ForeignKey", -- 
	fastingStatusCodeableConcept "ForeignKey", -- 
	fastingStatusDuration "ForeignKey", -- 
	FOREIGN KEY ("specimen.id")
		REFERENCES specimen (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimen_Processing(

	id TEXT PRIMARY KEY,
	"specimen.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"procedure" "ForeignKey", -- 
	List additive,
	timeDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timeDateTime "ForeignKey", -- 
	timePeriod "ForeignKey", -- 
	FOREIGN KEY ("specimen.id")
		REFERENCES specimen (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimen_Container(

	id TEXT PRIMARY KEY,
	"specimen.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List identifier,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"type" "ForeignKey", -- 
	capacity "ForeignKey", -- 
	specimenQuantity "ForeignKey", -- 
	additiveCodeableConcept "ForeignKey", -- 
	additiveReference "ForeignKey", -- 
	FOREIGN KEY ("specimen.id")
		REFERENCES specimen (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition(

	resourceType TEXT, -- resourceType: SpecimenDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	typeCollected "ForeignKey", -- 
	List patientPreparation,
	timeAspect TEXT, -- 
	_timeAspect "ForeignKey", -- 
	List collection,
	List typeTested,
);

CREATE TABLE specimenDefinition_TypeTested(

	id TEXT PRIMARY KEY,
	"specimenDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	isDerived BOOLEAN, -- 
	_isDerived "ForeignKey", -- 
	"type" "ForeignKey", -- 
	preference TEXT, -- enum: preferred/alternate
	_preference "ForeignKey", -- 
	container "ForeignKey", -- 
	requirement TEXT, -- 
	_requirement "ForeignKey", -- 
	retentionTime "ForeignKey", -- 
	List rejectionCriterion,
	List handling,
	FOREIGN KEY ("specimenDefinition.id")
		REFERENCES specimenDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition_Container(

	id TEXT PRIMARY KEY,
	"specimenDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	material "ForeignKey", -- 
	"type" "ForeignKey", -- 
	cap "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	capacity "ForeignKey", -- 
	minimumVolumeQuantity "ForeignKey", -- 
	minimumVolumeString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_minimumVolumeString "ForeignKey", -- 
	List additive,
	preparation TEXT, -- 
	_preparation "ForeignKey", -- 
	FOREIGN KEY ("specimenDefinition.id")
		REFERENCES specimenDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition_Additive(

	id TEXT PRIMARY KEY,
	"specimenDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	additiveCodeableConcept "ForeignKey", -- 
	additiveReference "ForeignKey", -- 
	FOREIGN KEY ("specimenDefinition.id")
		REFERENCES specimenDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition_Handling(

	id TEXT PRIMARY KEY,
	"specimenDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	temperatureQualifier "ForeignKey", -- 
	temperatureRange "ForeignKey", -- 
	maxDuration "ForeignKey", -- 
	instruction TEXT, -- 
	_instruction "ForeignKey", -- 
	FOREIGN KEY ("specimenDefinition.id")
		REFERENCES specimenDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition(

	resourceType TEXT, -- resourceType: StructureDefinition
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	List keyword,
	fhirVersion TEXT, -- enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion "ForeignKey", -- 
	List mapping,
	kind TEXT, -- enum: primitive-type/complex-type/resource/logical
	_kind "ForeignKey", -- 
	abstract BOOLEAN, -- 
	_abstract "ForeignKey", -- 
	List context,
	List contextInvariant,
	List _contextInvariant,
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	baseDefinition TEXT, -- 
	derivation TEXT, -- enum: specialization/constraint
	_derivation "ForeignKey", -- 
	snapshot "ForeignKey", -- 
	differential "ForeignKey", -- 
);

CREATE TABLE structureDefinition_Mapping(

	id TEXT PRIMARY KEY,
	"structureDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"identity" TEXT, -- 
	_identity "ForeignKey", -- 
	uri TEXT, -- 
	_uri "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	FOREIGN KEY ("structureDefinition.id")
		REFERENCES structureDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition_Context(

	id TEXT PRIMARY KEY,
	"structureDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: fhirpath/element/extension
	_type "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	FOREIGN KEY ("structureDefinition.id")
		REFERENCES structureDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition_Snapshot(

	id TEXT PRIMARY KEY,
	"structureDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List element,
	FOREIGN KEY ("structureDefinition.id")
		REFERENCES structureDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition_Differential(

	id TEXT PRIMARY KEY,
	"structureDefinition.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List element,
	FOREIGN KEY ("structureDefinition.id")
		REFERENCES structureDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap(

	resourceType TEXT, -- resourceType: StructureMap
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	List structure,
	List import,
	List group,
);

CREATE TABLE structureMap_Structure(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	mode TEXT, -- enum: source/queried/target/produced
	_mode "ForeignKey", -- 
	alias TEXT, -- 
	_alias "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Group(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	extends TEXT, -- 
	_extends "ForeignKey", -- 
	typeMode TEXT, -- enum: none/types/type-and-types
	_typeMode "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	List input,
	List rule,
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Input(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	mode TEXT, -- enum: source/target
	_mode "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Rule(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List source,
	List target,
	List rule,
	List dependent,
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Source(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	context TEXT, -- 
	_context "ForeignKey", -- 
	"min" INTEGER, -- 
	_min "ForeignKey", -- 
	"max" TEXT, -- 
	_max "ForeignKey", -- 
	"type" TEXT, -- 
	_type "ForeignKey", -- 
	defaultValueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_defaultValueBase64Binary "ForeignKey", -- 
	defaultValueBoolean BOOLEAN, -- pattern: ^true|false$
	_defaultValueBoolean "ForeignKey", -- 
	defaultValueCanonical TEXT, -- pattern: ^\S*$
	_defaultValueCanonical "ForeignKey", -- 
	defaultValueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_defaultValueCode "ForeignKey", -- 
	defaultValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_defaultValueDate "ForeignKey", -- 
	defaultValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_defaultValueDateTime "ForeignKey", -- 
	defaultValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_defaultValueDecimal "ForeignKey", -- 
	defaultValueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_defaultValueId "ForeignKey", -- 
	defaultValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_defaultValueInstant "ForeignKey", -- 
	defaultValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_defaultValueInteger "ForeignKey", -- 
	defaultValueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueMarkdown "ForeignKey", -- 
	defaultValueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_defaultValueOid "ForeignKey", -- 
	defaultValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_defaultValuePositiveInt "ForeignKey", -- 
	defaultValueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueString "ForeignKey", -- 
	defaultValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_defaultValueTime "ForeignKey", -- 
	defaultValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_defaultValueUnsignedInt "ForeignKey", -- 
	defaultValueUri TEXT, -- pattern: ^\S*$
	_defaultValueUri "ForeignKey", -- 
	defaultValueUrl TEXT, -- pattern: ^\S*$
	_defaultValueUrl "ForeignKey", -- 
	defaultValueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_defaultValueUuid "ForeignKey", -- 
	defaultValueAddress "ForeignKey", -- 
	defaultValueAge "ForeignKey", -- 
	defaultValueAnnotation "ForeignKey", -- 
	defaultValueAttachment "ForeignKey", -- 
	defaultValueCodeableConcept "ForeignKey", -- 
	defaultValueCoding "ForeignKey", -- 
	defaultValueContactPoint "ForeignKey", -- 
	defaultValueCount "ForeignKey", -- 
	defaultValueDistance "ForeignKey", -- 
	defaultValueDuration "ForeignKey", -- 
	defaultValueHumanName "ForeignKey", -- 
	defaultValueIdentifier "ForeignKey", -- 
	defaultValueMoney "ForeignKey", -- 
	defaultValuePeriod "ForeignKey", -- 
	defaultValueQuantity "ForeignKey", -- 
	defaultValueRange "ForeignKey", -- 
	defaultValueRatio "ForeignKey", -- 
	defaultValueReference "ForeignKey", -- 
	defaultValueSampledData "ForeignKey", -- 
	defaultValueSignature "ForeignKey", -- 
	defaultValueTiming "ForeignKey", -- 
	defaultValueContactDetail "ForeignKey", -- 
	defaultValueContributor "ForeignKey", -- 
	defaultValueDataRequirement "ForeignKey", -- 
	defaultValueExpression "ForeignKey", -- 
	defaultValueParameterDefinition "ForeignKey", -- 
	defaultValueRelatedArtifact "ForeignKey", -- 
	defaultValueTriggerDefinition "ForeignKey", -- 
	defaultValueUsageContext "ForeignKey", -- 
	defaultValueDosage "ForeignKey", -- 
	defaultValueMeta "ForeignKey", -- 
	element TEXT, -- 
	_element "ForeignKey", -- 
	listMode TEXT, -- enum: first/not_first/last/not_last/only_one
	_listMode "ForeignKey", -- 
	variable TEXT, -- 
	_variable "ForeignKey", -- 
	"condition" TEXT, -- 
	_condition "ForeignKey", -- 
	"check" TEXT, -- 
	_check "ForeignKey", -- 
	logMessage TEXT, -- 
	_logMessage "ForeignKey", -- 
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Target(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	context TEXT, -- 
	_context "ForeignKey", -- 
	contextType TEXT, -- enum: type/variable
	_contextType "ForeignKey", -- 
	element TEXT, -- 
	_element "ForeignKey", -- 
	variable TEXT, -- 
	_variable "ForeignKey", -- 
	List listMode,
	List _listMode,
	listRuleId TEXT, -- 
	_listRuleId "ForeignKey", -- 
	transform TEXT, -- enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp
	_transform "ForeignKey", -- 
	List parameter,
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Parameter(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Dependent(

	id TEXT PRIMARY KEY,
	"structureMap.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	List variable,
	List _variable,
	FOREIGN KEY ("structureMap.id")
		REFERENCES structureMap (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE subscription(

	resourceType TEXT, -- resourceType: Subscription
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"status" TEXT, -- enum: requested/active/error/off
	_status "ForeignKey", -- 
	List contact,
	"end" DATETIME, -- 
	_end "ForeignKey", -- 
	reason TEXT, -- 
	_reason "ForeignKey", -- 
	criteria TEXT, -- 
	_criteria "ForeignKey", -- 
	error TEXT, -- 
	_error "ForeignKey", -- 
	channel "ForeignKey", -- 
);

CREATE TABLE subscription_Channel(

	id TEXT PRIMARY KEY,
	"subscription.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: rest-hook/websocket/email/sms/message
	_type "ForeignKey", -- 
	"endpoint" TEXT, -- 
	_endpoint "ForeignKey", -- 
	payload TEXT, -- 
	_payload "ForeignKey", -- 
	List header,
	List _header,
	FOREIGN KEY ("subscription.id")
		REFERENCES subscription (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substance(

	resourceType TEXT, -- resourceType: Substance
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: active/inactive/entered-in-error
	_status "ForeignKey", -- 
	List category,
	"code" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List instance,
	List ingredient,
);

CREATE TABLE substance_Instance(

	id TEXT PRIMARY KEY,
	"substance.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	expiry DATETIME, -- 
	_expiry "ForeignKey", -- 
	quantity "ForeignKey", -- 
	FOREIGN KEY ("substance.id")
		REFERENCES substance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substance_Ingredient(

	id TEXT PRIMARY KEY,
	"substance.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	quantity "ForeignKey", -- 
	substanceCodeableConcept "ForeignKey", -- 
	substanceReference "ForeignKey", -- 
	FOREIGN KEY ("substance.id")
		REFERENCES substance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceNucleicAcid(

	resourceType TEXT, -- resourceType: SubstanceNucleicAcid
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	sequenceType "ForeignKey", -- 
	numberOfSubunits INTEGER, -- 
	_numberOfSubunits "ForeignKey", -- 
	areaOfHybridisation TEXT, -- 
	_areaOfHybridisation "ForeignKey", -- 
	oligoNucleotideType "ForeignKey", -- 
	List subunit,
);

CREATE TABLE substanceNucleicAcid_Subunit(

	id TEXT PRIMARY KEY,
	"substanceNucleicAcid.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	subunit INTEGER, -- 
	_subunit "ForeignKey", -- 
	"sequence" TEXT, -- 
	_sequence "ForeignKey", -- 
	"length" INTEGER, -- 
	_length "ForeignKey", -- 
	sequenceAttachment "ForeignKey", -- 
	fivePrime "ForeignKey", -- 
	threePrime "ForeignKey", -- 
	List linkage,
	List sugar,
	FOREIGN KEY ("substanceNucleicAcid.id")
		REFERENCES substanceNucleicAcid (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceNucleicAcid_Linkage(

	id TEXT PRIMARY KEY,
	"substanceNucleicAcid.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	connectivity TEXT, -- 
	_connectivity "ForeignKey", -- 
	identifier "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	residueSite TEXT, -- 
	_residueSite "ForeignKey", -- 
	FOREIGN KEY ("substanceNucleicAcid.id")
		REFERENCES substanceNucleicAcid (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceNucleicAcid_Sugar(

	id TEXT PRIMARY KEY,
	"substanceNucleicAcid.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	residueSite TEXT, -- 
	_residueSite "ForeignKey", -- 
	FOREIGN KEY ("substanceNucleicAcid.id")
		REFERENCES substanceNucleicAcid (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer(

	resourceType TEXT, -- resourceType: SubstancePolymer
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	class "ForeignKey", -- 
	geometry "ForeignKey", -- 
	List copolymerConnectivity,
	List modification,
	List _modification,
	List monomerSet,
	List repeat,
);

CREATE TABLE substancePolymer_MonomerSet(

	id TEXT PRIMARY KEY,
	"substancePolymer.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	ratioType "ForeignKey", -- 
	List startingMaterial,
	FOREIGN KEY ("substancePolymer.id")
		REFERENCES substancePolymer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_StartingMaterial(

	id TEXT PRIMARY KEY,
	"substancePolymer.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	material "ForeignKey", -- 
	"type" "ForeignKey", -- 
	isDefining BOOLEAN, -- 
	_isDefining "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("substancePolymer.id")
		REFERENCES substancePolymer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_Repeat(

	id TEXT PRIMARY KEY,
	"substancePolymer.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	numberOfUnits INTEGER, -- 
	_numberOfUnits "ForeignKey", -- 
	averageMolecularFormula TEXT, -- 
	_averageMolecularFormula "ForeignKey", -- 
	repeatUnitAmountType "ForeignKey", -- 
	List repeatUnit,
	FOREIGN KEY ("substancePolymer.id")
		REFERENCES substancePolymer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_RepeatUnit(

	id TEXT PRIMARY KEY,
	"substancePolymer.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	orientationOfPolymerisation "ForeignKey", -- 
	repeatUnit TEXT, -- 
	_repeatUnit "ForeignKey", -- 
	amount "ForeignKey", -- 
	List degreeOfPolymerisation,
	List structuralRepresentation,
	FOREIGN KEY ("substancePolymer.id")
		REFERENCES substancePolymer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_DegreeOfPolymerisation(

	id TEXT PRIMARY KEY,
	"substancePolymer.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	degree "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("substancePolymer.id")
		REFERENCES substancePolymer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_StructuralRepresentation(

	id TEXT PRIMARY KEY,
	"substancePolymer.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	representation TEXT, -- 
	_representation "ForeignKey", -- 
	attachment "ForeignKey", -- 
	FOREIGN KEY ("substancePolymer.id")
		REFERENCES substancePolymer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceProtein(

	resourceType TEXT, -- resourceType: SubstanceProtein
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	sequenceType "ForeignKey", -- 
	numberOfSubunits INTEGER, -- 
	_numberOfSubunits "ForeignKey", -- 
	List disulfideLinkage,
	List _disulfideLinkage,
	List subunit,
);

CREATE TABLE substanceProtein_Subunit(

	id TEXT PRIMARY KEY,
	"substanceProtein.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	subunit INTEGER, -- 
	_subunit "ForeignKey", -- 
	"sequence" TEXT, -- 
	_sequence "ForeignKey", -- 
	"length" INTEGER, -- 
	_length "ForeignKey", -- 
	sequenceAttachment "ForeignKey", -- 
	nTerminalModificationId "ForeignKey", -- 
	nTerminalModification TEXT, -- 
	_nTerminalModification "ForeignKey", -- 
	cTerminalModificationId "ForeignKey", -- 
	cTerminalModification TEXT, -- 
	_cTerminalModification "ForeignKey", -- 
	FOREIGN KEY ("substanceProtein.id")
		REFERENCES substanceProtein (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation(

	resourceType TEXT, -- resourceType: SubstanceReferenceInformation
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	List gene,
	List geneElement,
	List classification,
	List target,
);

CREATE TABLE substanceReferenceInformation_Gene(

	id TEXT PRIMARY KEY,
	"substanceReferenceInformation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	geneSequenceOrigin "ForeignKey", -- 
	gene "ForeignKey", -- 
	List source,
	FOREIGN KEY ("substanceReferenceInformation.id")
		REFERENCES substanceReferenceInformation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation_GeneElement(

	id TEXT PRIMARY KEY,
	"substanceReferenceInformation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	element "ForeignKey", -- 
	List source,
	FOREIGN KEY ("substanceReferenceInformation.id")
		REFERENCES substanceReferenceInformation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation_Classification(

	id TEXT PRIMARY KEY,
	"substanceReferenceInformation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"domain" "ForeignKey", -- 
	classification "ForeignKey", -- 
	List subtype,
	List source,
	FOREIGN KEY ("substanceReferenceInformation.id")
		REFERENCES substanceReferenceInformation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation_Target(

	id TEXT PRIMARY KEY,
	"substanceReferenceInformation.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"target" "ForeignKey", -- 
	"type" "ForeignKey", -- 
	interaction "ForeignKey", -- 
	organism "ForeignKey", -- 
	organismType "ForeignKey", -- 
	amountQuantity "ForeignKey", -- 
	amountRange "ForeignKey", -- 
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString "ForeignKey", -- 
	amountType "ForeignKey", -- 
	List source,
	FOREIGN KEY ("substanceReferenceInformation.id")
		REFERENCES substanceReferenceInformation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial(

	resourceType TEXT, -- resourceType: SubstanceSourceMaterial
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	sourceMaterialClass "ForeignKey", -- 
	sourceMaterialType "ForeignKey", -- 
	sourceMaterialState "ForeignKey", -- 
	organismId "ForeignKey", -- 
	organismName TEXT, -- 
	_organismName "ForeignKey", -- 
	List parentSubstanceId,
	List parentSubstanceName,
	List _parentSubstanceName,
	List countryOfOrigin,
	List geographicalLocation,
	List _geographicalLocation,
	developmentStage "ForeignKey", -- 
	List fractionDescription,
	organism "ForeignKey", -- 
	List partDescription,
);

CREATE TABLE substanceSourceMaterial_FractionDescription(

	id TEXT PRIMARY KEY,
	"substanceSourceMaterial.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	fraction TEXT, -- 
	_fraction "ForeignKey", -- 
	materialType "ForeignKey", -- 
	FOREIGN KEY ("substanceSourceMaterial.id")
		REFERENCES substanceSourceMaterial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_Organism(

	id TEXT PRIMARY KEY,
	"substanceSourceMaterial.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	family "ForeignKey", -- 
	genus "ForeignKey", -- 
	species "ForeignKey", -- 
	intraspecificType "ForeignKey", -- 
	intraspecificDescription TEXT, -- 
	_intraspecificDescription "ForeignKey", -- 
	List author,
	hybrid "ForeignKey", -- 
	organismGeneral "ForeignKey", -- 
	FOREIGN KEY ("substanceSourceMaterial.id")
		REFERENCES substanceSourceMaterial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_Author(

	id TEXT PRIMARY KEY,
	"substanceSourceMaterial.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	authorType "ForeignKey", -- 
	authorDescription TEXT, -- 
	_authorDescription "ForeignKey", -- 
	FOREIGN KEY ("substanceSourceMaterial.id")
		REFERENCES substanceSourceMaterial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_Hybrid(

	id TEXT PRIMARY KEY,
	"substanceSourceMaterial.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	maternalOrganismId TEXT, -- 
	_maternalOrganismId "ForeignKey", -- 
	maternalOrganismName TEXT, -- 
	_maternalOrganismName "ForeignKey", -- 
	paternalOrganismId TEXT, -- 
	_paternalOrganismId "ForeignKey", -- 
	paternalOrganismName TEXT, -- 
	_paternalOrganismName "ForeignKey", -- 
	hybridType "ForeignKey", -- 
	FOREIGN KEY ("substanceSourceMaterial.id")
		REFERENCES substanceSourceMaterial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_OrganismGeneral(

	id TEXT PRIMARY KEY,
	"substanceSourceMaterial.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	kingdom "ForeignKey", -- 
	phylum "ForeignKey", -- 
	class "ForeignKey", -- 
	"order" "ForeignKey", -- 
	FOREIGN KEY ("substanceSourceMaterial.id")
		REFERENCES substanceSourceMaterial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_PartDescription(

	id TEXT PRIMARY KEY,
	"substanceSourceMaterial.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	part "ForeignKey", -- 
	partLocation "ForeignKey", -- 
	FOREIGN KEY ("substanceSourceMaterial.id")
		REFERENCES substanceSourceMaterial (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification(

	resourceType TEXT, -- resourceType: SubstanceSpecification
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"status" "ForeignKey", -- 
	"domain" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List source,
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	List moiety,
	List property,
	referenceInformation "ForeignKey", -- 
	"structure" "ForeignKey", -- 
	List code,
	List name,
	List molecularWeight,
	List relationship,
	nucleicAcid "ForeignKey", -- 
	polymer "ForeignKey", -- 
	protein "ForeignKey", -- 
	sourceMaterial "ForeignKey", -- 
);

CREATE TABLE substanceSpecification_Moiety(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"role" "ForeignKey", -- 
	identifier "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	stereochemistry "ForeignKey", -- 
	opticalActivity "ForeignKey", -- 
	molecularFormula TEXT, -- 
	_molecularFormula "ForeignKey", -- 
	amountQuantity "ForeignKey", -- 
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString "ForeignKey", -- 
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Property(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	category "ForeignKey", -- 
	"code" "ForeignKey", -- 
	parameters TEXT, -- 
	_parameters "ForeignKey", -- 
	definingSubstanceReference "ForeignKey", -- 
	definingSubstanceCodeableConcept "ForeignKey", -- 
	amountQuantity "ForeignKey", -- 
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString "ForeignKey", -- 
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Structure(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	stereochemistry "ForeignKey", -- 
	opticalActivity "ForeignKey", -- 
	molecularFormula TEXT, -- 
	_molecularFormula "ForeignKey", -- 
	molecularFormulaByMoiety TEXT, -- 
	_molecularFormulaByMoiety "ForeignKey", -- 
	List isotope,
	molecularWeight "ForeignKey", -- 
	List source,
	List representation,
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Isotope(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"name" "ForeignKey", -- 
	substitution "ForeignKey", -- 
	halfLife "ForeignKey", -- 
	molecularWeight "ForeignKey", -- 
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_MolecularWeight(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"method" "ForeignKey", -- 
	"type" "ForeignKey", -- 
	amount "ForeignKey", -- 
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Representation(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	representation TEXT, -- 
	_representation "ForeignKey", -- 
	attachment "ForeignKey", -- 
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Code(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	"status" "ForeignKey", -- 
	statusDate DATETIME, -- 
	_statusDate "ForeignKey", -- 
	comment TEXT, -- 
	_comment "ForeignKey", -- 
	List source,
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Name(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"type" "ForeignKey", -- 
	"status" "ForeignKey", -- 
	preferred BOOLEAN, -- 
	_preferred "ForeignKey", -- 
	List language,
	List domain,
	List jurisdiction,
	List synonym,
	List translation,
	List official,
	List source,
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Official(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	authority "ForeignKey", -- 
	"status" "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Relationship(

	id TEXT PRIMARY KEY,
	"substanceSpecification.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	substanceReference "ForeignKey", -- 
	substanceCodeableConcept "ForeignKey", -- 
	relationship "ForeignKey", -- 
	isDefining BOOLEAN, -- 
	_isDefining "ForeignKey", -- 
	amountQuantity "ForeignKey", -- 
	amountRange "ForeignKey", -- 
	amountRatio "ForeignKey", -- 
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString "ForeignKey", -- 
	amountRatioLowLimit "ForeignKey", -- 
	amountType "ForeignKey", -- 
	List source,
	FOREIGN KEY ("substanceSpecification.id")
		REFERENCES substanceSpecification (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE supplyDelivery(

	resourceType TEXT, -- resourceType: SupplyDelivery
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	List basedOn,
	List partOf,
	"status" TEXT, -- enum: in-progress/completed/abandoned/entered-in-error
	_status "ForeignKey", -- 
	patient "ForeignKey", -- 
	"type" "ForeignKey", -- 
	suppliedItem "ForeignKey", -- 
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	occurrenceTiming "ForeignKey", -- 
	supplier "ForeignKey", -- 
	destination "ForeignKey", -- 
	List receiver,
);

CREATE TABLE supplyDelivery_SuppliedItem(

	id TEXT PRIMARY KEY,
	"supplyDelivery.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	quantity "ForeignKey", -- 
	itemCodeableConcept "ForeignKey", -- 
	itemReference "ForeignKey", -- 
	FOREIGN KEY ("supplyDelivery.id")
		REFERENCES supplyDelivery (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE supplyRequest(

	resourceType TEXT, -- resourceType: SupplyRequest
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- enum: draft/active/suspended/cancelled/completed/entered-in-error/unknown
	_status "ForeignKey", -- 
	category "ForeignKey", -- 
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	itemCodeableConcept "ForeignKey", -- 
	itemReference "ForeignKey", -- 
	quantity "ForeignKey", -- 
	List parameter,
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime "ForeignKey", -- 
	occurrencePeriod "ForeignKey", -- 
	occurrenceTiming "ForeignKey", -- 
	authoredOn DATETIME, -- 
	_authoredOn "ForeignKey", -- 
	requester "ForeignKey", -- 
	List supplier,
	List reasonCode,
	List reasonReference,
	deliverFrom "ForeignKey", -- 
	deliverTo "ForeignKey", -- 
);

CREATE TABLE supplyRequest_Parameter(

	id TEXT PRIMARY KEY,
	"supplyRequest.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	FOREIGN KEY ("supplyRequest.id")
		REFERENCES supplyRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE task(

	resourceType TEXT, -- resourceType: Task
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	instantiatesCanonical TEXT, -- 
	instantiatesUri TEXT, -- 
	_instantiatesUri "ForeignKey", -- 
	List basedOn,
	groupIdentifier "ForeignKey", -- 
	List partOf,
	"status" TEXT, -- enum: draft/requested/received/accepted/rejected/ready/cancelled/in-progress/on-hold/failed/completed/entered-in-error
	_status "ForeignKey", -- 
	statusReason "ForeignKey", -- 
	businessStatus "ForeignKey", -- 
	intent TEXT, -- enum: unknown/proposal/plan/order/original-order/reflex-order/filler-order/instance-order/option
	_intent "ForeignKey", -- 
	"priority" TEXT, -- 
	_priority "ForeignKey", -- 
	"code" "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	focus "ForeignKey", -- 
	"for" "ForeignKey", -- 
	encounter "ForeignKey", -- 
	executionPeriod "ForeignKey", -- 
	authoredOn DATETIME, -- 
	_authoredOn "ForeignKey", -- 
	lastModified DATETIME, -- 
	_lastModified "ForeignKey", -- 
	requester "ForeignKey", -- 
	List performerType,
	"owner" "ForeignKey", -- 
	"location" "ForeignKey", -- 
	reasonCode "ForeignKey", -- 
	reasonReference "ForeignKey", -- 
	List insurance,
	List note,
	List relevantHistory,
	restriction "ForeignKey", -- 
	List input,
	List output,
);

CREATE TABLE task_Restriction(

	id TEXT PRIMARY KEY,
	"task.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	repetitions INTEGER, -- 
	_repetitions "ForeignKey", -- 
	"period" "ForeignKey", -- 
	List recipient,
	FOREIGN KEY ("task.id")
		REFERENCES task (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE task_Input(

	id TEXT PRIMARY KEY,
	"task.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical "ForeignKey", -- 
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId "ForeignKey", -- 
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown "ForeignKey", -- 
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid "ForeignKey", -- 
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl "ForeignKey", -- 
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid "ForeignKey", -- 
	valueAddress "ForeignKey", -- 
	valueAge "ForeignKey", -- 
	valueAnnotation "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueContactPoint "ForeignKey", -- 
	valueCount "ForeignKey", -- 
	valueDistance "ForeignKey", -- 
	valueDuration "ForeignKey", -- 
	valueHumanName "ForeignKey", -- 
	valueIdentifier "ForeignKey", -- 
	valueMoney "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueRatio "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	valueSampledData "ForeignKey", -- 
	valueSignature "ForeignKey", -- 
	valueTiming "ForeignKey", -- 
	valueContactDetail "ForeignKey", -- 
	valueContributor "ForeignKey", -- 
	valueDataRequirement "ForeignKey", -- 
	valueExpression "ForeignKey", -- 
	valueParameterDefinition "ForeignKey", -- 
	valueRelatedArtifact "ForeignKey", -- 
	valueTriggerDefinition "ForeignKey", -- 
	valueUsageContext "ForeignKey", -- 
	valueDosage "ForeignKey", -- 
	valueMeta "ForeignKey", -- 
	FOREIGN KEY ("task.id")
		REFERENCES task (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE task_Output(

	id TEXT PRIMARY KEY,
	"task.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical "ForeignKey", -- 
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode "ForeignKey", -- 
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId "ForeignKey", -- 
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown "ForeignKey", -- 
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid "ForeignKey", -- 
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime "ForeignKey", -- 
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl "ForeignKey", -- 
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid "ForeignKey", -- 
	valueAddress "ForeignKey", -- 
	valueAge "ForeignKey", -- 
	valueAnnotation "ForeignKey", -- 
	valueAttachment "ForeignKey", -- 
	valueCodeableConcept "ForeignKey", -- 
	valueCoding "ForeignKey", -- 
	valueContactPoint "ForeignKey", -- 
	valueCount "ForeignKey", -- 
	valueDistance "ForeignKey", -- 
	valueDuration "ForeignKey", -- 
	valueHumanName "ForeignKey", -- 
	valueIdentifier "ForeignKey", -- 
	valueMoney "ForeignKey", -- 
	valuePeriod "ForeignKey", -- 
	valueQuantity "ForeignKey", -- 
	valueRange "ForeignKey", -- 
	valueRatio "ForeignKey", -- 
	valueReference "ForeignKey", -- 
	valueSampledData "ForeignKey", -- 
	valueSignature "ForeignKey", -- 
	valueTiming "ForeignKey", -- 
	valueContactDetail "ForeignKey", -- 
	valueContributor "ForeignKey", -- 
	valueDataRequirement "ForeignKey", -- 
	valueExpression "ForeignKey", -- 
	valueParameterDefinition "ForeignKey", -- 
	valueRelatedArtifact "ForeignKey", -- 
	valueTriggerDefinition "ForeignKey", -- 
	valueUsageContext "ForeignKey", -- 
	valueDosage "ForeignKey", -- 
	valueMeta "ForeignKey", -- 
	FOREIGN KEY ("task.id")
		REFERENCES task (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities(

	resourceType TEXT, -- resourceType: TerminologyCapabilities
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	kind TEXT, -- 
	_kind "ForeignKey", -- 
	software "ForeignKey", -- 
	"implementation" "ForeignKey", -- 
	lockedDate BOOLEAN, -- 
	_lockedDate "ForeignKey", -- 
	List codeSystem,
	expansion "ForeignKey", -- 
	codeSearch TEXT, -- enum: explicit/all
	_codeSearch "ForeignKey", -- 
	validateCode "ForeignKey", -- 
	"translation" "ForeignKey", -- 
	closure "ForeignKey", -- 
);

CREATE TABLE terminologyCapabilities_Software(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Implementation(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_CodeSystem(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	uri TEXT, -- 
	List version,
	subsumption BOOLEAN, -- 
	_subsumption "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Version(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	isDefault BOOLEAN, -- 
	_isDefault "ForeignKey", -- 
	compositional BOOLEAN, -- 
	_compositional "ForeignKey", -- 
	List language,
	List _language,
	List filter,
	List property,
	List _property,
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Filter(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	List op,
	List _op,
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Expansion(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	hierarchical BOOLEAN, -- 
	_hierarchical "ForeignKey", -- 
	paging BOOLEAN, -- 
	_paging "ForeignKey", -- 
	incomplete BOOLEAN, -- 
	_incomplete "ForeignKey", -- 
	List parameter,
	textFilter TEXT, -- 
	_textFilter "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Parameter(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	documentation TEXT, -- 
	_documentation "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_ValidateCode(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	translations BOOLEAN, -- 
	_translations "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Translation(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	needsMap BOOLEAN, -- 
	_needsMap "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Closure(

	id TEXT PRIMARY KEY,
	"terminologyCapabilities.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"translation" BOOLEAN, -- 
	_translation "ForeignKey", -- 
	FOREIGN KEY ("terminologyCapabilities.id")
		REFERENCES terminologyCapabilities (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport(

	resourceType TEXT, -- resourceType: TestReport
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	identifier "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"status" TEXT, -- enum: completed/in-progress/waiting/stopped/entered-in-error
	_status "ForeignKey", -- 
	testScript "ForeignKey", -- 
	"result" TEXT, -- enum: pass/fail/pending
	_result "ForeignKey", -- 
	score REAL, -- 
	_score "ForeignKey", -- 
	tester TEXT, -- 
	_tester "ForeignKey", -- 
	issued DATETIME, -- 
	_issued "ForeignKey", -- 
	List participant,
	setup "ForeignKey", -- 
	List test,
	teardown "ForeignKey", -- 
);

CREATE TABLE testReport_Participant(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" TEXT, -- enum: test-engine/client/server
	_type "ForeignKey", -- 
	uri TEXT, -- 
	_uri "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Setup(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List action,
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Action(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	operation "ForeignKey", -- 
	assert "ForeignKey", -- 
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Operation(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"result" TEXT, -- enum: pass/skip/fail/warning/error
	_result "ForeignKey", -- 
	message TEXT, -- 
	_message "ForeignKey", -- 
	detail TEXT, -- 
	_detail "ForeignKey", -- 
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Assert(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"result" TEXT, -- enum: pass/skip/fail/warning/error
	_result "ForeignKey", -- 
	message TEXT, -- 
	_message "ForeignKey", -- 
	detail TEXT, -- 
	_detail "ForeignKey", -- 
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Test(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List action,
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Action1(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	operation "ForeignKey", -- 
	assert "ForeignKey", -- 
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Teardown(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List action,
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Action2(

	id TEXT PRIMARY KEY,
	"testReport.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	operation "ForeignKey", -- 
	FOREIGN KEY ("testReport.id")
		REFERENCES testReport (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript(

	resourceType TEXT, -- resourceType: TestScript
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	identifier "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	List origin,
	List destination,
	metadata "ForeignKey", -- 
	List fixture,
	List profile,
	List variable,
	setup "ForeignKey", -- 
	List test,
	teardown "ForeignKey", -- 
);

CREATE TABLE testScript_Origin(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"index" INTEGER, -- 
	_index "ForeignKey", -- 
	"profile" "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Destination(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"index" INTEGER, -- 
	_index "ForeignKey", -- 
	"profile" "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Metadata(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List link,
	List capability,
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Link(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Capability(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	required BOOLEAN, -- 
	_required "ForeignKey", -- 
	validated BOOLEAN, -- 
	_validated "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List origin,
	List _origin,
	destination INTEGER, -- 
	_destination "ForeignKey", -- 
	List link,
	List _link,
	capabilities TEXT, -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Fixture(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	autocreate BOOLEAN, -- 
	_autocreate "ForeignKey", -- 
	autodelete BOOLEAN, -- 
	_autodelete "ForeignKey", -- 
	resource "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Variable(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	defaultValue TEXT, -- 
	_defaultValue "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	headerField TEXT, -- 
	_headerField "ForeignKey", -- 
	hint TEXT, -- 
	_hint "ForeignKey", -- 
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	sourceId TEXT, -- 
	_sourceId "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Setup(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List action,
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Action(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	operation "ForeignKey", -- 
	assert "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Operation(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"type" "ForeignKey", -- 
	resource TEXT, -- 
	_resource "ForeignKey", -- 
	label TEXT, -- 
	_label "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	accept TEXT, -- 
	_accept "ForeignKey", -- 
	contentType TEXT, -- 
	_contentType "ForeignKey", -- 
	destination INTEGER, -- 
	_destination "ForeignKey", -- 
	encodeRequestUrl BOOLEAN, -- 
	_encodeRequestUrl "ForeignKey", -- 
	"method" TEXT, -- enum: delete/get/options/patch/post/put/head
	_method "ForeignKey", -- 
	origin INTEGER, -- 
	_origin "ForeignKey", -- 
	params TEXT, -- 
	_params "ForeignKey", -- 
	List requestHeader,
	requestId TEXT, -- 
	_requestId "ForeignKey", -- 
	responseId TEXT, -- 
	_responseId "ForeignKey", -- 
	sourceId TEXT, -- 
	_sourceId "ForeignKey", -- 
	targetId TEXT, -- 
	_targetId "ForeignKey", -- 
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_RequestHeader(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	field TEXT, -- 
	_field "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Assert(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	label TEXT, -- 
	_label "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	direction TEXT, -- enum: response/request
	_direction "ForeignKey", -- 
	compareToSourceId TEXT, -- 
	_compareToSourceId "ForeignKey", -- 
	compareToSourceExpression TEXT, -- 
	_compareToSourceExpression "ForeignKey", -- 
	compareToSourcePath TEXT, -- 
	_compareToSourcePath "ForeignKey", -- 
	contentType TEXT, -- 
	_contentType "ForeignKey", -- 
	expression TEXT, -- 
	_expression "ForeignKey", -- 
	headerField TEXT, -- 
	_headerField "ForeignKey", -- 
	minimumId TEXT, -- 
	_minimumId "ForeignKey", -- 
	navigationLinks BOOLEAN, -- 
	_navigationLinks "ForeignKey", -- 
	operator TEXT, -- enum: equals/notEquals/in/notIn/greaterThan/lessThan/empty/notEmpty/contains/notContains/eval
	_operator "ForeignKey", -- 
	"path" TEXT, -- 
	_path "ForeignKey", -- 
	requestMethod TEXT, -- enum: delete/get/options/patch/post/put/head
	_requestMethod "ForeignKey", -- 
	requestURL TEXT, -- 
	_requestURL "ForeignKey", -- 
	resource TEXT, -- 
	_resource "ForeignKey", -- 
	response TEXT, -- enum: okay/created/noContent/notModified/bad/forbidden/notFound/methodNotAllowed/conflict/gone/preconditionFailed/unprocessable
	_response "ForeignKey", -- 
	responseCode TEXT, -- 
	_responseCode "ForeignKey", -- 
	sourceId TEXT, -- 
	_sourceId "ForeignKey", -- 
	validateProfileId TEXT, -- 
	_validateProfileId "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	warningOnly BOOLEAN, -- 
	_warningOnly "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Test(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List action,
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Action1(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	operation "ForeignKey", -- 
	assert "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Teardown(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	List action,
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Action2(

	id TEXT PRIMARY KEY,
	"testScript.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	operation "ForeignKey", -- 
	FOREIGN KEY ("testScript.id")
		REFERENCES testScript (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet(

	resourceType TEXT, -- resourceType: ValueSet
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	"url" TEXT, -- 
	_url "ForeignKey", -- 
	List identifier,
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	title TEXT, -- 
	_title "ForeignKey", -- 
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status "ForeignKey", -- 
	experimental BOOLEAN, -- 
	_experimental "ForeignKey", -- 
	"date" DATETIME, -- 
	_date "ForeignKey", -- 
	publisher TEXT, -- 
	_publisher "ForeignKey", -- 
	List contact,
	"description" TEXT, -- 
	_description "ForeignKey", -- 
	List useContext,
	List jurisdiction,
	immutable BOOLEAN, -- 
	_immutable "ForeignKey", -- 
	purpose TEXT, -- 
	_purpose "ForeignKey", -- 
	copyright TEXT, -- 
	_copyright "ForeignKey", -- 
	compose "ForeignKey", -- 
	expansion "ForeignKey", -- 
);

CREATE TABLE valueSet_Compose(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	lockedDate DATE, -- 
	_lockedDate "ForeignKey", -- 
	inactive BOOLEAN, -- 
	_inactive "ForeignKey", -- 
	List include,
	List exclude,
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Include(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	List concept,
	List filter,
	List valueSet,
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Concept(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	List designation,
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Designation(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"use" "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Filter(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	property TEXT, -- 
	_property "ForeignKey", -- 
	op TEXT, -- enum: =/is-a/descendent-of/is-not-a/regex/in/not-in/generalizes/exists
	_op "ForeignKey", -- 
	"value" TEXT, -- 
	_value "ForeignKey", -- 
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Expansion(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	identifier TEXT, -- 
	_identifier "ForeignKey", -- 
	"timestamp" DATETIME, -- 
	_timestamp "ForeignKey", -- 
	total INTEGER, -- 
	_total "ForeignKey", -- 
	offset INTEGER, -- 
	_offset "ForeignKey", -- 
	List parameter,
	List contains,
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Parameter(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"name" TEXT, -- 
	_name "ForeignKey", -- 
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString "ForeignKey", -- 
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean "ForeignKey", -- 
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger "ForeignKey", -- 
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal "ForeignKey", -- 
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri "ForeignKey", -- 
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode "ForeignKey", -- 
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime "ForeignKey", -- 
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Contains(

	id TEXT PRIMARY KEY,
	"valueSet.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	"system" TEXT, -- 
	_system "ForeignKey", -- 
	abstract BOOLEAN, -- 
	_abstract "ForeignKey", -- 
	inactive BOOLEAN, -- 
	_inactive "ForeignKey", -- 
	"version" TEXT, -- 
	_version "ForeignKey", -- 
	"code" TEXT, -- 
	_code "ForeignKey", -- 
	display TEXT, -- 
	_display "ForeignKey", -- 
	List designation,
	List contains,
	FOREIGN KEY ("valueSet.id")
		REFERENCES valueSet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE verificationResult(

	resourceType TEXT, -- resourceType: VerificationResult
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List target,
	List targetLocation,
	List _targetLocation,
	need "ForeignKey", -- 
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	statusDate DATETIME, -- 
	_statusDate "ForeignKey", -- 
	validationType "ForeignKey", -- 
	List validationProcess,
	frequency "ForeignKey", -- 
	lastPerformed DATETIME, -- 
	_lastPerformed "ForeignKey", -- 
	nextScheduled DATE, -- 
	_nextScheduled "ForeignKey", -- 
	failureAction "ForeignKey", -- 
	List primarySource,
	attestation "ForeignKey", -- 
	List validator,
);

CREATE TABLE verificationResult_PrimarySource(

	id TEXT PRIMARY KEY,
	"verificationResult.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	who "ForeignKey", -- 
	List type,
	List communicationMethod,
	validationStatus "ForeignKey", -- 
	validationDate DATETIME, -- 
	_validationDate "ForeignKey", -- 
	canPushUpdates "ForeignKey", -- 
	List pushTypeAvailable,
	FOREIGN KEY ("verificationResult.id")
		REFERENCES verificationResult (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE verificationResult_Attestation(

	id TEXT PRIMARY KEY,
	"verificationResult.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	who "ForeignKey", -- 
	onBehalfOf "ForeignKey", -- 
	communicationMethod "ForeignKey", -- 
	"date" DATE, -- 
	_date "ForeignKey", -- 
	sourceIdentityCertificate TEXT, -- 
	_sourceIdentityCertificate "ForeignKey", -- 
	proxyIdentityCertificate TEXT, -- 
	_proxyIdentityCertificate "ForeignKey", -- 
	proxySignature "ForeignKey", -- 
	sourceSignature "ForeignKey", -- 
	FOREIGN KEY ("verificationResult.id")
		REFERENCES verificationResult (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE verificationResult_Validator(

	id TEXT PRIMARY KEY,
	"verificationResult.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	organization "ForeignKey", -- 
	identityCertificate TEXT, -- 
	_identityCertificate "ForeignKey", -- 
	attestationSignature "ForeignKey", -- 
	FOREIGN KEY ("verificationResult.id")
		REFERENCES verificationResult (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE visionPrescription(

	resourceType TEXT, -- resourceType: VisionPrescription
	id TEXT PRIMARY KEY,
	meta "ForeignKey", -- 
	implicitRules TEXT, -- 
	_implicitRules "ForeignKey", -- 
	"language" TEXT, -- 
	_language "ForeignKey", -- 
	"text" "ForeignKey", -- 
	List contained,
	List extension,
	List modifierExtension,
	List identifier,
	"status" TEXT, -- 
	_status "ForeignKey", -- 
	created DATETIME, -- 
	_created "ForeignKey", -- 
	patient "ForeignKey", -- 
	encounter "ForeignKey", -- 
	dateWritten DATETIME, -- 
	_dateWritten "ForeignKey", -- 
	prescriber "ForeignKey", -- 
	List lensSpecification,
);

CREATE TABLE visionPrescription_LensSpecification(

	id TEXT PRIMARY KEY,
	"visionPrescription.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	product "ForeignKey", -- 
	eye TEXT, -- enum: right/left
	_eye "ForeignKey", -- 
	sphere REAL, -- 
	_sphere "ForeignKey", -- 
	cylinder REAL, -- 
	_cylinder "ForeignKey", -- 
	axis INTEGER, -- 
	_axis "ForeignKey", -- 
	List prism,
	"add" REAL, -- 
	_add "ForeignKey", -- 
	power REAL, -- 
	_power "ForeignKey", -- 
	backCurve REAL, -- 
	_backCurve "ForeignKey", -- 
	diameter REAL, -- 
	_diameter "ForeignKey", -- 
	duration "ForeignKey", -- 
	color TEXT, -- 
	_color "ForeignKey", -- 
	brand TEXT, -- 
	_brand "ForeignKey", -- 
	List note,
	FOREIGN KEY ("visionPrescription.id")
		REFERENCES visionPrescription (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE visionPrescription_Prism(

	id TEXT PRIMARY KEY,
	"visionPrescription.id" TEXT,--FOREIGN KEY
	List extension,
	List modifierExtension,
	amount REAL, -- 
	_amount "ForeignKey", -- 
	base TEXT, -- enum: up/down/in/out
	_base "ForeignKey", -- 
	FOREIGN KEY ("visionPrescription.id")
		REFERENCES visionPrescription (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

