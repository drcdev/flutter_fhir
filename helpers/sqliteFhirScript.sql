CREATE TABLE element(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension

);

CREATE TABLE extension(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical TEXT, -- Foreign Key to element table
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId TEXT, -- Foreign Key to element table
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown TEXT, -- Foreign Key to element table
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid TEXT, -- Foreign Key to element table
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl TEXT, -- Foreign Key to element table
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid TEXT, -- Foreign Key to element table
	valueAddress TEXT, -- Foreign Key to address table
	valueAge TEXT, -- Foreign Key to age table
	valueAnnotation TEXT, -- Foreign Key to annotation table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueCoding TEXT, -- Foreign Key to coding table
	valueContactPoint TEXT, -- Foreign Key to contactPoint table
	valueCount TEXT, -- Foreign Key to count table
	valueDistance TEXT, -- Foreign Key to distance table
	valueDuration TEXT, -- Foreign Key to duration table
	valueHumanName TEXT, -- Foreign Key to humanName table
	valueIdentifier TEXT, -- Foreign Key to identifier table
	valueMoney TEXT, -- Foreign Key to money table
	valuePeriod TEXT, -- Foreign Key to period table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueRatio TEXT, -- Foreign Key to ratio table
	valueReference TEXT, -- Foreign Key to reference table
	valueSampledData TEXT, -- Foreign Key to sampledData table
	valueSignature TEXT, -- Foreign Key to signature table
	valueTiming TEXT, -- Foreign Key to timing table
	valueContactDetail TEXT, -- Foreign Key to contactDetail table
	valueContributor TEXT, -- Foreign Key to contributor table
	valueDataRequirement TEXT, -- Foreign Key to dataRequirement table
	valueExpression TEXT, -- Foreign Key to expression table
	valueParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	valueRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	valueTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	valueUsageContext TEXT, -- Foreign Key to usageContext table
	valueDosage TEXT, -- Foreign Key to dosage table
	valueMeta TEXT, -- Foreign Key to meta table

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE narrative(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"status" TEXT, -- enum: generated/extensions/additional/empty
	_status TEXT, -- Foreign Key to element table
	div TEXT,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE annotation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	authorReference TEXT, -- Foreign Key to reference table
	authorString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_authorString TEXT, -- Foreign Key to element table
	"time" DATETIME,
	_time TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table

	FOREIGN KEY (authorReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_time)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE attachment(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	contentType TEXT,
	_contentType TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"data" TEXT,
	_data TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"size" INTEGER,
	_size TEXT, -- Foreign Key to element table
	"hash" TEXT,
	_hash TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	creation DATETIME,
	_creation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_contentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_size)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_hash)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_creation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE identifier(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"use" TEXT, -- enum: usual/official/temp/secondary/old
	_use TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	assigner TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assigner)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeableConcept(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	coding **LIST** Coding,
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coding(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	userSelected BOOLEAN,
	_userSelected TEXT, -- Foreign Key to element table

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_userSelected)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE quantity(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	comparator TEXT, -- enum: </<=/>=/>
	_comparator TEXT, -- Foreign Key to element table
	unit TEXT,
	_unit TEXT, -- Foreign Key to element table
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE duration(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	comparator TEXT, -- enum: </<=/>=/>
	_comparator TEXT, -- Foreign Key to element table
	unit TEXT,
	_unit TEXT, -- Foreign Key to element table
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE distance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	comparator TEXT, -- enum: </<=/>=/>
	_comparator TEXT, -- Foreign Key to element table
	unit TEXT,
	_unit TEXT, -- Foreign Key to element table
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "count"(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	comparator TEXT, -- enum: </<=/>=/>
	_comparator TEXT, -- Foreign Key to element table
	unit TEXT,
	_unit TEXT, -- Foreign Key to element table
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE money(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	currency TEXT,
	_currency TEXT, -- Foreign Key to element table

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_currency)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE age(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	comparator TEXT, -- enum: </<=/>=/>
	_comparator TEXT, -- Foreign Key to element table
	unit TEXT,
	_unit TEXT, -- Foreign Key to element table
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comparator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_unit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "range"(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	low TEXT, -- Foreign Key to quantity table
	high TEXT, -- Foreign Key to quantity table

	FOREIGN KEY (low)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (high)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "period"(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"start" DATETIME,
	_start TEXT, -- Foreign Key to element table
	"end" DATETIME,
	_end TEXT, -- Foreign Key to element table

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE ratio(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	numerator TEXT, -- Foreign Key to quantity table
	denominator TEXT, -- Foreign Key to quantity table

	FOREIGN KEY (numerator)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (denominator)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE reference(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	reference TEXT,
	_reference TEXT, -- Foreign Key to element table
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	identifier TEXT, -- Foreign Key to identifier table
	display TEXT,
	_display TEXT, -- Foreign Key to element table

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE sampledData(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	origin TEXT, -- Foreign Key to quantity table
	"period" REAL,
	_period TEXT, -- Foreign Key to element table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	lowerLimit REAL,
	_lowerLimit TEXT, -- Foreign Key to element table
	upperLimit REAL,
	_upperLimit TEXT, -- Foreign Key to element table
	dimensions INTEGER,
	_dimensions TEXT, -- Foreign Key to element table
	"data" TEXT,
	_data TEXT, -- Foreign Key to element table

	FOREIGN KEY (origin)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_period)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lowerLimit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_upperLimit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dimensions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "signature"(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"type" **LIST** Coding,
	"when" DATETIME,
	_when TEXT, -- Foreign Key to element table
	who TEXT, -- Foreign Key to reference table
	onBehalfOf TEXT, -- Foreign Key to reference table
	targetFormat TEXT,
	_targetFormat TEXT, -- Foreign Key to element table
	sigFormat TEXT,
	_sigFormat TEXT, -- Foreign Key to element table
	"data" TEXT,
	_data TEXT, -- Foreign Key to element table

	FOREIGN KEY (_when)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetFormat)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sigFormat)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE humanName(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"use" TEXT, -- enum: usual/official/temp/nickname/anonymous/old/maiden
	_use TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	family TEXT,
	_family TEXT, -- Foreign Key to element table
	given **LIST** string,
	_given **LIST** Element,
	prefix **LIST** string,
	_prefix **LIST** Element,
	suffix **LIST** string,
	_suffix **LIST** Element,
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_family)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "address"(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"use" TEXT, -- enum: home/work/temp/old/billing
	_use TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: postal/physical/both
	_type TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	"line" **LIST** string,
	_line **LIST** Element,
	city TEXT,
	_city TEXT, -- Foreign Key to element table
	district TEXT,
	_district TEXT, -- Foreign Key to element table
	"state" TEXT,
	_state TEXT, -- Foreign Key to element table
	postalCode TEXT,
	_postalCode TEXT, -- Foreign Key to element table
	country TEXT,
	_country TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_city)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_district)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_state)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_postalCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_country)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contactPoint(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"system" TEXT, -- enum: phone/fax/email/pager/url/sms/other
	_system TEXT, -- Foreign Key to element table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table
	"use" TEXT, -- enum: home/work/temp/old/mobile
	_use TEXT, -- Foreign Key to element table
	"rank" INTEGER,
	_rank TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rank)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE timing(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"event" **LIST** dateTime,
	_event **LIST** Element,
	"repeat" TEXT, -- Foreign Key to timing_Repeat table
	"code" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("repeat")
		REFERENCES timing_Repeat (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE timing_Repeat(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	boundsDuration TEXT, -- Foreign Key to duration table
	boundsRange TEXT, -- Foreign Key to range table
	boundsPeriod TEXT, -- Foreign Key to period table
	"count" INTEGER,
	_count TEXT, -- Foreign Key to element table
	countMax INTEGER,
	_countMax TEXT, -- Foreign Key to element table
	duration REAL,
	_duration TEXT, -- Foreign Key to element table
	durationMax REAL,
	_durationMax TEXT, -- Foreign Key to element table
	durationUnit TEXT, -- enum: s/min/h/d/wk/mo/a
	_durationUnit TEXT, -- Foreign Key to element table
	frequency INTEGER,
	_frequency TEXT, -- Foreign Key to element table
	frequencyMax INTEGER,
	_frequencyMax TEXT, -- Foreign Key to element table
	"period" REAL,
	_period TEXT, -- Foreign Key to element table
	periodMax REAL,
	_periodMax TEXT, -- Foreign Key to element table
	periodUnit TEXT, -- enum: s/min/h/d/wk/mo/a
	_periodUnit TEXT, -- Foreign Key to element table
	dayOfWeek **LIST** code,
	_dayOfWeek **LIST** Element,
	timeOfDay **LIST** time,
	_timeOfDay **LIST** Element,
	"when" **LIST** enum, -- MORN/MORN.early/MORN.late/NOON/AFT/AFT.early/AFT.late/EVE/EVE.early/EVE.late/NIGHT/PHS/HS/WAKE/C/CM/CD/CV/AC/ACM/ACD/ACV/PC/PCM/PCD/PCV,
	_when **LIST** Element,
	offset INTEGER,
	_offset TEXT, -- Foreign Key to element table

	FOREIGN KEY (boundsDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (boundsRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (boundsPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_countMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_duration)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_durationMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_durationUnit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_frequency)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_frequencyMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_period)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_periodMax)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_periodUnit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_offset)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE meta(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	versionId TEXT, -- Foreign Key to id table
	_versionId TEXT, -- Foreign Key to element table
	lastUpdated DATETIME,
	_lastUpdated TEXT, -- Foreign Key to element table
	"source" TEXT,
	_source TEXT, -- Foreign Key to element table
	"profile" **LIST** canonical,
	"security" **LIST** Coding,
	tag **LIST** Coding,

	FOREIGN KEY (versionId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastUpdated)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contactDetail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	telecom **LIST** ContactPoint,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contributor(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"type" TEXT, -- enum: author/editor/reviewer/endorser
	_type TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dataRequirement(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	"profile" **LIST** canonical,
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	mustSupport **LIST** string,
	_mustSupport **LIST** Element,
	codeFilter **LIST** DataRequirement_CodeFilter,
	dateFilter **LIST** DataRequirement_DateFilter,
	"limit" INTEGER,
	_limit TEXT, -- Foreign Key to element table
	sort **LIST** DataRequirement_Sort,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_limit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dataRequirement_CodeFilter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	searchParam TEXT,
	_searchParam TEXT, -- Foreign Key to element table
	valueSet TEXT,
	"code" **LIST** Coding,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchParam)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dataRequirement_DateFilter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	searchParam TEXT,
	_searchParam TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valuePeriod TEXT, -- Foreign Key to period table
	valueDuration TEXT, -- Foreign Key to duration table

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchParam)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dataRequirement_Sort(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	direction TEXT, -- enum: ascending/descending
	_direction TEXT, -- Foreign Key to element table

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_direction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE parameterDefinition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"use" TEXT,
	_use TEXT, -- Foreign Key to element table
	"min" INTEGER,
	_min TEXT, -- Foreign Key to element table
	"max" TEXT,
	_max TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	"profile" TEXT,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE relatedArtifact(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"type" TEXT, -- enum: documentation/justification/citation/predecessor/successor/derived-from/depends-on/composed-of
	_type TEXT, -- Foreign Key to element table
	label TEXT,
	_label TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	citation TEXT,
	_citation TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	document TEXT, -- Foreign Key to attachment table
	"resource" TEXT,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_citation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (document)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE triggerDefinition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"type" TEXT, -- enum: named-event/periodic/data-changed/data-added/data-modified/data-removed/data-accessed/data-access-ended
	_type TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	timingTiming TEXT, -- Foreign Key to timing table
	timingReference TEXT, -- Foreign Key to reference table
	timingDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_timingDate TEXT, -- Foreign Key to element table
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime TEXT, -- Foreign Key to element table
	"data" **LIST** DataRequirement,
	"condition" TEXT, -- Foreign Key to expression table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE usageContext(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"code" TEXT, -- Foreign Key to coding table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("code")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dosage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	additionalInstruction **LIST** CodeableConcept,
	patientInstruction TEXT,
	_patientInstruction TEXT, -- Foreign Key to element table
	timing TEXT, -- Foreign Key to timing table
	asNeededBoolean BOOLEAN, -- pattern: ^true|false$
	_asNeededBoolean TEXT, -- Foreign Key to element table
	asNeededCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	"site" TEXT, -- Foreign Key to codeableConcept table
	"route" TEXT, -- Foreign Key to codeableConcept table
	"method" TEXT, -- Foreign Key to codeableConcept table
	doseAndRate **LIST** Dosage_DoseAndRate,
	maxDosePerPeriod TEXT, -- Foreign Key to ratio table
	maxDosePerAdministration TEXT, -- Foreign Key to quantity table
	maxDosePerLifetime TEXT, -- Foreign Key to quantity table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patientInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timing)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_asNeededBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asNeededCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("route")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerPeriod)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerAdministration)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerLifetime)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE dosage_DoseAndRate(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	doseRange TEXT, -- Foreign Key to range table
	doseQuantity TEXT, -- Foreign Key to quantity table
	rateRatio TEXT, -- Foreign Key to ratio table
	rateRange TEXT, -- Foreign Key to range table
	rateQuantity TEXT, -- Foreign Key to quantity table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "population"(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	ageRange TEXT, -- Foreign Key to range table
	ageCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	gender TEXT, -- Foreign Key to codeableConcept table
	race TEXT, -- Foreign Key to codeableConcept table
	physiologicalCondition TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (ageRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ageCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (gender)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (race)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physiologicalCondition)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE productShelfLife(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"period" TEXT, -- Foreign Key to quantity table
	specialPrecautionsForStorage **LIST** CodeableConcept,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE prodCharacteristic(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	height TEXT, -- Foreign Key to quantity table
	width TEXT, -- Foreign Key to quantity table
	"depth" TEXT, -- Foreign Key to quantity table
	"weight" TEXT, -- Foreign Key to quantity table
	nominalVolume TEXT, -- Foreign Key to quantity table
	externalDiameter TEXT, -- Foreign Key to quantity table
	shape TEXT,
	_shape TEXT, -- Foreign Key to element table
	color **LIST** string,
	_color **LIST** Element,
	imprint **LIST** string,
	_imprint **LIST** Element,
	"image" **LIST** Attachment,
	scoring TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (height)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (width)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("depth")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("weight")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nominalVolume)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (externalDiameter)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shape)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scoring)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE marketingStatus(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	country TEXT, -- Foreign Key to codeableConcept table
	jurisdiction TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- Foreign Key to codeableConcept table
	dateRange TEXT, -- Foreign Key to period table
	restoreDate DATETIME,
	_restoreDate TEXT, -- Foreign Key to element table

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dateRange)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_restoreDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceAmount(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	amountQuantity TEXT, -- Foreign Key to quantity table
	amountRange TEXT, -- Foreign Key to range table
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString TEXT, -- Foreign Key to element table
	amountType TEXT, -- Foreign Key to codeableConcept table
	amountText TEXT,
	_amountText TEXT, -- Foreign Key to element table
	referenceRange TEXT, -- Foreign Key to substanceAmount_ReferenceRange table

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountText)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceRange)
		REFERENCES substanceAmount_ReferenceRange (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceAmount_ReferenceRange(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	lowLimit TEXT, -- Foreign Key to quantity table
	highLimit TEXT, -- Foreign Key to quantity table

	FOREIGN KEY (lowLimit)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (highLimit)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE expression(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"name" TEXT, -- Foreign Key to id table
	_name TEXT, -- Foreign Key to element table
	"language" TEXT, -- enum: text/cql/text/fhirpath/application/x-fhir-query
	_language TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table
	reference TEXT,
	_reference TEXT, -- Foreign Key to element table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	representation **LIST** enum, -- xmlAttr/xmlText/typeAttr/cdaText/xhtml,
	_representation **LIST** Element,
	sliceName TEXT,
	_sliceName TEXT, -- Foreign Key to element table
	sliceIsConstraining BOOLEAN,
	_sliceIsConstraining TEXT, -- Foreign Key to element table
	label TEXT,
	_label TEXT, -- Foreign Key to element table
	"code" **LIST** Coding,
	slicing TEXT, -- Foreign Key to elementDefinition_Slicing table
	short TEXT,
	_short TEXT, -- Foreign Key to element table
	"definition" TEXT,
	_definition TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	requirements TEXT,
	_requirements TEXT, -- Foreign Key to element table
	alias **LIST** string,
	_alias **LIST** Element,
	"min" INTEGER,
	_min TEXT, -- Foreign Key to element table
	"max" TEXT,
	_max TEXT, -- Foreign Key to element table
	base TEXT, -- Foreign Key to elementDefinition_Base table
	contentReference TEXT,
	_contentReference TEXT, -- Foreign Key to element table
	"type" **LIST** ElementDefinition_Type,
	defaultValueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_defaultValueBase64Binary TEXT, -- Foreign Key to element table
	defaultValueBoolean BOOLEAN, -- pattern: ^true|false$
	_defaultValueBoolean TEXT, -- Foreign Key to element table
	defaultValueCanonical TEXT, -- pattern: ^\S*$
	_defaultValueCanonical TEXT, -- Foreign Key to element table
	defaultValueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_defaultValueCode TEXT, -- Foreign Key to element table
	defaultValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_defaultValueDate TEXT, -- Foreign Key to element table
	defaultValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_defaultValueDateTime TEXT, -- Foreign Key to element table
	defaultValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_defaultValueDecimal TEXT, -- Foreign Key to element table
	defaultValueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_defaultValueId TEXT, -- Foreign Key to element table
	defaultValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_defaultValueInstant TEXT, -- Foreign Key to element table
	defaultValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_defaultValueInteger TEXT, -- Foreign Key to element table
	defaultValueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueMarkdown TEXT, -- Foreign Key to element table
	defaultValueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_defaultValueOid TEXT, -- Foreign Key to element table
	defaultValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_defaultValuePositiveInt TEXT, -- Foreign Key to element table
	defaultValueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueString TEXT, -- Foreign Key to element table
	defaultValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_defaultValueTime TEXT, -- Foreign Key to element table
	defaultValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_defaultValueUnsignedInt TEXT, -- Foreign Key to element table
	defaultValueUri TEXT, -- pattern: ^\S*$
	_defaultValueUri TEXT, -- Foreign Key to element table
	defaultValueUrl TEXT, -- pattern: ^\S*$
	_defaultValueUrl TEXT, -- Foreign Key to element table
	defaultValueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_defaultValueUuid TEXT, -- Foreign Key to element table
	defaultValueAddress TEXT, -- Foreign Key to address table
	defaultValueAge TEXT, -- Foreign Key to age table
	defaultValueAnnotation TEXT, -- Foreign Key to annotation table
	defaultValueAttachment TEXT, -- Foreign Key to attachment table
	defaultValueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	defaultValueCoding TEXT, -- Foreign Key to coding table
	defaultValueContactPoint TEXT, -- Foreign Key to contactPoint table
	defaultValueCount TEXT, -- Foreign Key to count table
	defaultValueDistance TEXT, -- Foreign Key to distance table
	defaultValueDuration TEXT, -- Foreign Key to duration table
	defaultValueHumanName TEXT, -- Foreign Key to humanName table
	defaultValueIdentifier TEXT, -- Foreign Key to identifier table
	defaultValueMoney TEXT, -- Foreign Key to money table
	defaultValuePeriod TEXT, -- Foreign Key to period table
	defaultValueQuantity TEXT, -- Foreign Key to quantity table
	defaultValueRange TEXT, -- Foreign Key to range table
	defaultValueRatio TEXT, -- Foreign Key to ratio table
	defaultValueReference TEXT, -- Foreign Key to reference table
	defaultValueSampledData TEXT, -- Foreign Key to sampledData table
	defaultValueSignature TEXT, -- Foreign Key to signature table
	defaultValueTiming TEXT, -- Foreign Key to timing table
	defaultValueContactDetail TEXT, -- Foreign Key to contactDetail table
	defaultValueContributor TEXT, -- Foreign Key to contributor table
	defaultValueDataRequirement TEXT, -- Foreign Key to dataRequirement table
	defaultValueExpression TEXT, -- Foreign Key to expression table
	defaultValueParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	defaultValueRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	defaultValueTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	defaultValueUsageContext TEXT, -- Foreign Key to usageContext table
	defaultValueDosage TEXT, -- Foreign Key to dosage table
	defaultValueMeta TEXT, -- Foreign Key to meta table
	meaningWhenMissing TEXT,
	_meaningWhenMissing TEXT, -- Foreign Key to element table
	orderMeaning TEXT,
	_orderMeaning TEXT, -- Foreign Key to element table
	fixedBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_fixedBase64Binary TEXT, -- Foreign Key to element table
	fixedBoolean BOOLEAN, -- pattern: ^true|false$
	_fixedBoolean TEXT, -- Foreign Key to element table
	fixedCanonical TEXT, -- pattern: ^\S*$
	_fixedCanonical TEXT, -- Foreign Key to element table
	fixedCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_fixedCode TEXT, -- Foreign Key to element table
	fixedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_fixedDate TEXT, -- Foreign Key to element table
	fixedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_fixedDateTime TEXT, -- Foreign Key to element table
	fixedDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_fixedDecimal TEXT, -- Foreign Key to element table
	fixedId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_fixedId TEXT, -- Foreign Key to element table
	fixedInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_fixedInstant TEXT, -- Foreign Key to element table
	fixedInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_fixedInteger TEXT, -- Foreign Key to element table
	fixedMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_fixedMarkdown TEXT, -- Foreign Key to element table
	fixedOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_fixedOid TEXT, -- Foreign Key to element table
	fixedPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_fixedPositiveInt TEXT, -- Foreign Key to element table
	fixedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_fixedString TEXT, -- Foreign Key to element table
	fixedTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_fixedTime TEXT, -- Foreign Key to element table
	fixedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_fixedUnsignedInt TEXT, -- Foreign Key to element table
	fixedUri TEXT, -- pattern: ^\S*$
	_fixedUri TEXT, -- Foreign Key to element table
	fixedUrl TEXT, -- pattern: ^\S*$
	_fixedUrl TEXT, -- Foreign Key to element table
	fixedUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_fixedUuid TEXT, -- Foreign Key to element table
	fixedAddress TEXT, -- Foreign Key to address table
	fixedAge TEXT, -- Foreign Key to age table
	fixedAnnotation TEXT, -- Foreign Key to annotation table
	fixedAttachment TEXT, -- Foreign Key to attachment table
	fixedCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	fixedCoding TEXT, -- Foreign Key to coding table
	fixedContactPoint TEXT, -- Foreign Key to contactPoint table
	fixedCount TEXT, -- Foreign Key to count table
	fixedDistance TEXT, -- Foreign Key to distance table
	fixedDuration TEXT, -- Foreign Key to duration table
	fixedHumanName TEXT, -- Foreign Key to humanName table
	fixedIdentifier TEXT, -- Foreign Key to identifier table
	fixedMoney TEXT, -- Foreign Key to money table
	fixedPeriod TEXT, -- Foreign Key to period table
	fixedQuantity TEXT, -- Foreign Key to quantity table
	fixedRange TEXT, -- Foreign Key to range table
	fixedRatio TEXT, -- Foreign Key to ratio table
	fixedReference TEXT, -- Foreign Key to reference table
	fixedSampledData TEXT, -- Foreign Key to sampledData table
	fixedSignature TEXT, -- Foreign Key to signature table
	fixedTiming TEXT, -- Foreign Key to timing table
	fixedContactDetail TEXT, -- Foreign Key to contactDetail table
	fixedContributor TEXT, -- Foreign Key to contributor table
	fixedDataRequirement TEXT, -- Foreign Key to dataRequirement table
	fixedExpression TEXT, -- Foreign Key to expression table
	fixedParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	fixedRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	fixedTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	fixedUsageContext TEXT, -- Foreign Key to usageContext table
	fixedDosage TEXT, -- Foreign Key to dosage table
	fixedMeta TEXT, -- Foreign Key to meta table
	patternBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_patternBase64Binary TEXT, -- Foreign Key to element table
	patternBoolean BOOLEAN, -- pattern: ^true|false$
	_patternBoolean TEXT, -- Foreign Key to element table
	patternCanonical TEXT, -- pattern: ^\S*$
	_patternCanonical TEXT, -- Foreign Key to element table
	patternCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_patternCode TEXT, -- Foreign Key to element table
	patternDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_patternDate TEXT, -- Foreign Key to element table
	patternDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_patternDateTime TEXT, -- Foreign Key to element table
	patternDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_patternDecimal TEXT, -- Foreign Key to element table
	patternId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_patternId TEXT, -- Foreign Key to element table
	patternInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_patternInstant TEXT, -- Foreign Key to element table
	patternInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_patternInteger TEXT, -- Foreign Key to element table
	patternMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_patternMarkdown TEXT, -- Foreign Key to element table
	patternOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_patternOid TEXT, -- Foreign Key to element table
	patternPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_patternPositiveInt TEXT, -- Foreign Key to element table
	patternString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_patternString TEXT, -- Foreign Key to element table
	patternTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_patternTime TEXT, -- Foreign Key to element table
	patternUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_patternUnsignedInt TEXT, -- Foreign Key to element table
	patternUri TEXT, -- pattern: ^\S*$
	_patternUri TEXT, -- Foreign Key to element table
	patternUrl TEXT, -- pattern: ^\S*$
	_patternUrl TEXT, -- Foreign Key to element table
	patternUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_patternUuid TEXT, -- Foreign Key to element table
	patternAddress TEXT, -- Foreign Key to address table
	patternAge TEXT, -- Foreign Key to age table
	patternAnnotation TEXT, -- Foreign Key to annotation table
	patternAttachment TEXT, -- Foreign Key to attachment table
	patternCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	patternCoding TEXT, -- Foreign Key to coding table
	patternContactPoint TEXT, -- Foreign Key to contactPoint table
	patternCount TEXT, -- Foreign Key to count table
	patternDistance TEXT, -- Foreign Key to distance table
	patternDuration TEXT, -- Foreign Key to duration table
	patternHumanName TEXT, -- Foreign Key to humanName table
	patternIdentifier TEXT, -- Foreign Key to identifier table
	patternMoney TEXT, -- Foreign Key to money table
	patternPeriod TEXT, -- Foreign Key to period table
	patternQuantity TEXT, -- Foreign Key to quantity table
	patternRange TEXT, -- Foreign Key to range table
	patternRatio TEXT, -- Foreign Key to ratio table
	patternReference TEXT, -- Foreign Key to reference table
	patternSampledData TEXT, -- Foreign Key to sampledData table
	patternSignature TEXT, -- Foreign Key to signature table
	patternTiming TEXT, -- Foreign Key to timing table
	patternContactDetail TEXT, -- Foreign Key to contactDetail table
	patternContributor TEXT, -- Foreign Key to contributor table
	patternDataRequirement TEXT, -- Foreign Key to dataRequirement table
	patternExpression TEXT, -- Foreign Key to expression table
	patternParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	patternRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	patternTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	patternUsageContext TEXT, -- Foreign Key to usageContext table
	patternDosage TEXT, -- Foreign Key to dosage table
	patternMeta TEXT, -- Foreign Key to meta table
	example **LIST** ElementDefinition_Example,
	minValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_minValueDate TEXT, -- Foreign Key to element table
	minValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_minValueDateTime TEXT, -- Foreign Key to element table
	minValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_minValueInstant TEXT, -- Foreign Key to element table
	minValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_minValueTime TEXT, -- Foreign Key to element table
	minValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_minValueDecimal TEXT, -- Foreign Key to element table
	minValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_minValueInteger TEXT, -- Foreign Key to element table
	minValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_minValuePositiveInt TEXT, -- Foreign Key to element table
	minValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_minValueUnsignedInt TEXT, -- Foreign Key to element table
	minValueQuantity TEXT, -- Foreign Key to quantity table
	maxValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_maxValueDate TEXT, -- Foreign Key to element table
	maxValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_maxValueDateTime TEXT, -- Foreign Key to element table
	maxValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_maxValueInstant TEXT, -- Foreign Key to element table
	maxValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_maxValueTime TEXT, -- Foreign Key to element table
	maxValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_maxValueDecimal TEXT, -- Foreign Key to element table
	maxValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_maxValueInteger TEXT, -- Foreign Key to element table
	maxValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_maxValuePositiveInt TEXT, -- Foreign Key to element table
	maxValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_maxValueUnsignedInt TEXT, -- Foreign Key to element table
	maxValueQuantity TEXT, -- Foreign Key to quantity table
	"maxLength" INTEGER,
	_maxLength TEXT, -- Foreign Key to element table
	"condition" **LIST** id,
	_condition **LIST** Element,
	"constraint" **LIST** ElementDefinition_Constraint,
	mustSupport BOOLEAN,
	_mustSupport TEXT, -- Foreign Key to element table
	isModifier BOOLEAN,
	_isModifier TEXT, -- Foreign Key to element table
	isModifierReason TEXT,
	_isModifierReason TEXT, -- Foreign Key to element table
	isSummary BOOLEAN,
	_isSummary TEXT, -- Foreign Key to element table
	"binding" TEXT, -- Foreign Key to elementDefinition_Binding table
	mapping **LIST** ElementDefinition_Mapping,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sliceName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sliceIsConstraining)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (slicing)
		REFERENCES elementDefinition_Slicing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_short)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirements)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (base)
		REFERENCES elementDefinition_Base (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentReference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_meaningWhenMissing)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_orderMeaning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fixedUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fixedMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patternUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patternMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (minValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxLength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mustSupport)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isModifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isModifierReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isSummary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("binding")
		REFERENCES elementDefinition_Binding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Slicing(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	discriminator **LIST** ElementDefinition_Discriminator,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	ordered BOOLEAN,
	_ordered TEXT, -- Foreign Key to element table
	rules TEXT, -- enum: closed/open/openAtEnd
	_rules TEXT, -- Foreign Key to element table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ordered)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Discriminator(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: value/exists/pattern/type/profile
	_type TEXT, -- Foreign Key to element table
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Base(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	"min" INTEGER,
	_min TEXT, -- Foreign Key to element table
	"max" TEXT,
	_max TEXT, -- Foreign Key to element table

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Type(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	"profile" **LIST** canonical,
	targetProfile **LIST** canonical,
	aggregation **LIST** enum, -- contained/referenced/bundled,
	_aggregation **LIST** Element,
	versioning TEXT, -- enum: either/independent/specific
	_versioning TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versioning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Example(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	label TEXT,
	_label TEXT, -- Foreign Key to element table
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical TEXT, -- Foreign Key to element table
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId TEXT, -- Foreign Key to element table
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown TEXT, -- Foreign Key to element table
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid TEXT, -- Foreign Key to element table
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl TEXT, -- Foreign Key to element table
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid TEXT, -- Foreign Key to element table
	valueAddress TEXT, -- Foreign Key to address table
	valueAge TEXT, -- Foreign Key to age table
	valueAnnotation TEXT, -- Foreign Key to annotation table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueCoding TEXT, -- Foreign Key to coding table
	valueContactPoint TEXT, -- Foreign Key to contactPoint table
	valueCount TEXT, -- Foreign Key to count table
	valueDistance TEXT, -- Foreign Key to distance table
	valueDuration TEXT, -- Foreign Key to duration table
	valueHumanName TEXT, -- Foreign Key to humanName table
	valueIdentifier TEXT, -- Foreign Key to identifier table
	valueMoney TEXT, -- Foreign Key to money table
	valuePeriod TEXT, -- Foreign Key to period table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueRatio TEXT, -- Foreign Key to ratio table
	valueReference TEXT, -- Foreign Key to reference table
	valueSampledData TEXT, -- Foreign Key to sampledData table
	valueSignature TEXT, -- Foreign Key to signature table
	valueTiming TEXT, -- Foreign Key to timing table
	valueContactDetail TEXT, -- Foreign Key to contactDetail table
	valueContributor TEXT, -- Foreign Key to contributor table
	valueDataRequirement TEXT, -- Foreign Key to dataRequirement table
	valueExpression TEXT, -- Foreign Key to expression table
	valueParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	valueRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	valueTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	valueUsageContext TEXT, -- Foreign Key to usageContext table
	valueDosage TEXT, -- Foreign Key to dosage table
	valueMeta TEXT, -- Foreign Key to meta table

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Constraint(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"key" TEXT, -- Foreign Key to id table
	_key TEXT, -- Foreign Key to element table
	requirements TEXT,
	_requirements TEXT, -- Foreign Key to element table
	severity TEXT, -- enum: error/warning
	_severity TEXT, -- Foreign Key to element table
	human TEXT,
	_human TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table
	xpath TEXT,
	_xpath TEXT, -- Foreign Key to element table
	"source" TEXT,

	FOREIGN KEY ("key")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_key)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirements)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_human)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_xpath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Binding(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	strength TEXT, -- enum: required/extensible/preferred/example
	_strength TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	valueSet TEXT,

	FOREIGN KEY (_strength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE elementDefinition_Mapping(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"identity" TEXT, -- Foreign Key to id table
	_identity TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	map TEXT,
	_map TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY ("identity")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_map)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE account(

	resourceType TEXT, -- resourceType: account
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: active/inactive/entered-in-error/on-hold/unknown
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"subject" **LIST** Reference,
	servicePeriod TEXT, -- Foreign Key to period table
	coverage **LIST** Account_Coverage,
	"owner" TEXT, -- Foreign Key to reference table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	guarantor **LIST** Account_Guarantor,
	partOf TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE account_Coverage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	coverage TEXT, -- Foreign Key to reference table
	"priority" INTEGER,
	_priority TEXT, -- Foreign Key to element table

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE account_Guarantor(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	party TEXT, -- Foreign Key to reference table
	onHold BOOLEAN,
	_onHold TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onHold)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE activityDefinition(

	resourceType TEXT, -- resourceType: activityDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	library **LIST** canonical,
	kind TEXT,
	_kind TEXT, -- Foreign Key to element table
	"profile" TEXT,
	"code" TEXT, -- Foreign Key to codeableConcept table
	intent TEXT,
	_intent TEXT, -- Foreign Key to element table
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	doNotPerform BOOLEAN,
	_doNotPerform TEXT, -- Foreign Key to element table
	timingTiming TEXT, -- Foreign Key to timing table
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime TEXT, -- Foreign Key to element table
	timingAge TEXT, -- Foreign Key to age table
	timingPeriod TEXT, -- Foreign Key to period table
	timingRange TEXT, -- Foreign Key to range table
	timingDuration TEXT, -- Foreign Key to duration table
	"location" TEXT, -- Foreign Key to reference table
	participant **LIST** ActivityDefinition_Participant,
	productReference TEXT, -- Foreign Key to reference table
	productCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	quantity TEXT, -- Foreign Key to quantity table
	dosage **LIST** Dosage,
	bodySite **LIST** CodeableConcept,
	specimenRequirement **LIST** Reference,
	observationRequirement **LIST** Reference,
	observationResultRequirement **LIST** Reference,
	transform TEXT,
	dynamicValue **LIST** ActivityDefinition_DynamicValue,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE activityDefinition_Participant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	"role" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE activityDefinition_DynamicValue(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	expression TEXT, -- Foreign Key to expression table

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE adverseEvent(

	resourceType TEXT, -- resourceType: adverseEvent
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	actuality TEXT, -- enum: actual/potential
	_actuality TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"event" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	detected DATETIME,
	_detected TEXT, -- Foreign Key to element table
	recordedDate DATETIME,
	_recordedDate TEXT, -- Foreign Key to element table
	resultingCondition **LIST** Reference,
	"location" TEXT, -- Foreign Key to reference table
	seriousness TEXT, -- Foreign Key to codeableConcept table
	severity TEXT, -- Foreign Key to codeableConcept table
	outcome TEXT, -- Foreign Key to codeableConcept table
	recorder TEXT, -- Foreign Key to reference table
	contributor **LIST** Reference,
	suspectEntity **LIST** AdverseEvent_SuspectEntity,
	subjectMedicalHistory **LIST** Reference,
	referenceDocument **LIST** Reference,
	study **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actuality)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("event")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detected)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (seriousness)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (severity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE adverseEvent_SuspectEntity(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"instance" TEXT, -- Foreign Key to reference table
	causality **LIST** AdverseEvent_Causality,

	FOREIGN KEY ("instance")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE adverseEvent_Causality(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	assessment TEXT, -- Foreign Key to codeableConcept table
	productRelatedness TEXT,
	_productRelatedness TEXT, -- Foreign Key to element table
	author TEXT, -- Foreign Key to reference table
	"method" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (assessment)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_productRelatedness)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE allergyIntolerance(

	resourceType TEXT, -- resourceType: allergyIntolerance
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	clinicalStatus TEXT, -- Foreign Key to codeableConcept table
	verificationStatus TEXT, -- Foreign Key to codeableConcept table
	"type" TEXT, -- enum: allergy/intolerance
	_type TEXT, -- Foreign Key to element table
	category **LIST** enum, -- food/medication/environment/biologic,
	_category **LIST** Element,
	criticality TEXT, -- enum: low/high/unable-to-assess
	_criticality TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	patient TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	onsetDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_onsetDateTime TEXT, -- Foreign Key to element table
	onsetAge TEXT, -- Foreign Key to age table
	onsetPeriod TEXT, -- Foreign Key to period table
	onsetRange TEXT, -- Foreign Key to range table
	onsetString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_onsetString TEXT, -- Foreign Key to element table
	recordedDate DATETIME,
	_recordedDate TEXT, -- Foreign Key to element table
	recorder TEXT, -- Foreign Key to reference table
	asserter TEXT, -- Foreign Key to reference table
	lastOccurrence DATETIME,
	_lastOccurrence TEXT, -- Foreign Key to element table
	note **LIST** Annotation,
	reaction **LIST** AllergyIntolerance_Reaction,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (clinicalStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (verificationStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_criticality)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asserter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastOccurrence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE allergyIntolerance_Reaction(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	substance TEXT, -- Foreign Key to codeableConcept table
	manifestation **LIST** CodeableConcept,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	onset DATETIME,
	_onset TEXT, -- Foreign Key to element table
	severity TEXT, -- enum: mild/moderate/severe
	_severity TEXT, -- Foreign Key to element table
	exposureRoute TEXT, -- Foreign Key to codeableConcept table
	note **LIST** Annotation,

	FOREIGN KEY (substance)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onset)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureRoute)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE appointment(

	resourceType TEXT, -- resourceType: appointment
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: proposed/pending/booked/arrived/fulfilled/cancelled/noshow/entered-in-error/checked-in/waitlist
	_status TEXT, -- Foreign Key to element table
	cancelationReason TEXT, -- Foreign Key to codeableConcept table
	serviceCategory **LIST** CodeableConcept,
	serviceType **LIST** CodeableConcept,
	specialty **LIST** CodeableConcept,
	appointmentType TEXT, -- Foreign Key to codeableConcept table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	"priority" INTEGER,
	_priority TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	supportingInformation **LIST** Reference,
	"start" DATETIME,
	_start TEXT, -- Foreign Key to element table
	"end" DATETIME,
	_end TEXT, -- Foreign Key to element table
	minutesDuration INTEGER,
	_minutesDuration TEXT, -- Foreign Key to element table
	slot **LIST** Reference,
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	patientInstruction TEXT,
	_patientInstruction TEXT, -- Foreign Key to element table
	basedOn **LIST** Reference,
	participant **LIST** Appointment_Participant,
	requestedPeriod **LIST** Period,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cancelationReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appointmentType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minutesDuration)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patientInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE appointment_Participant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" **LIST** CodeableConcept,
	actor TEXT, -- Foreign Key to reference table
	"required" TEXT, -- enum: required/optional/information-only
	_required TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: accepted/declined/tentative/needs-action
	_status TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_required)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE appointmentResponse(

	resourceType TEXT, -- resourceType: appointmentResponse
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	appointment TEXT, -- Foreign Key to reference table
	"start" DATETIME,
	_start TEXT, -- Foreign Key to element table
	"end" DATETIME,
	_end TEXT, -- Foreign Key to element table
	participantType **LIST** CodeableConcept,
	actor TEXT, -- Foreign Key to reference table
	participantStatus TEXT,
	_participantStatus TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appointment)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent(

	resourceType TEXT, -- resourceType: auditEvent
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to coding table
	subtype **LIST** Coding,
	"action" TEXT, -- enum: C/R/U/D/E
	_action TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	recorded DATETIME,
	_recorded TEXT, -- Foreign Key to element table
	outcome TEXT, -- enum: 0/4/8/12
	_outcome TEXT, -- Foreign Key to element table
	outcomeDesc TEXT,
	_outcomeDesc TEXT, -- Foreign Key to element table
	purposeOfEvent **LIST** CodeableConcept,
	agent **LIST** AuditEvent_Agent,
	"source" TEXT, -- Foreign Key to auditEvent_Source table
	entity **LIST** AuditEvent_Entity,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_action)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recorded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcomeDesc)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES auditEvent_Source (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Agent(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"role" **LIST** CodeableConcept,
	who TEXT, -- Foreign Key to reference table
	altId TEXT,
	_altId TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	requestor BOOLEAN,
	_requestor TEXT, -- Foreign Key to element table
	"location" TEXT, -- Foreign Key to reference table
	"policy" **LIST** uri,
	_policy **LIST** Element,
	media TEXT, -- Foreign Key to coding table
	network TEXT, -- Foreign Key to auditEvent_Network table
	purposeOfUse **LIST** CodeableConcept,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_altId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requestor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (media)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES auditEvent_Network (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Network(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"address" TEXT,
	_address TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: 1/2/3/4/5
	_type TEXT, -- Foreign Key to element table

	FOREIGN KEY (_address)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Source(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"site" TEXT,
	_site TEXT, -- Foreign Key to element table
	observer TEXT, -- Foreign Key to reference table
	"type" **LIST** Coding,

	FOREIGN KEY (_site)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (observer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Entity(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	what TEXT, -- Foreign Key to reference table
	"type" TEXT, -- Foreign Key to coding table
	"role" TEXT, -- Foreign Key to coding table
	lifecycle TEXT, -- Foreign Key to coding table
	securityLabel **LIST** Coding,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	query TEXT,
	_query TEXT, -- Foreign Key to element table
	detail **LIST** AuditEvent_Detail,

	FOREIGN KEY (what)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (lifecycle)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_query)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE auditEvent_Detail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary TEXT, -- Foreign Key to element table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE basic(

	resourceType TEXT, -- resourceType: basic
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	created DATE,
	_created TEXT, -- Foreign Key to element table
	author TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE binary(

	resourceType TEXT, -- resourceType: binary
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	contentType TEXT,
	_contentType TEXT, -- Foreign Key to element table
	securityContext TEXT, -- Foreign Key to reference table
	"data" TEXT,
	_data TEXT, -- Foreign Key to element table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (securityContext)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_data)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct(

	resourceType TEXT, -- resourceType: biologicallyDerivedProduct
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	productCategory TEXT, -- enum: organ/tissue/fluid/cells/biologicalAgent
	_productCategory TEXT, -- Foreign Key to element table
	productCode TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- enum: available/unavailable
	_status TEXT, -- Foreign Key to element table
	request **LIST** Reference,
	quantity INTEGER,
	_quantity TEXT, -- Foreign Key to element table
	parent **LIST** Reference,
	"collection" TEXT, -- Foreign Key to biologicallyDerivedProduct_Collection table
	processing **LIST** BiologicallyDerivedProduct_Processing,
	manipulation TEXT, -- Foreign Key to biologicallyDerivedProduct_Manipulation table
	storage **LIST** BiologicallyDerivedProduct_Storage,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_productCategory)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_quantity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("collection")
		REFERENCES biologicallyDerivedProduct_Collection (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manipulation)
		REFERENCES biologicallyDerivedProduct_Manipulation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct_Collection(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	collector TEXT, -- Foreign Key to reference table
	"source" TEXT, -- Foreign Key to reference table
	collectedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_collectedDateTime TEXT, -- Foreign Key to element table
	collectedPeriod TEXT, -- Foreign Key to period table

	FOREIGN KEY (collector)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_collectedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collectedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct_Processing(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"procedure" TEXT, -- Foreign Key to codeableConcept table
	additive TEXT, -- Foreign Key to reference table
	timeDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timeDateTime TEXT, -- Foreign Key to element table
	timePeriod TEXT, -- Foreign Key to period table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additive)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct_Manipulation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	timeDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timeDateTime TEXT, -- Foreign Key to element table
	timePeriod TEXT, -- Foreign Key to period table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE biologicallyDerivedProduct_Storage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	temperature REAL,
	_temperature TEXT, -- Foreign Key to element table
	scale TEXT, -- enum: farenheit/celsius/kelvin
	_scale TEXT, -- Foreign Key to element table
	duration TEXT, -- Foreign Key to period table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_temperature)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_scale)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bodyStructure(

	resourceType TEXT, -- resourceType: bodyStructure
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	morphology TEXT, -- Foreign Key to codeableConcept table
	"location" TEXT, -- Foreign Key to codeableConcept table
	locationQualifier **LIST** CodeableConcept,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"image" **LIST** Attachment,
	patient TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (morphology)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle(

	resourceType TEXT, -- resourceType: bundle
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	identifier TEXT, -- Foreign Key to identifier table
	"type" TEXT, -- enum: document/message/transaction/transaction-response/batch/batch-response/history/searchset/collection
	_type TEXT, -- Foreign Key to element table
	"timestamp" DATETIME,
	_timestamp TEXT, -- Foreign Key to element table
	total INTEGER,
	_total TEXT, -- Foreign Key to element table
	link **LIST** Bundle_Link,
	entry **LIST** Bundle_Entry,
	"signature" TEXT, -- Foreign Key to signature table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timestamp)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_total)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("signature")
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Link(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	relation TEXT,
	_relation TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table

	FOREIGN KEY (_relation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Entry(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	link **LIST** Bundle_Link,
	fullUrl TEXT,
	_fullUrl TEXT, -- Foreign Key to element table
	"resource" TEXT, -- Foreign Key to resourceList table
	"search" TEXT, -- Foreign Key to bundle_Search table
	request TEXT, -- Foreign Key to bundle_Request table
	response TEXT, -- Foreign Key to bundle_Response table

	FOREIGN KEY (_fullUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("resource")
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("search")
		REFERENCES bundle_Search (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES bundle_Request (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES bundle_Response (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Search(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	mode TEXT, -- enum: match/include/outcome
	_mode TEXT, -- Foreign Key to element table
	score REAL,
	_score TEXT, -- Foreign Key to element table

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_score)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Request(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"method" TEXT, -- enum: GET/HEAD/POST/PUT/DELETE/PATCH
	_method TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	ifNoneMatch TEXT,
	_ifNoneMatch TEXT, -- Foreign Key to element table
	ifModifiedSince DATETIME,
	_ifModifiedSince TEXT, -- Foreign Key to element table
	ifMatch TEXT,
	_ifMatch TEXT, -- Foreign Key to element table
	ifNoneExist TEXT,
	_ifNoneExist TEXT, -- Foreign Key to element table

	FOREIGN KEY (_method)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifNoneMatch)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifModifiedSince)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifMatch)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ifNoneExist)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE bundle_Response(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"location" TEXT,
	_location TEXT, -- Foreign Key to element table
	etag TEXT,
	_etag TEXT, -- Foreign Key to element table
	lastModified DATETIME,
	_lastModified TEXT, -- Foreign Key to element table
	outcome TEXT, -- Foreign Key to resourceList table

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_location)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_etag)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastModified)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement(

	resourceType TEXT, -- resourceType: capabilityStatement
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	kind TEXT, -- enum: instance/capability/requirements
	_kind TEXT, -- Foreign Key to element table
	instantiates **LIST** canonical,
	imports **LIST** canonical,
	software TEXT, -- Foreign Key to capabilityStatement_Software table
	"implementation" TEXT, -- Foreign Key to capabilityStatement_Implementation table
	fhirVersion TEXT, -- enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion TEXT, -- Foreign Key to element table
	format **LIST** code,
	_format **LIST** Element,
	patchFormat **LIST** code,
	_patchFormat **LIST** Element,
	implementationGuide **LIST** canonical,
	rest **LIST** CapabilityStatement_Rest,
	messaging **LIST** CapabilityStatement_Messaging,
	document **LIST** CapabilityStatement_Document,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (software)
		REFERENCES capabilityStatement_Software (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("implementation")
		REFERENCES capabilityStatement_Implementation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fhirVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Software(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	releaseDate DATETIME,
	_releaseDate TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_releaseDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Implementation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	custodian TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (custodian)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Rest(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	mode TEXT, -- enum: client/server
	_mode TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table
	"security" TEXT, -- Foreign Key to capabilityStatement_Security table
	"resource" **LIST** CapabilityStatement_Resource,
	interaction **LIST** CapabilityStatement_Interaction1,
	searchParam **LIST** CapabilityStatement_SearchParam,
	operation **LIST** CapabilityStatement_Operation,
	compartment **LIST** canonical,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("security")
		REFERENCES capabilityStatement_Security (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Security(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	cors BOOLEAN,
	_cors TEXT, -- Foreign Key to element table
	service **LIST** CodeableConcept,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_cors)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Resource(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	"profile" TEXT,
	supportedProfile **LIST** canonical,
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table
	interaction **LIST** CapabilityStatement_Interaction,
	versioning TEXT, -- enum: no-version/versioned/versioned-update
	_versioning TEXT, -- Foreign Key to element table
	readHistory BOOLEAN,
	_readHistory TEXT, -- Foreign Key to element table
	updateCreate BOOLEAN,
	_updateCreate TEXT, -- Foreign Key to element table
	conditionalCreate BOOLEAN,
	_conditionalCreate TEXT, -- Foreign Key to element table
	conditionalRead TEXT, -- enum: not-supported/modified-since/not-match/full-support
	_conditionalRead TEXT, -- Foreign Key to element table
	conditionalUpdate BOOLEAN,
	_conditionalUpdate TEXT, -- Foreign Key to element table
	conditionalDelete TEXT, -- enum: not-supported/single/multiple
	_conditionalDelete TEXT, -- Foreign Key to element table
	referencePolicy **LIST** enum, -- literal/logical/resolves/enforced/local,
	_referencePolicy **LIST** Element,
	searchInclude **LIST** string,
	_searchInclude **LIST** Element,
	searchRevInclude **LIST** string,
	_searchRevInclude **LIST** Element,
	searchParam **LIST** CapabilityStatement_SearchParam,
	operation **LIST** CapabilityStatement_Operation,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versioning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readHistory)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_updateCreate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalCreate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalRead)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalUpdate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conditionalDelete)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Interaction(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- enum: read/vread/update/patch/delete/history-instance/history-type/create/search-type
	_code TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_SearchParam(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"definition" TEXT,
	"type" TEXT, -- enum: number/date/string/token/reference/composite/quantity/uri/special
	_type TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Operation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"definition" TEXT,
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Interaction1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- enum: transaction/batch/search-system/history-system
	_code TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Messaging(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"endpoint" **LIST** CapabilityStatement_Endpoint,
	reliableCache INTEGER,
	_reliableCache TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table
	supportedMessage **LIST** CapabilityStatement_SupportedMessage,

	FOREIGN KEY (_reliableCache)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Endpoint(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	protocol TEXT, -- Foreign Key to coding table
	"address" TEXT,
	_address TEXT, -- Foreign Key to element table

	FOREIGN KEY (protocol)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_address)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_SupportedMessage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	mode TEXT, -- enum: sender/receiver
	_mode TEXT, -- Foreign Key to element table
	"definition" TEXT,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE capabilityStatement_Document(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	mode TEXT, -- enum: producer/consumer
	_mode TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table
	"profile" TEXT,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE carePlan(

	resourceType TEXT, -- resourceType: carePlan
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	basedOn **LIST** Reference,
	replaces **LIST** Reference,
	partOf **LIST** Reference,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	intent TEXT,
	_intent TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	author TEXT, -- Foreign Key to reference table
	contributor **LIST** Reference,
	careTeam **LIST** Reference,
	addresses **LIST** Reference,
	supportingInfo **LIST** Reference,
	goal **LIST** Reference,
	activity **LIST** CarePlan_Activity,
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE carePlan_Activity(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	outcomeCodeableConcept **LIST** CodeableConcept,
	outcomeReference **LIST** Reference,
	progress **LIST** Annotation,
	reference TEXT, -- Foreign Key to reference table
	detail TEXT, -- Foreign Key to carePlan_Detail table

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES carePlan_Detail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE carePlan_Detail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	kind TEXT,
	_kind TEXT, -- Foreign Key to element table
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	"code" TEXT, -- Foreign Key to codeableConcept table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	goal **LIST** Reference,
	"status" TEXT, -- enum: not-started/scheduled/in-progress/on-hold/completed/cancelled/stopped/unknown/entered-in-error
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	doNotPerform BOOLEAN,
	_doNotPerform TEXT, -- Foreign Key to element table
	scheduledTiming TEXT, -- Foreign Key to timing table
	scheduledPeriod TEXT, -- Foreign Key to period table
	scheduledString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_scheduledString TEXT, -- Foreign Key to element table
	"location" TEXT, -- Foreign Key to reference table
	performer **LIST** Reference,
	productCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	productReference TEXT, -- Foreign Key to reference table
	dailyAmount TEXT, -- Foreign Key to quantity table
	quantity TEXT, -- Foreign Key to quantity table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scheduledTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scheduledPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_scheduledString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dailyAmount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE careTeam(

	resourceType TEXT, -- resourceType: careTeam
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: proposed/active/suspended/inactive/entered-in-error
	_status TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table
	participant **LIST** CareTeam_Participant,
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	managingOrganization **LIST** Reference,
	telecom **LIST** ContactPoint,
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE careTeam_Participant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"role" **LIST** CodeableConcept,
	"member" TEXT, -- Foreign Key to reference table
	onBehalfOf TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY ("member")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE catalogEntry(

	resourceType TEXT, -- resourceType: catalogEntry
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"type" TEXT, -- Foreign Key to codeableConcept table
	orderable BOOLEAN,
	_orderable TEXT, -- Foreign Key to element table
	referencedItem TEXT, -- Foreign Key to reference table
	additionalIdentifier **LIST** Identifier,
	classification **LIST** CodeableConcept,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	validityPeriod TEXT, -- Foreign Key to period table
	validTo DATETIME,
	_validTo TEXT, -- Foreign Key to element table
	lastUpdated DATETIME,
	_lastUpdated TEXT, -- Foreign Key to element table
	additionalCharacteristic **LIST** CodeableConcept,
	additionalClassification **LIST** CodeableConcept,
	relatedEntry **LIST** CatalogEntry_RelatedEntry,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_orderable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referencedItem)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_validTo)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastUpdated)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE catalogEntry_RelatedEntry(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	relationtype TEXT, -- enum: triggers/is-replaced-by
	_relationtype TEXT, -- Foreign Key to element table
	item TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_relationtype)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItem(

	resourceType TEXT, -- resourceType: chargeItem
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	definitionUri **LIST** uri,
	_definitionUri **LIST** Element,
	definitionCanonical **LIST** canonical,
	"status" TEXT, -- enum: planned/billable/not-billable/aborted/billed/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	partOf **LIST** Reference,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	context TEXT, -- Foreign Key to reference table
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	occurrenceTiming TEXT, -- Foreign Key to timing table
	performer **LIST** ChargeItem_Performer,
	performingOrganization TEXT, -- Foreign Key to reference table
	requestingOrganization TEXT, -- Foreign Key to reference table
	costCenter TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	bodysite **LIST** CodeableConcept,
	factorOverride REAL,
	_factorOverride TEXT, -- Foreign Key to element table
	priceOverride TEXT, -- Foreign Key to money table
	overrideReason TEXT,
	_overrideReason TEXT, -- Foreign Key to element table
	enterer TEXT, -- Foreign Key to reference table
	enteredDate DATETIME,
	_enteredDate TEXT, -- Foreign Key to element table
	reason **LIST** CodeableConcept,
	service **LIST** Reference,
	productReference TEXT, -- Foreign Key to reference table
	productCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	account **LIST** Reference,
	note **LIST** Annotation,
	supportingInformation **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (costCenter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factorOverride)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (priceOverride)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_overrideReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_enteredDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItem_Performer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"function" TEXT, -- Foreign Key to codeableConcept table
	actor TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItemDefinition(

	resourceType TEXT, -- resourceType: chargeItemDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	derivedFromUri **LIST** uri,
	_derivedFromUri **LIST** Element,
	partOf **LIST** canonical,
	replaces **LIST** canonical,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"instance" **LIST** Reference,
	applicability **LIST** ChargeItemDefinition_Applicability,
	propertyGroup **LIST** ChargeItemDefinition_PropertyGroup,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItemDefinition_Applicability(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE chargeItemDefinition_PropertyGroup(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	applicability **LIST** ChargeItemDefinition_Applicability,
	priceComponent **LIST** ChargeItemDefinition_PriceComponent

);

CREATE TABLE chargeItemDefinition_PriceComponent(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	amount TEXT, -- Foreign Key to money table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim(

	resourceType TEXT, -- resourceType: claim
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	subType TEXT, -- Foreign Key to codeableConcept table
	"use" TEXT, -- enum: claim/preauthorization/predetermination
	_use TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	billablePeriod TEXT, -- Foreign Key to period table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	enterer TEXT, -- Foreign Key to reference table
	insurer TEXT, -- Foreign Key to reference table
	"provider" TEXT, -- Foreign Key to reference table
	"priority" TEXT, -- Foreign Key to codeableConcept table
	fundsReserve TEXT, -- Foreign Key to codeableConcept table
	related **LIST** Claim_Related,
	prescription TEXT, -- Foreign Key to reference table
	originalPrescription TEXT, -- Foreign Key to reference table
	payee TEXT, -- Foreign Key to claim_Payee table
	referral TEXT, -- Foreign Key to reference table
	facility TEXT, -- Foreign Key to reference table
	careTeam **LIST** Claim_CareTeam,
	supportingInfo **LIST** Claim_SupportingInfo,
	diagnosis **LIST** Claim_Diagnosis,
	"procedure" **LIST** Claim_Procedure,
	insurance **LIST** Claim_Insurance,
	accident TEXT, -- Foreign Key to claim_Accident table
	item **LIST** Claim_Item,
	total TEXT, -- Foreign Key to money table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (billablePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserve)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (originalPrescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES claim_Payee (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referral)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (accident)
		REFERENCES claim_Accident (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (total)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Related(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	claim TEXT, -- Foreign Key to reference table
	relationship TEXT, -- Foreign Key to codeableConcept table
	reference TEXT, -- Foreign Key to identifier table

	FOREIGN KEY (claim)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Payee(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	party TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_CareTeam(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	"provider" TEXT, -- Foreign Key to reference table
	responsible BOOLEAN,
	_responsible TEXT, -- Foreign Key to element table
	"role" TEXT, -- Foreign Key to codeableConcept table
	qualification TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responsible)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_SupportingInfo(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	category TEXT, -- Foreign Key to codeableConcept table
	"code" TEXT, -- Foreign Key to codeableConcept table
	timingDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_timingDate TEXT, -- Foreign Key to element table
	timingPeriod TEXT, -- Foreign Key to period table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueReference TEXT, -- Foreign Key to reference table
	reason TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Diagnosis(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	diagnosisCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	diagnosisReference TEXT, -- Foreign Key to reference table
	"type" **LIST** CodeableConcept,
	onAdmission TEXT, -- Foreign Key to codeableConcept table
	packageCode TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onAdmission)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packageCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Procedure(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	"type" **LIST** CodeableConcept,
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	procedureCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	procedureReference TEXT, -- Foreign Key to reference table
	udi **LIST** Reference,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Insurance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	focal BOOLEAN,
	_focal TEXT, -- Foreign Key to element table
	identifier TEXT, -- Foreign Key to identifier table
	coverage TEXT, -- Foreign Key to reference table
	businessArrangement TEXT,
	_businessArrangement TEXT, -- Foreign Key to element table
	preAuthRef **LIST** string,
	_preAuthRef **LIST** Element,
	claimResponse TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_businessArrangement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claimResponse)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Accident(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"date" DATE,
	_date TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	locationAddress TEXT, -- Foreign Key to address table
	locationReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	careTeamSequence **LIST** positiveInt,
	_careTeamSequence **LIST** Element,
	diagnosisSequence **LIST** positiveInt,
	_diagnosisSequence **LIST** Element,
	procedureSequence **LIST** positiveInt,
	_procedureSequence **LIST** Element,
	informationSequence **LIST** positiveInt,
	_informationSequence **LIST** Element,
	revenue TEXT, -- Foreign Key to codeableConcept table
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate TEXT, -- Foreign Key to element table
	servicedPeriod TEXT, -- Foreign Key to period table
	locationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	locationAddress TEXT, -- Foreign Key to address table
	locationReference TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	udi **LIST** Reference,
	bodySite TEXT, -- Foreign Key to codeableConcept table
	subSite **LIST** CodeableConcept,
	encounter **LIST** Reference,
	detail **LIST** Claim_Detail,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_Detail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	revenue TEXT, -- Foreign Key to codeableConcept table
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	udi **LIST** Reference,
	subDetail **LIST** Claim_SubDetail,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claim_SubDetail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	revenue TEXT, -- Foreign Key to codeableConcept table
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	udi **LIST** Reference,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse(

	resourceType TEXT, -- resourceType: claimResponse
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	subType TEXT, -- Foreign Key to codeableConcept table
	"use" TEXT,
	_use TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	insurer TEXT, -- Foreign Key to reference table
	requestor TEXT, -- Foreign Key to reference table
	request TEXT, -- Foreign Key to reference table
	outcome TEXT,
	_outcome TEXT, -- Foreign Key to element table
	disposition TEXT,
	_disposition TEXT, -- Foreign Key to element table
	preAuthRef TEXT,
	_preAuthRef TEXT, -- Foreign Key to element table
	preAuthPeriod TEXT, -- Foreign Key to period table
	payeeType TEXT, -- Foreign Key to codeableConcept table
	item **LIST** ClaimResponse_Item,
	addItem **LIST** ClaimResponse_AddItem,
	adjudication **LIST** ClaimResponse_Adjudication,
	total **LIST** ClaimResponse_Total,
	payment TEXT, -- Foreign Key to claimResponse_Payment table
	fundsReserve TEXT, -- Foreign Key to codeableConcept table
	formCode TEXT, -- Foreign Key to codeableConcept table
	form TEXT, -- Foreign Key to attachment table
	processNote **LIST** ClaimResponse_ProcessNote,
	communicationRequest **LIST** Reference,
	insurance **LIST** ClaimResponse_Insurance,
	error **LIST** ClaimResponse_Error,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preAuthRef)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (preAuthPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payeeType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payment)
		REFERENCES claimResponse_Payment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserve)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (formCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemSequence INTEGER,
	_itemSequence TEXT, -- Foreign Key to element table
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ClaimResponse_Adjudication,
	detail **LIST** ClaimResponse_Detail,

	FOREIGN KEY (_itemSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Adjudication(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	reason TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to money table
	"value" REAL,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Detail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	detailSequence INTEGER,
	_detailSequence TEXT, -- Foreign Key to element table
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ClaimResponse_Adjudication,
	subDetail **LIST** ClaimResponse_SubDetail,

	FOREIGN KEY (_detailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_SubDetail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	subDetailSequence INTEGER,
	_subDetailSequence TEXT, -- Foreign Key to element table
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ClaimResponse_Adjudication,

	FOREIGN KEY (_subDetailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_AddItem(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemSequence **LIST** positiveInt,
	_itemSequence **LIST** Element,
	detailSequence **LIST** positiveInt,
	_detailSequence **LIST** Element,
	subdetailSequence **LIST** positiveInt,
	_subdetailSequence **LIST** Element,
	"provider" **LIST** Reference,
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate TEXT, -- Foreign Key to element table
	servicedPeriod TEXT, -- Foreign Key to period table
	locationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	locationAddress TEXT, -- Foreign Key to address table
	locationReference TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	bodySite TEXT, -- Foreign Key to codeableConcept table
	subSite **LIST** CodeableConcept,
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ClaimResponse_Adjudication,
	detail **LIST** ClaimResponse_Detail1,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Detail1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ClaimResponse_Adjudication,
	subDetail **LIST** ClaimResponse_SubDetail1,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_SubDetail1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ClaimResponse_Adjudication,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Total(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to money table

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Payment(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	adjustment TEXT, -- Foreign Key to money table
	adjustmentReason TEXT, -- Foreign Key to codeableConcept table
	"date" DATE,
	_date TEXT, -- Foreign Key to element table
	amount TEXT, -- Foreign Key to money table
	identifier TEXT, -- Foreign Key to identifier table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustment)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustmentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_ProcessNote(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	number INTEGER,
	_number TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: display/print/printoper
	_type TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	"language" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Insurance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	focal BOOLEAN,
	_focal TEXT, -- Foreign Key to element table
	coverage TEXT, -- Foreign Key to reference table
	businessArrangement TEXT,
	_businessArrangement TEXT, -- Foreign Key to element table
	claimResponse TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_businessArrangement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claimResponse)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE claimResponse_Error(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemSequence INTEGER,
	_itemSequence TEXT, -- Foreign Key to element table
	detailSequence INTEGER,
	_detailSequence TEXT, -- Foreign Key to element table
	subDetailSequence INTEGER,
	_subDetailSequence TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_itemSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subDetailSequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE clinicalImpression(

	resourceType TEXT, -- resourceType: clinicalImpression
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	assessor TEXT, -- Foreign Key to reference table
	previous TEXT, -- Foreign Key to reference table
	problem **LIST** Reference,
	investigation **LIST** ClinicalImpression_Investigation,
	protocol **LIST** uri,
	_protocol **LIST** Element,
	summary TEXT,
	_summary TEXT, -- Foreign Key to element table
	finding **LIST** ClinicalImpression_Finding,
	prognosisCodeableConcept **LIST** CodeableConcept,
	prognosisReference **LIST** Reference,
	supportingInfo **LIST** Reference,
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assessor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (previous)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_summary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE clinicalImpression_Investigation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	item **LIST** Reference,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE clinicalImpression_Finding(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	itemReference TEXT, -- Foreign Key to reference table
	basis TEXT,
	_basis TEXT, -- Foreign Key to element table

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_basis)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem(

	resourceType TEXT, -- resourceType: codeSystem
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	caseSensitive BOOLEAN,
	_caseSensitive TEXT, -- Foreign Key to element table
	valueSet TEXT,
	hierarchyMeaning TEXT, -- enum: grouped-by/is-a/part-of/classified-with
	_hierarchyMeaning TEXT, -- Foreign Key to element table
	compositional BOOLEAN,
	_compositional TEXT, -- Foreign Key to element table
	versionNeeded BOOLEAN,
	_versionNeeded TEXT, -- Foreign Key to element table
	content TEXT, -- enum: not-present/example/fragment/complete/supplement
	_content TEXT, -- Foreign Key to element table
	supplements TEXT,
	"count" INTEGER,
	_count TEXT, -- Foreign Key to element table
	"filter" **LIST** CodeSystem_Filter,
	property **LIST** CodeSystem_Property,
	concept **LIST** CodeSystem_Concept,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_caseSensitive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_hierarchyMeaning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_compositional)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versionNeeded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_content)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Filter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	operator **LIST** code,
	_operator **LIST** Element,
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Property(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	uri TEXT,
	_uri TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: code/Coding/string/integer/boolean/dateTime/decimal
	_type TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Concept(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	"definition" TEXT,
	_definition TEXT, -- Foreign Key to element table
	designation **LIST** CodeSystem_Designation,
	property **LIST** CodeSystem_Property1,
	concept **LIST** CodeSystem_Concept,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Designation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"use" TEXT, -- Foreign Key to coding table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("use")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE codeSystem_Property1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode TEXT, -- Foreign Key to element table
	valueCoding TEXT, -- Foreign Key to coding table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE communication(

	resourceType TEXT, -- resourceType: communication
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	basedOn **LIST** Reference,
	partOf **LIST** Reference,
	inResponseTo **LIST** Reference,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	medium **LIST** CodeableConcept,
	"subject" TEXT, -- Foreign Key to reference table
	topic TEXT, -- Foreign Key to codeableConcept table
	about **LIST** Reference,
	encounter TEXT, -- Foreign Key to reference table
	sent DATETIME,
	_sent TEXT, -- Foreign Key to element table
	received DATETIME,
	_received TEXT, -- Foreign Key to element table
	recipient **LIST** Reference,
	sender TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	payload **LIST** Communication_Payload,
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topic)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_received)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sender)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE communication_Payload(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	contentString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_contentString TEXT, -- Foreign Key to element table
	contentAttachment TEXT, -- Foreign Key to attachment table
	contentReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_contentString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE communicationRequest(

	resourceType TEXT, -- resourceType: communicationRequest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn **LIST** Reference,
	replaces **LIST** Reference,
	groupIdentifier TEXT, -- Foreign Key to identifier table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	doNotPerform BOOLEAN,
	_doNotPerform TEXT, -- Foreign Key to element table
	medium **LIST** CodeableConcept,
	"subject" TEXT, -- Foreign Key to reference table
	about **LIST** Reference,
	encounter TEXT, -- Foreign Key to reference table
	payload **LIST** CommunicationRequest_Payload,
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	authoredOn DATETIME,
	_authoredOn TEXT, -- Foreign Key to element table
	requester TEXT, -- Foreign Key to reference table
	recipient **LIST** Reference,
	sender TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sender)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE communicationRequest_Payload(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	contentString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_contentString TEXT, -- Foreign Key to element table
	contentAttachment TEXT, -- Foreign Key to attachment table
	contentReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_contentString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE compartmentDefinition(

	resourceType TEXT, -- resourceType: compartmentDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"code" TEXT, -- enum: Patient/Encounter/RelatedPerson/Practitioner/Device
	_code TEXT, -- Foreign Key to element table
	"search" BOOLEAN,
	_search TEXT, -- Foreign Key to element table
	"resource" **LIST** CompartmentDefinition_Resource,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_search)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE compartmentDefinition_Resource(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	param **LIST** string,
	_param **LIST** Element,
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition(

	resourceType TEXT, -- resourceType: composition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"status" TEXT, -- enum: preliminary/final/amended/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	author **LIST** Reference,
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	confidentiality TEXT,
	_confidentiality TEXT, -- Foreign Key to element table
	attester **LIST** Composition_Attester,
	custodian TEXT, -- Foreign Key to reference table
	relatesTo **LIST** Composition_RelatesTo,
	"event" **LIST** Composition_Event,
	section **LIST** Composition_Section,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_confidentiality)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (custodian)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition_Attester(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	mode TEXT, -- enum: personal/professional/legal/official
	_mode TEXT, -- Foreign Key to element table
	"time" DATETIME,
	_time TEXT, -- Foreign Key to element table
	party TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_time)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition_RelatesTo(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	targetIdentifier TEXT, -- Foreign Key to identifier table
	targetReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition_Event(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" **LIST** CodeableConcept,
	"period" TEXT, -- Foreign Key to period table
	detail **LIST** Reference,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE composition_Section(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	author **LIST** Reference,
	focus TEXT, -- Foreign Key to reference table
	"text" TEXT, -- Foreign Key to narrative table
	mode TEXT,
	_mode TEXT, -- Foreign Key to element table
	orderedBy TEXT, -- Foreign Key to codeableConcept table
	entry **LIST** Reference,
	emptyReason TEXT, -- Foreign Key to codeableConcept table
	section **LIST** Composition_Section,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orderedBy)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (emptyReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap(

	resourceType TEXT, -- resourceType: conceptMap
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier TEXT, -- Foreign Key to identifier table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	sourceUri TEXT, -- pattern: ^\S*$
	_sourceUri TEXT, -- Foreign Key to element table
	sourceCanonical TEXT, -- pattern: ^\S*$
	_sourceCanonical TEXT, -- Foreign Key to element table
	targetUri TEXT, -- pattern: ^\S*$
	_targetUri TEXT, -- Foreign Key to element table
	targetCanonical TEXT, -- pattern: ^\S*$
	_targetCanonical TEXT, -- Foreign Key to element table
	"group" **LIST** ConceptMap_Group,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_Group(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"source" TEXT,
	_source TEXT, -- Foreign Key to element table
	sourceVersion TEXT,
	_sourceVersion TEXT, -- Foreign Key to element table
	"target" TEXT,
	_target TEXT, -- Foreign Key to element table
	targetVersion TEXT,
	_targetVersion TEXT, -- Foreign Key to element table
	element **LIST** ConceptMap_Element,
	unmapped TEXT, -- Foreign Key to conceptMap_Unmapped table

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_target)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unmapped)
		REFERENCES conceptMap_Unmapped (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_Element(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	"target" **LIST** ConceptMap_Target,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_Target(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	equivalence TEXT, -- enum: relatedto/equivalent/equal/wider/subsumes/narrower/specializes/inexact/unmatched/disjoint
	_equivalence TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	dependsOn **LIST** ConceptMap_DependsOn,
	product **LIST** ConceptMap_DependsOn,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_equivalence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_DependsOn(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	property TEXT,
	_property TEXT, -- Foreign Key to element table
	"system" TEXT,
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table

	FOREIGN KEY (_property)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE conceptMap_Unmapped(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	mode TEXT, -- enum: provided/fixed/other-map
	_mode TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	"url" TEXT,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "condition"(

	resourceType TEXT, -- resourceType: condition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	clinicalStatus TEXT, -- Foreign Key to codeableConcept table
	verificationStatus TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	severity TEXT, -- Foreign Key to codeableConcept table
	"code" TEXT, -- Foreign Key to codeableConcept table
	bodySite **LIST** CodeableConcept,
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	onsetDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_onsetDateTime TEXT, -- Foreign Key to element table
	onsetAge TEXT, -- Foreign Key to age table
	onsetPeriod TEXT, -- Foreign Key to period table
	onsetRange TEXT, -- Foreign Key to range table
	onsetString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_onsetString TEXT, -- Foreign Key to element table
	abatementDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_abatementDateTime TEXT, -- Foreign Key to element table
	abatementAge TEXT, -- Foreign Key to age table
	abatementPeriod TEXT, -- Foreign Key to period table
	abatementRange TEXT, -- Foreign Key to range table
	abatementString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_abatementString TEXT, -- Foreign Key to element table
	recordedDate DATETIME,
	_recordedDate TEXT, -- Foreign Key to element table
	recorder TEXT, -- Foreign Key to reference table
	asserter TEXT, -- Foreign Key to reference table
	stage **LIST** Condition_Stage,
	evidence **LIST** Condition_Evidence,
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (clinicalStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (verificationStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (severity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_abatementDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abatementAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abatementPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abatementRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_abatementString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asserter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE condition_Stage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	summary TEXT, -- Foreign Key to codeableConcept table
	assessment **LIST** Reference,
	"type" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (summary)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE condition_Evidence(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" **LIST** CodeableConcept,
	detail **LIST** Reference

);

CREATE TABLE consent(

	resourceType TEXT, -- resourceType: consent
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: draft/proposed/active/rejected/inactive/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"scope" TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	patient TEXT, -- Foreign Key to reference table
	"dateTime" DATETIME,
	_dateTime TEXT, -- Foreign Key to element table
	performer **LIST** Reference,
	organization **LIST** Reference,
	sourceAttachment TEXT, -- Foreign Key to attachment table
	sourceReference TEXT, -- Foreign Key to reference table
	"policy" **LIST** Consent_Policy,
	policyRule TEXT, -- Foreign Key to codeableConcept table
	verification **LIST** Consent_Verification,
	provision TEXT, -- Foreign Key to consent_Provision table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("scope")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (policyRule)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (provision)
		REFERENCES consent_Provision (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Policy(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	authority TEXT,
	_authority TEXT, -- Foreign Key to element table
	uri TEXT,
	_uri TEXT, -- Foreign Key to element table

	FOREIGN KEY (_authority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Verification(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	verified BOOLEAN,
	_verified TEXT, -- Foreign Key to element table
	verifiedWith TEXT, -- Foreign Key to reference table
	verificationDate DATETIME,
	_verificationDate TEXT, -- Foreign Key to element table

	FOREIGN KEY (_verified)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (verifiedWith)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_verificationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Provision(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: deny/permit
	_type TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	actor **LIST** Consent_Actor,
	"action" **LIST** CodeableConcept,
	securityLabel **LIST** Coding,
	purpose **LIST** Coding,
	class **LIST** Coding,
	"code" **LIST** CodeableConcept,
	dataPeriod TEXT, -- Foreign Key to period table
	"data" **LIST** Consent_Data,
	provision **LIST** Consent_Provision,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Actor(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"role" TEXT, -- Foreign Key to codeableConcept table
	reference TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE consent_Data(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	meaning TEXT, -- enum: instance/related/dependents/authoredby
	_meaning TEXT, -- Foreign Key to element table
	reference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_meaning)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract(

	resourceType TEXT, -- resourceType: contract
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	legalState TEXT, -- Foreign Key to codeableConcept table
	instantiatesCanonical TEXT, -- Foreign Key to reference table
	instantiatesUri TEXT,
	_instantiatesUri TEXT, -- Foreign Key to element table
	contentDerivative TEXT, -- Foreign Key to codeableConcept table
	issued DATETIME,
	_issued TEXT, -- Foreign Key to element table
	applies TEXT, -- Foreign Key to period table
	expirationType TEXT, -- Foreign Key to codeableConcept table
	"subject" **LIST** Reference,
	authority **LIST** Reference,
	"domain" **LIST** Reference,
	"site" **LIST** Reference,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	alias **LIST** string,
	_alias **LIST** Element,
	author TEXT, -- Foreign Key to reference table
	"scope" TEXT, -- Foreign Key to codeableConcept table
	topicCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	topicReference TEXT, -- Foreign Key to reference table
	"type" TEXT, -- Foreign Key to codeableConcept table
	subType **LIST** CodeableConcept,
	contentDefinition TEXT, -- Foreign Key to contract_ContentDefinition table
	term **LIST** Contract_Term,
	supportingInfo **LIST** Reference,
	relevantHistory **LIST** Reference,
	signer **LIST** Contract_Signer,
	friendly **LIST** Contract_Friendly,
	legal **LIST** Contract_Legal,
	"rule" **LIST** Contract_Rule,
	legallyBindingAttachment TEXT, -- Foreign Key to attachment table
	legallyBindingReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (instantiatesCanonical)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentDerivative)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applies)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expirationType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("scope")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentDefinition)
		REFERENCES contract_ContentDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legallyBindingAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legallyBindingReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_ContentDefinition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	subType TEXT, -- Foreign Key to codeableConcept table
	publisher TEXT, -- Foreign Key to reference table
	publicationDate DATETIME,
	_publicationDate TEXT, -- Foreign Key to element table
	publicationStatus TEXT,
	_publicationStatus TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (publisher)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publicationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publicationStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Term(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	issued DATETIME,
	_issued TEXT, -- Foreign Key to element table
	applies TEXT, -- Foreign Key to period table
	topicCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	topicReference TEXT, -- Foreign Key to reference table
	"type" TEXT, -- Foreign Key to codeableConcept table
	subType TEXT, -- Foreign Key to codeableConcept table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	securityLabel **LIST** Contract_SecurityLabel,
	offer TEXT, -- Foreign Key to contract_Offer table
	asset **LIST** Contract_Asset,
	"action" **LIST** Contract_Action,
	"group" **LIST** Contract_Term,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applies)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (topicReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offer)
		REFERENCES contract_Offer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_SecurityLabel(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	number **LIST** unsignedInt,
	_number **LIST** Element,
	classification TEXT, -- Foreign Key to coding table
	category **LIST** Coding,
	control **LIST** Coding,

	FOREIGN KEY (classification)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Offer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	party **LIST** Contract_Party,
	topic TEXT, -- Foreign Key to reference table
	"type" TEXT, -- Foreign Key to codeableConcept table
	decision TEXT, -- Foreign Key to codeableConcept table
	decisionMode **LIST** CodeableConcept,
	answer **LIST** Contract_Answer,
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	linkId **LIST** string,
	_linkId **LIST** Element,
	securityLabelNumber **LIST** unsignedInt,
	_securityLabelNumber **LIST** Element,

	FOREIGN KEY (topic)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (decision)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Party(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	reference **LIST** Reference,
	"role" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Answer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCoding TEXT, -- Foreign Key to coding table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Asset(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"scope" TEXT, -- Foreign Key to codeableConcept table
	"type" **LIST** CodeableConcept,
	typeReference **LIST** Reference,
	subtype **LIST** CodeableConcept,
	relationship TEXT, -- Foreign Key to coding table
	context **LIST** Contract_Context,
	"condition" TEXT,
	_condition TEXT, -- Foreign Key to element table
	periodType **LIST** CodeableConcept,
	"period" **LIST** Period,
	usePeriod **LIST** Period,
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	linkId **LIST** string,
	_linkId **LIST** Element,
	answer **LIST** Contract_Answer,
	securityLabelNumber **LIST** unsignedInt,
	_securityLabelNumber **LIST** Element,
	valuedItem **LIST** Contract_ValuedItem,

	FOREIGN KEY ("scope")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_condition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Context(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	reference TEXT, -- Foreign Key to reference table
	"code" **LIST** CodeableConcept,
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_ValuedItem(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	entityCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	entityReference TEXT, -- Foreign Key to reference table
	identifier TEXT, -- Foreign Key to identifier table
	effectiveTime DATETIME,
	_effectiveTime TEXT, -- Foreign Key to element table
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	points REAL,
	_points TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	payment TEXT,
	_payment TEXT, -- Foreign Key to element table
	paymentDate DATETIME,
	_paymentDate TEXT, -- Foreign Key to element table
	responsible TEXT, -- Foreign Key to reference table
	recipient TEXT, -- Foreign Key to reference table
	linkId **LIST** string,
	_linkId **LIST** Element,
	securityLabelNumber **LIST** unsignedInt,
	_securityLabelNumber **LIST** Element,

	FOREIGN KEY (entityCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (entityReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_points)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_payment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responsible)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Action(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	doNotPerform BOOLEAN,
	_doNotPerform TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"subject" **LIST** Contract_Subject,
	intent TEXT, -- Foreign Key to codeableConcept table
	linkId **LIST** string,
	_linkId **LIST** Element,
	"status" TEXT, -- Foreign Key to codeableConcept table
	context TEXT, -- Foreign Key to reference table
	contextLinkId **LIST** string,
	_contextLinkId **LIST** Element,
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	occurrenceTiming TEXT, -- Foreign Key to timing table
	requester **LIST** Reference,
	requesterLinkId **LIST** string,
	_requesterLinkId **LIST** Element,
	performerType **LIST** CodeableConcept,
	performerRole TEXT, -- Foreign Key to codeableConcept table
	performer TEXT, -- Foreign Key to reference table
	performerLinkId **LIST** string,
	_performerLinkId **LIST** Element,
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	reason **LIST** string,
	_reason **LIST** Element,
	reasonLinkId **LIST** string,
	_reasonLinkId **LIST** Element,
	note **LIST** Annotation,
	securityLabelNumber **LIST** unsignedInt,
	_securityLabelNumber **LIST** Element,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intent)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerRole)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Subject(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	reference **LIST** Reference,
	"role" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Signer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to coding table
	party TEXT, -- Foreign Key to reference table
	"signature" **LIST** Signature,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Friendly(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	contentAttachment TEXT, -- Foreign Key to attachment table
	contentReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Legal(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	contentAttachment TEXT, -- Foreign Key to attachment table
	contentReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE contract_Rule(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	contentAttachment TEXT, -- Foreign Key to attachment table
	contentReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (contentAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contentReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverage(

	resourceType TEXT, -- resourceType: coverage
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	policyHolder TEXT, -- Foreign Key to reference table
	subscriber TEXT, -- Foreign Key to reference table
	subscriberId TEXT,
	_subscriberId TEXT, -- Foreign Key to element table
	beneficiary TEXT, -- Foreign Key to reference table
	"dependent" TEXT,
	_dependent TEXT, -- Foreign Key to element table
	relationship TEXT, -- Foreign Key to codeableConcept table
	"period" TEXT, -- Foreign Key to period table
	payor **LIST** Reference,
	class **LIST** Coverage_Class,
	"order" INTEGER,
	_order TEXT, -- Foreign Key to element table
	network TEXT,
	_network TEXT, -- Foreign Key to element table
	costToBeneficiary **LIST** Coverage_CostToBeneficiary,
	subrogation BOOLEAN,
	_subrogation TEXT, -- Foreign Key to element table
	contract **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (policyHolder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subscriber)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subscriberId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (beneficiary)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dependent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_order)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_network)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subrogation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverage_Class(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverage_CostToBeneficiary(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueMoney TEXT, -- Foreign Key to money table
	exception **LIST** Coverage_Exception,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverage_Exception(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest(

	resourceType TEXT, -- resourceType: coverageEligibilityRequest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"priority" TEXT, -- Foreign Key to codeableConcept table
	purpose **LIST** enum, -- auth-requirements/benefits/discovery/validation,
	_purpose **LIST** Element,
	patient TEXT, -- Foreign Key to reference table
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate TEXT, -- Foreign Key to element table
	servicedPeriod TEXT, -- Foreign Key to period table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	enterer TEXT, -- Foreign Key to reference table
	"provider" TEXT, -- Foreign Key to reference table
	insurer TEXT, -- Foreign Key to reference table
	facility TEXT, -- Foreign Key to reference table
	supportingInfo **LIST** CoverageEligibilityRequest_SupportingInfo,
	insurance **LIST** CoverageEligibilityRequest_Insurance,
	item **LIST** CoverageEligibilityRequest_Item,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest_SupportingInfo(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	information TEXT, -- Foreign Key to reference table
	appliesToAll BOOLEAN,
	_appliesToAll TEXT, -- Foreign Key to element table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (information)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_appliesToAll)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest_Insurance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	focal BOOLEAN,
	_focal TEXT, -- Foreign Key to element table
	coverage TEXT, -- Foreign Key to reference table
	businessArrangement TEXT,
	_businessArrangement TEXT, -- Foreign Key to element table

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_businessArrangement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	supportingInfoSequence **LIST** positiveInt,
	_supportingInfoSequence **LIST** Element,
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	"provider" TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	facility TEXT, -- Foreign Key to reference table
	diagnosis **LIST** CoverageEligibilityRequest_Diagnosis,
	detail **LIST** Reference,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityRequest_Diagnosis(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	diagnosisCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	diagnosisReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (diagnosisCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse(

	resourceType TEXT, -- resourceType: coverageEligibilityResponse
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	purpose **LIST** enum, -- auth-requirements/benefits/discovery/validation,
	_purpose **LIST** Element,
	patient TEXT, -- Foreign Key to reference table
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate TEXT, -- Foreign Key to element table
	servicedPeriod TEXT, -- Foreign Key to period table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	requestor TEXT, -- Foreign Key to reference table
	request TEXT, -- Foreign Key to reference table
	outcome TEXT, -- enum: queued/complete/error/partial
	_outcome TEXT, -- Foreign Key to element table
	disposition TEXT,
	_disposition TEXT, -- Foreign Key to element table
	insurer TEXT, -- Foreign Key to reference table
	insurance **LIST** CoverageEligibilityResponse_Insurance,
	preAuthRef TEXT,
	_preAuthRef TEXT, -- Foreign Key to element table
	form TEXT, -- Foreign Key to codeableConcept table
	error **LIST** CoverageEligibilityResponse_Error,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preAuthRef)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse_Insurance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	coverage TEXT, -- Foreign Key to reference table
	inforce BOOLEAN,
	_inforce TEXT, -- Foreign Key to element table
	benefitPeriod TEXT, -- Foreign Key to period table
	item **LIST** CoverageEligibilityResponse_Item,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_inforce)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefitPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	"provider" TEXT, -- Foreign Key to reference table
	excluded BOOLEAN,
	_excluded TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	network TEXT, -- Foreign Key to codeableConcept table
	unit TEXT, -- Foreign Key to codeableConcept table
	term TEXT, -- Foreign Key to codeableConcept table
	benefit **LIST** CoverageEligibilityResponse_Benefit,
	authorizationRequired BOOLEAN,
	_authorizationRequired TEXT, -- Foreign Key to element table
	authorizationSupporting **LIST** CodeableConcept,
	authorizationUrl TEXT,
	_authorizationUrl TEXT, -- Foreign Key to element table

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_excluded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (term)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorizationRequired)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorizationUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse_Benefit(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	allowedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_allowedUnsignedInt TEXT, -- Foreign Key to element table
	allowedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_allowedString TEXT, -- Foreign Key to element table
	allowedMoney TEXT, -- Foreign Key to money table
	usedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_usedUnsignedInt TEXT, -- Foreign Key to element table
	usedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_usedString TEXT, -- Foreign Key to element table
	usedMoney TEXT, -- Foreign Key to money table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allowedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE coverageEligibilityResponse_Error(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE detectedIssue(

	resourceType TEXT, -- resourceType: detectedIssue
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	severity TEXT, -- enum: high/moderate/low
	_severity TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	identifiedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_identifiedDateTime TEXT, -- Foreign Key to element table
	identifiedPeriod TEXT, -- Foreign Key to period table
	author TEXT, -- Foreign Key to reference table
	implicated **LIST** Reference,
	evidence **LIST** DetectedIssue_Evidence,
	detail TEXT,
	_detail TEXT, -- Foreign Key to element table
	reference TEXT,
	_reference TEXT, -- Foreign Key to element table
	mitigation **LIST** DetectedIssue_Mitigation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identifiedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifiedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detail)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE detectedIssue_Evidence(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" **LIST** CodeableConcept,
	detail **LIST** Reference

);

CREATE TABLE detectedIssue_Mitigation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"action" TEXT, -- Foreign Key to codeableConcept table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	author TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("action")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device(

	resourceType TEXT, -- resourceType: device
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"definition" TEXT, -- Foreign Key to reference table
	udiCarrier **LIST** Device_UdiCarrier,
	"status" TEXT, -- enum: active/inactive/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	statusReason **LIST** CodeableConcept,
	distinctIdentifier TEXT,
	_distinctIdentifier TEXT, -- Foreign Key to element table
	manufacturer TEXT,
	_manufacturer TEXT, -- Foreign Key to element table
	manufactureDate DATETIME,
	_manufactureDate TEXT, -- Foreign Key to element table
	expirationDate DATETIME,
	_expirationDate TEXT, -- Foreign Key to element table
	lotNumber TEXT,
	_lotNumber TEXT, -- Foreign Key to element table
	serialNumber TEXT,
	_serialNumber TEXT, -- Foreign Key to element table
	deviceName **LIST** Device_DeviceName,
	modelNumber TEXT,
	_modelNumber TEXT, -- Foreign Key to element table
	partNumber TEXT,
	_partNumber TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	specialization **LIST** Device_Specialization,
	"version" **LIST** Device_Version,
	property **LIST** Device_Property,
	patient TEXT, -- Foreign Key to reference table
	"owner" TEXT, -- Foreign Key to reference table
	contact **LIST** ContactPoint,
	"location" TEXT, -- Foreign Key to reference table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	note **LIST** Annotation,
	safety **LIST** CodeableConcept,
	parent TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("definition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_distinctIdentifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_manufacturer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_manufactureDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expirationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lotNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_serialNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_modelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_partNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_UdiCarrier(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	deviceIdentifier TEXT,
	_deviceIdentifier TEXT, -- Foreign Key to element table
	issuer TEXT,
	_issuer TEXT, -- Foreign Key to element table
	jurisdiction TEXT,
	_jurisdiction TEXT, -- Foreign Key to element table
	carrierAIDC TEXT,
	_carrierAIDC TEXT, -- Foreign Key to element table
	carrierHRF TEXT,
	_carrierHRF TEXT, -- Foreign Key to element table
	entryType TEXT, -- enum: barcode/rfid/manual/card/self-reported/unknown
	_entryType TEXT, -- Foreign Key to element table

	FOREIGN KEY (_deviceIdentifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issuer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_jurisdiction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_carrierAIDC)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_carrierHRF)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_entryType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_DeviceName(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other
	_type TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_Specialization(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	systemType TEXT, -- Foreign Key to codeableConcept table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table

	FOREIGN KEY (systemType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_Version(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	component TEXT, -- Foreign Key to identifier table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (component)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE device_Property(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	valueQuantity **LIST** Quantity,
	valueCode **LIST** CodeableConcept,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition(

	resourceType TEXT, -- resourceType: deviceDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	udiDeviceIdentifier **LIST** DeviceDefinition_UdiDeviceIdentifier,
	manufacturerString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_manufacturerString TEXT, -- Foreign Key to element table
	manufacturerReference TEXT, -- Foreign Key to reference table
	deviceName **LIST** DeviceDefinition_DeviceName,
	modelNumber TEXT,
	_modelNumber TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	specialization **LIST** DeviceDefinition_Specialization,
	"version" **LIST** string,
	_version **LIST** Element,
	safety **LIST** CodeableConcept,
	shelfLifeStorage **LIST** ProductShelfLife,
	physicalCharacteristics TEXT, -- Foreign Key to prodCharacteristic table
	languageCode **LIST** CodeableConcept,
	capability **LIST** DeviceDefinition_Capability,
	property **LIST** DeviceDefinition_Property,
	"owner" TEXT, -- Foreign Key to reference table
	contact **LIST** ContactPoint,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	onlineInformation TEXT,
	_onlineInformation TEXT, -- Foreign Key to element table
	note **LIST** Annotation,
	quantity TEXT, -- Foreign Key to quantity table
	parentDevice TEXT, -- Foreign Key to reference table
	material **LIST** DeviceDefinition_Material,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_manufacturerString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturerReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_modelNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalCharacteristics)
		REFERENCES prodCharacteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onlineInformation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parentDevice)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_UdiDeviceIdentifier(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	deviceIdentifier TEXT,
	_deviceIdentifier TEXT, -- Foreign Key to element table
	issuer TEXT,
	_issuer TEXT, -- Foreign Key to element table
	jurisdiction TEXT,
	_jurisdiction TEXT, -- Foreign Key to element table

	FOREIGN KEY (_deviceIdentifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issuer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_jurisdiction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_DeviceName(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: udi-label-name/user-friendly-name/patient-reported-name/manufacturer-name/model-name/other
	_type TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Specialization(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	systemType TEXT,
	_systemType TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table

	FOREIGN KEY (_systemType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Capability(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"description" **LIST** CodeableConcept,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Property(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	valueQuantity **LIST** Quantity,
	valueCode **LIST** CodeableConcept,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceDefinition_Material(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	substance TEXT, -- Foreign Key to codeableConcept table
	alternate BOOLEAN,
	_alternate TEXT, -- Foreign Key to element table
	allergenicIndicator BOOLEAN,
	_allergenicIndicator TEXT, -- Foreign Key to element table

	FOREIGN KEY (substance)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alternate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allergenicIndicator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceMetric(

	resourceType TEXT, -- resourceType: deviceMetric
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"type" TEXT, -- Foreign Key to codeableConcept table
	unit TEXT, -- Foreign Key to codeableConcept table
	"source" TEXT, -- Foreign Key to reference table
	parent TEXT, -- Foreign Key to reference table
	operationalStatus TEXT, -- enum: on/off/standby/entered-in-error
	_operationalStatus TEXT, -- Foreign Key to element table
	color TEXT, -- enum: black/red/green/yellow/blue/magenta/cyan/white
	_color TEXT, -- Foreign Key to element table
	category TEXT, -- enum: measurement/setting/calculation/unspecified
	_category TEXT, -- Foreign Key to element table
	measurementPeriod TEXT, -- Foreign Key to timing table
	calibration **LIST** DeviceMetric_Calibration,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_operationalStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_color)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_category)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measurementPeriod)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceMetric_Calibration(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: unspecified/offset/gain/two-point
	_type TEXT, -- Foreign Key to element table
	"state" TEXT, -- enum: not-calibrated/calibration-required/calibrated/unspecified
	_state TEXT, -- Foreign Key to element table
	"time" DATETIME,
	_time TEXT, -- Foreign Key to element table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_state)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_time)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceRequest(

	resourceType TEXT, -- resourceType: deviceRequest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	basedOn **LIST** Reference,
	priorRequest **LIST** Reference,
	groupIdentifier TEXT, -- Foreign Key to identifier table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	intent TEXT,
	_intent TEXT, -- Foreign Key to element table
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	codeReference TEXT, -- Foreign Key to reference table
	codeCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	"parameter" **LIST** DeviceRequest_Parameter,
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	occurrenceTiming TEXT, -- Foreign Key to timing table
	authoredOn DATETIME,
	_authoredOn TEXT, -- Foreign Key to element table
	requester TEXT, -- Foreign Key to reference table
	performerType TEXT, -- Foreign Key to codeableConcept table
	performer TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	insurance **LIST** Reference,
	supportingInfo **LIST** Reference,
	note **LIST** Annotation,
	relevantHistory **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (codeReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (codeCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceRequest_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE deviceUseStatement(

	resourceType TEXT, -- resourceType: deviceUseStatement
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn **LIST** Reference,
	"status" TEXT, -- enum: active/completed/entered-in-error/intended/stopped/on-hold
	_status TEXT, -- Foreign Key to element table
	"subject" TEXT, -- Foreign Key to reference table
	derivedFrom **LIST** Reference,
	timingTiming TEXT, -- Foreign Key to timing table
	timingPeriod TEXT, -- Foreign Key to period table
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime TEXT, -- Foreign Key to element table
	recordedOn DATETIME,
	_recordedOn TEXT, -- Foreign Key to element table
	"source" TEXT, -- Foreign Key to reference table
	device TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	bodySite TEXT, -- Foreign Key to codeableConcept table
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recordedOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE diagnosticReport(

	resourceType TEXT, -- resourceType: diagnosticReport
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn **LIST** Reference,
	"status" TEXT, -- enum: registered/partial/preliminary/final/amended/corrected/appended/cancelled/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	issued DATETIME,
	_issued TEXT, -- Foreign Key to element table
	performer **LIST** Reference,
	resultsInterpreter **LIST** Reference,
	specimen **LIST** Reference,
	"result" **LIST** Reference,
	imagingStudy **LIST** Reference,
	media **LIST** DiagnosticReport_Media,
	conclusion TEXT,
	_conclusion TEXT, -- Foreign Key to element table
	conclusionCode **LIST** CodeableConcept,
	presentedForm **LIST** Attachment,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conclusion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE diagnosticReport_Media(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	link TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (link)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentManifest(

	resourceType TEXT, -- resourceType: documentManifest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	masterIdentifier TEXT, -- Foreign Key to identifier table
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: current/superseded/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	author **LIST** Reference,
	recipient **LIST** Reference,
	"source" TEXT,
	_source TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	content **LIST** Reference,
	related **LIST** DocumentManifest_Related,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (masterIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentManifest_Related(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	ref TEXT, -- Foreign Key to reference table

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ref)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentReference(

	resourceType TEXT, -- resourceType: documentReference
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	masterIdentifier TEXT, -- Foreign Key to identifier table
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: current/superseded/entered-in-error
	_status TEXT, -- Foreign Key to element table
	docStatus TEXT,
	_docStatus TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	"subject" TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	author **LIST** Reference,
	authenticator TEXT, -- Foreign Key to reference table
	custodian TEXT, -- Foreign Key to reference table
	relatesTo **LIST** DocumentReference_RelatesTo,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	securityLabel **LIST** CodeableConcept,
	content **LIST** DocumentReference_Content,
	context TEXT, -- Foreign Key to documentReference_Context table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (masterIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_docStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authenticator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (custodian)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES documentReference_Context (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentReference_RelatesTo(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- enum: replaces/transforms/signs/appends
	_code TEXT, -- Foreign Key to element table
	"target" TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentReference_Content(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	attachment TEXT, -- Foreign Key to attachment table
	format TEXT, -- Foreign Key to coding table

	FOREIGN KEY (attachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (format)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE documentReference_Context(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	encounter **LIST** Reference,
	"event" **LIST** CodeableConcept,
	"period" TEXT, -- Foreign Key to period table
	facilityType TEXT, -- Foreign Key to codeableConcept table
	practiceSetting TEXT, -- Foreign Key to codeableConcept table
	sourcePatientInfo TEXT, -- Foreign Key to reference table
	related **LIST** Reference,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facilityType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (practiceSetting)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourcePatientInfo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis(

	resourceType TEXT, -- resourceType: effectEvidenceSynthesis
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	note **LIST** Annotation,
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	synthesisType TEXT, -- Foreign Key to codeableConcept table
	studyType TEXT, -- Foreign Key to codeableConcept table
	"population" TEXT, -- Foreign Key to reference table
	exposure TEXT, -- Foreign Key to reference table
	exposureAlternative TEXT, -- Foreign Key to reference table
	outcome TEXT, -- Foreign Key to reference table
	sampleSize TEXT, -- Foreign Key to effectEvidenceSynthesis_SampleSize table
	resultsByExposure **LIST** EffectEvidenceSynthesis_ResultsByExposure,
	effectEstimate **LIST** EffectEvidenceSynthesis_EffectEstimate,
	certainty **LIST** EffectEvidenceSynthesis_Certainty,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (synthesisType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposure)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureAlternative)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sampleSize)
		REFERENCES effectEvidenceSynthesis_SampleSize (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_SampleSize(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	numberOfStudies INTEGER,
	_numberOfStudies TEXT, -- Foreign Key to element table
	numberOfParticipants INTEGER,
	_numberOfParticipants TEXT, -- Foreign Key to element table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfStudies)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfParticipants)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_ResultsByExposure(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	exposureState TEXT, -- enum: exposure/exposure-alternative
	_exposureState TEXT, -- Foreign Key to element table
	variantState TEXT, -- Foreign Key to codeableConcept table
	riskEvidenceSynthesis TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exposureState)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variantState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (riskEvidenceSynthesis)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_EffectEstimate(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	variantState TEXT, -- Foreign Key to codeableConcept table
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	unitOfMeasure TEXT, -- Foreign Key to codeableConcept table
	precisionEstimate **LIST** EffectEvidenceSynthesis_PrecisionEstimate,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variantState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfMeasure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_PrecisionEstimate(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"level" REAL,
	_level TEXT, -- Foreign Key to element table
	"from" REAL,
	_from TEXT, -- Foreign Key to element table
	"to" REAL,
	_to TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_level)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_from)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_to)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE effectEvidenceSynthesis_Certainty(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	rating **LIST** CodeableConcept,
	note **LIST** Annotation,
	certaintySubcomponent **LIST** EffectEvidenceSynthesis_CertaintySubcomponent

);

CREATE TABLE effectEvidenceSynthesis_CertaintySubcomponent(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	rating **LIST** CodeableConcept,
	note **LIST** Annotation,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter(

	resourceType TEXT, -- resourceType: encounter
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	statusHistory **LIST** Encounter_StatusHistory,
	class TEXT, -- Foreign Key to coding table
	classHistory **LIST** Encounter_ClassHistory,
	"type" **LIST** CodeableConcept,
	serviceType TEXT, -- Foreign Key to codeableConcept table
	"priority" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	episodeOfCare **LIST** Reference,
	basedOn **LIST** Reference,
	participant **LIST** Encounter_Participant,
	appointment **LIST** Reference,
	"period" TEXT, -- Foreign Key to period table
	"length" TEXT, -- Foreign Key to duration table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	diagnosis **LIST** Encounter_Diagnosis,
	account **LIST** Reference,
	hospitalization TEXT, -- Foreign Key to encounter_Hospitalization table
	"location" **LIST** Encounter_Location,
	serviceProvider TEXT, -- Foreign Key to reference table
	partOf TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("length")
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hospitalization)
		REFERENCES encounter_Hospitalization (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (serviceProvider)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_StatusHistory(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"status" TEXT, -- enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_ClassHistory(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	class TEXT, -- Foreign Key to coding table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (class)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Participant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" **LIST** CodeableConcept,
	"period" TEXT, -- Foreign Key to period table
	individual TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (individual)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Diagnosis(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"condition" TEXT, -- Foreign Key to reference table
	"use" TEXT, -- Foreign Key to codeableConcept table
	"rank" INTEGER,
	_rank TEXT, -- Foreign Key to element table

	FOREIGN KEY ("condition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("use")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rank)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Hospitalization(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	preAdmissionIdentifier TEXT, -- Foreign Key to identifier table
	origin TEXT, -- Foreign Key to reference table
	admitSource TEXT, -- Foreign Key to codeableConcept table
	reAdmission TEXT, -- Foreign Key to codeableConcept table
	dietPreference **LIST** CodeableConcept,
	specialCourtesy **LIST** CodeableConcept,
	specialArrangement **LIST** CodeableConcept,
	destination TEXT, -- Foreign Key to reference table
	dischargeDisposition TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (preAdmissionIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (origin)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (admitSource)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reAdmission)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dischargeDisposition)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE encounter_Location(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"location" TEXT, -- Foreign Key to reference table
	"status" TEXT, -- enum: planned/active/reserved/completed
	_status TEXT, -- Foreign Key to element table
	physicalType TEXT, -- Foreign Key to codeableConcept table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "endpoint"(

	resourceType TEXT, -- resourceType: endpoint
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: active/suspended/error/off/entered-in-error/test
	_status TEXT, -- Foreign Key to element table
	connectionType TEXT, -- Foreign Key to coding table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	managingOrganization TEXT, -- Foreign Key to reference table
	contact **LIST** ContactPoint,
	"period" TEXT, -- Foreign Key to period table
	payloadType **LIST** CodeableConcept,
	payloadMimeType **LIST** code,
	_payloadMimeType **LIST** Element,
	"address" TEXT,
	_address TEXT, -- Foreign Key to element table
	header **LIST** string,
	_header **LIST** Element,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (connectionType)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_address)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE enrollmentRequest(

	resourceType TEXT, -- resourceType: enrollmentRequest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	insurer TEXT, -- Foreign Key to reference table
	"provider" TEXT, -- Foreign Key to reference table
	candidate TEXT, -- Foreign Key to reference table
	coverage TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (candidate)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE enrollmentResponse(

	resourceType TEXT, -- resourceType: enrollmentResponse
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	request TEXT, -- Foreign Key to reference table
	outcome TEXT, -- enum: queued/complete/error/partial
	_outcome TEXT, -- Foreign Key to element table
	disposition TEXT,
	_disposition TEXT, -- Foreign Key to element table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	organization TEXT, -- Foreign Key to reference table
	requestProvider TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestProvider)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE episodeOfCare(

	resourceType TEXT, -- resourceType: episodeOfCare
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error
	_status TEXT, -- Foreign Key to element table
	statusHistory **LIST** EpisodeOfCare_StatusHistory,
	"type" **LIST** CodeableConcept,
	diagnosis **LIST** EpisodeOfCare_Diagnosis,
	patient TEXT, -- Foreign Key to reference table
	managingOrganization TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table
	referralRequest **LIST** Reference,
	careManager TEXT, -- Foreign Key to reference table
	team **LIST** Reference,
	account **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (careManager)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE episodeOfCare_StatusHistory(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"status" TEXT, -- enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE episodeOfCare_Diagnosis(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"condition" TEXT, -- Foreign Key to reference table
	"role" TEXT, -- Foreign Key to codeableConcept table
	"rank" INTEGER,
	_rank TEXT, -- Foreign Key to element table

	FOREIGN KEY ("condition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rank)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE eventDefinition(

	resourceType TEXT, -- resourceType: eventDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	"trigger" **LIST** TriggerDefinition,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE evidence(

	resourceType TEXT, -- resourceType: evidence
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	shortTitle TEXT,
	_shortTitle TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	note **LIST** Annotation,
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	exposureBackground TEXT, -- Foreign Key to reference table
	exposureVariant **LIST** Reference,
	outcome **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureBackground)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE evidenceVariable(

	resourceType TEXT, -- resourceType: evidenceVariable
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	shortTitle TEXT,
	_shortTitle TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	note **LIST** Annotation,
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	"type" TEXT, -- enum: dichotomous/continuous/descriptive
	_type TEXT, -- Foreign Key to element table
	characteristic **LIST** EvidenceVariable_Characteristic,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE evidenceVariable_Characteristic(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	definitionReference TEXT, -- Foreign Key to reference table
	definitionCanonical TEXT, -- pattern: ^\S*$
	_definitionCanonical TEXT, -- Foreign Key to element table
	definitionCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	definitionExpression TEXT, -- Foreign Key to expression table
	definitionDataRequirement TEXT, -- Foreign Key to dataRequirement table
	definitionTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	usageContext **LIST** UsageContext,
	exclude BOOLEAN,
	_exclude TEXT, -- Foreign Key to element table
	participantEffectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_participantEffectiveDateTime TEXT, -- Foreign Key to element table
	participantEffectivePeriod TEXT, -- Foreign Key to period table
	participantEffectiveDuration TEXT, -- Foreign Key to duration table
	participantEffectiveTiming TEXT, -- Foreign Key to timing table
	timeFromStart TEXT, -- Foreign Key to duration table
	groupMeasure TEXT, -- enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_groupMeasure TEXT, -- Foreign Key to element table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timeFromStart)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupMeasure)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario(

	resourceType TEXT, -- resourceType: exampleScenario
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	actor **LIST** ExampleScenario_Actor,
	"instance" **LIST** ExampleScenario_Instance,
	process **LIST** ExampleScenario_Process,
	workflow **LIST** canonical,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Actor(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	actorId TEXT,
	_actorId TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: person/entity
	_type TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_actorId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Instance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	resourceId TEXT,
	_resourceId TEXT, -- Foreign Key to element table
	resourceType TEXT,
	_resourceType TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"version" **LIST** ExampleScenario_Version,
	containedInstance **LIST** ExampleScenario_ContainedInstance,

	FOREIGN KEY (_resourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resourceType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Version(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	versionId TEXT,
	_versionId TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_versionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_ContainedInstance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	resourceId TEXT,
	_resourceId TEXT, -- Foreign Key to element table
	versionId TEXT,
	_versionId TEXT, -- Foreign Key to element table

	FOREIGN KEY (_resourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_versionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Process(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	preConditions TEXT,
	_preConditions TEXT, -- Foreign Key to element table
	postConditions TEXT,
	_postConditions TEXT, -- Foreign Key to element table
	step **LIST** ExampleScenario_Step,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preConditions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_postConditions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Step(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	process **LIST** ExampleScenario_Process,
	pause BOOLEAN,
	_pause TEXT, -- Foreign Key to element table
	operation TEXT, -- Foreign Key to exampleScenario_Operation table
	alternative **LIST** ExampleScenario_Alternative,

	FOREIGN KEY (_pause)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operation)
		REFERENCES exampleScenario_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Operation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	number TEXT,
	_number TEXT, -- Foreign Key to element table
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	initiator TEXT,
	_initiator TEXT, -- Foreign Key to element table
	receiver TEXT,
	_receiver TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	initiatorActive BOOLEAN,
	_initiatorActive TEXT, -- Foreign Key to element table
	receiverActive BOOLEAN,
	_receiverActive TEXT, -- Foreign Key to element table
	request TEXT, -- Foreign Key to exampleScenario_ContainedInstance table
	response TEXT, -- Foreign Key to exampleScenario_ContainedInstance table

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_initiator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_receiver)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_initiatorActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_receiverActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES exampleScenario_ContainedInstance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES exampleScenario_ContainedInstance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE exampleScenario_Alternative(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	step **LIST** ExampleScenario_Step,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit(

	resourceType TEXT, -- resourceType: explanationOfBenefit
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: active/cancelled/draft/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	subType TEXT, -- Foreign Key to codeableConcept table
	"use" TEXT,
	_use TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	billablePeriod TEXT, -- Foreign Key to period table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	enterer TEXT, -- Foreign Key to reference table
	insurer TEXT, -- Foreign Key to reference table
	"provider" TEXT, -- Foreign Key to reference table
	"priority" TEXT, -- Foreign Key to codeableConcept table
	fundsReserveRequested TEXT, -- Foreign Key to codeableConcept table
	fundsReserve TEXT, -- Foreign Key to codeableConcept table
	related **LIST** ExplanationOfBenefit_Related,
	prescription TEXT, -- Foreign Key to reference table
	originalPrescription TEXT, -- Foreign Key to reference table
	payee TEXT, -- Foreign Key to explanationOfBenefit_Payee table
	referral TEXT, -- Foreign Key to reference table
	facility TEXT, -- Foreign Key to reference table
	claim TEXT, -- Foreign Key to reference table
	claimResponse TEXT, -- Foreign Key to reference table
	outcome TEXT,
	_outcome TEXT, -- Foreign Key to element table
	disposition TEXT,
	_disposition TEXT, -- Foreign Key to element table
	preAuthRef **LIST** string,
	_preAuthRef **LIST** Element,
	preAuthRefPeriod **LIST** Period,
	careTeam **LIST** ExplanationOfBenefit_CareTeam,
	supportingInfo **LIST** ExplanationOfBenefit_SupportingInfo,
	diagnosis **LIST** ExplanationOfBenefit_Diagnosis,
	"procedure" **LIST** ExplanationOfBenefit_Procedure,
	precedence INTEGER,
	_precedence TEXT, -- Foreign Key to element table
	insurance **LIST** ExplanationOfBenefit_Insurance,
	accident TEXT, -- Foreign Key to explanationOfBenefit_Accident table
	item **LIST** ExplanationOfBenefit_Item,
	addItem **LIST** ExplanationOfBenefit_AddItem,
	adjudication **LIST** ExplanationOfBenefit_Adjudication,
	total **LIST** ExplanationOfBenefit_Total,
	payment TEXT, -- Foreign Key to explanationOfBenefit_Payment table
	formCode TEXT, -- Foreign Key to codeableConcept table
	form TEXT, -- Foreign Key to attachment table
	processNote **LIST** ExplanationOfBenefit_ProcessNote,
	benefitPeriod TEXT, -- Foreign Key to period table
	benefitBalance **LIST** ExplanationOfBenefit_BenefitBalance,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (billablePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (insurer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserveRequested)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundsReserve)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (originalPrescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES explanationOfBenefit_Payee (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referral)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (facility)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claim)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (claimResponse)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precedence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (accident)
		REFERENCES explanationOfBenefit_Accident (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payment)
		REFERENCES explanationOfBenefit_Payment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (formCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (benefitPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Related(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	claim TEXT, -- Foreign Key to reference table
	relationship TEXT, -- Foreign Key to codeableConcept table
	reference TEXT, -- Foreign Key to identifier table

	FOREIGN KEY (claim)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reference)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Payee(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	party TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (party)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_CareTeam(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	"provider" TEXT, -- Foreign Key to reference table
	responsible BOOLEAN,
	_responsible TEXT, -- Foreign Key to element table
	"role" TEXT, -- Foreign Key to codeableConcept table
	qualification TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responsible)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_SupportingInfo(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	category TEXT, -- Foreign Key to codeableConcept table
	"code" TEXT, -- Foreign Key to codeableConcept table
	timingDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_timingDate TEXT, -- Foreign Key to element table
	timingPeriod TEXT, -- Foreign Key to period table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueReference TEXT, -- Foreign Key to reference table
	reason TEXT, -- Foreign Key to coding table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Diagnosis(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	diagnosisCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	diagnosisReference TEXT, -- Foreign Key to reference table
	"type" **LIST** CodeableConcept,
	onAdmission TEXT, -- Foreign Key to codeableConcept table
	packageCode TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diagnosisReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onAdmission)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packageCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Procedure(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	"type" **LIST** CodeableConcept,
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	procedureCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	procedureReference TEXT, -- Foreign Key to reference table
	udi **LIST** Reference,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Insurance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	focal BOOLEAN,
	_focal TEXT, -- Foreign Key to element table
	coverage TEXT, -- Foreign Key to reference table
	preAuthRef **LIST** string,
	_preAuthRef **LIST** Element,

	FOREIGN KEY (_focal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (coverage)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Accident(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"date" DATE,
	_date TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	locationAddress TEXT, -- Foreign Key to address table
	locationReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	careTeamSequence **LIST** positiveInt,
	_careTeamSequence **LIST** Element,
	diagnosisSequence **LIST** positiveInt,
	_diagnosisSequence **LIST** Element,
	procedureSequence **LIST** positiveInt,
	_procedureSequence **LIST** Element,
	informationSequence **LIST** positiveInt,
	_informationSequence **LIST** Element,
	revenue TEXT, -- Foreign Key to codeableConcept table
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate TEXT, -- Foreign Key to element table
	servicedPeriod TEXT, -- Foreign Key to period table
	locationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	locationAddress TEXT, -- Foreign Key to address table
	locationReference TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	udi **LIST** Reference,
	bodySite TEXT, -- Foreign Key to codeableConcept table
	subSite **LIST** CodeableConcept,
	encounter **LIST** Reference,
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ExplanationOfBenefit_Adjudication,
	detail **LIST** ExplanationOfBenefit_Detail,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Adjudication(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	reason TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to money table
	"value" REAL,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Detail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	revenue TEXT, -- Foreign Key to codeableConcept table
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	udi **LIST** Reference,
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ExplanationOfBenefit_Adjudication,
	subDetail **LIST** ExplanationOfBenefit_SubDetail,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_SubDetail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	revenue TEXT, -- Foreign Key to codeableConcept table
	category TEXT, -- Foreign Key to codeableConcept table
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	udi **LIST** Reference,
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ExplanationOfBenefit_Adjudication,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (revenue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_AddItem(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemSequence **LIST** positiveInt,
	_itemSequence **LIST** Element,
	detailSequence **LIST** positiveInt,
	_detailSequence **LIST** Element,
	subDetailSequence **LIST** positiveInt,
	_subDetailSequence **LIST** Element,
	"provider" **LIST** Reference,
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	programCode **LIST** CodeableConcept,
	servicedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_servicedDate TEXT, -- Foreign Key to element table
	servicedPeriod TEXT, -- Foreign Key to period table
	locationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	locationAddress TEXT, -- Foreign Key to address table
	locationReference TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	bodySite TEXT, -- Foreign Key to codeableConcept table
	subSite **LIST** CodeableConcept,
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ExplanationOfBenefit_Adjudication,
	detail **LIST** ExplanationOfBenefit_Detail1,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_servicedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (servicedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (locationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Detail1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ExplanationOfBenefit_Adjudication,
	subDetail **LIST** ExplanationOfBenefit_SubDetail1,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_SubDetail1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	productOrService TEXT, -- Foreign Key to codeableConcept table
	modifier **LIST** CodeableConcept,
	quantity TEXT, -- Foreign Key to quantity table
	unitPrice TEXT, -- Foreign Key to money table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	net TEXT, -- Foreign Key to money table
	noteNumber **LIST** positiveInt,
	_noteNumber **LIST** Element,
	adjudication **LIST** ExplanationOfBenefit_Adjudication,

	FOREIGN KEY (productOrService)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitPrice)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (net)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Total(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to money table

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Payment(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	adjustment TEXT, -- Foreign Key to money table
	adjustmentReason TEXT, -- Foreign Key to codeableConcept table
	"date" DATE,
	_date TEXT, -- Foreign Key to element table
	amount TEXT, -- Foreign Key to money table
	identifier TEXT, -- Foreign Key to identifier table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustment)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (adjustmentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_ProcessNote(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	number INTEGER,
	_number TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: display/print/printoper
	_type TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	"language" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_BenefitBalance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	excluded BOOLEAN,
	_excluded TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	network TEXT, -- Foreign Key to codeableConcept table
	unit TEXT, -- Foreign Key to codeableConcept table
	term TEXT, -- Foreign Key to codeableConcept table
	financial **LIST** ExplanationOfBenefit_Financial,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_excluded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (network)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (term)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE explanationOfBenefit_Financial(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	allowedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_allowedUnsignedInt TEXT, -- Foreign Key to element table
	allowedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_allowedString TEXT, -- Foreign Key to element table
	allowedMoney TEXT, -- Foreign Key to money table
	usedUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_usedUnsignedInt TEXT, -- Foreign Key to element table
	usedMoney TEXT, -- Foreign Key to money table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allowedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usedUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (usedMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE familyMemberHistory(

	resourceType TEXT, -- resourceType: familyMemberHistory
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	"status" TEXT, -- enum: partial/completed/entered-in-error/health-unknown
	_status TEXT, -- Foreign Key to element table
	dataAbsentReason TEXT, -- Foreign Key to codeableConcept table
	patient TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	relationship TEXT, -- Foreign Key to codeableConcept table
	sex TEXT, -- Foreign Key to codeableConcept table
	bornPeriod TEXT, -- Foreign Key to period table
	bornDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_bornDate TEXT, -- Foreign Key to element table
	bornString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_bornString TEXT, -- Foreign Key to element table
	ageAge TEXT, -- Foreign Key to age table
	ageRange TEXT, -- Foreign Key to range table
	ageString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_ageString TEXT, -- Foreign Key to element table
	estimatedAge BOOLEAN,
	_estimatedAge TEXT, -- Foreign Key to element table
	deceasedBoolean BOOLEAN, -- pattern: ^true|false$
	_deceasedBoolean TEXT, -- Foreign Key to element table
	deceasedAge TEXT, -- Foreign Key to age table
	deceasedRange TEXT, -- Foreign Key to range table
	deceasedDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_deceasedDate TEXT, -- Foreign Key to element table
	deceasedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_deceasedString TEXT, -- Foreign Key to element table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	note **LIST** Annotation,
	"condition" **LIST** FamilyMemberHistory_Condition,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataAbsentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sex)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bornPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_bornDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_bornString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ageAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ageRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_ageString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_estimatedAge)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deceasedAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deceasedRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE familyMemberHistory_Condition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	outcome TEXT, -- Foreign Key to codeableConcept table
	contributedToDeath BOOLEAN,
	_contributedToDeath TEXT, -- Foreign Key to element table
	onsetAge TEXT, -- Foreign Key to age table
	onsetRange TEXT, -- Foreign Key to range table
	onsetPeriod TEXT, -- Foreign Key to period table
	onsetString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_onsetString TEXT, -- Foreign Key to element table
	note **LIST** Annotation,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contributedToDeath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onsetPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_onsetString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE flag(

	resourceType TEXT, -- resourceType: flag
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: active/inactive/entered-in-error
	_status TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table
	encounter TEXT, -- Foreign Key to reference table
	author TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE goal(

	resourceType TEXT, -- resourceType: goal
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	lifecycleStatus TEXT, -- enum: proposed/planned/accepted/active/on-hold/completed/cancelled/entered-in-error/rejected
	_lifecycleStatus TEXT, -- Foreign Key to element table
	achievementStatus TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	"priority" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	startDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_startDate TEXT, -- Foreign Key to element table
	startCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	"target" **LIST** Goal_Target,
	statusDate DATE,
	_statusDate TEXT, -- Foreign Key to element table
	statusReason TEXT,
	_statusReason TEXT, -- Foreign Key to element table
	expressedBy TEXT, -- Foreign Key to reference table
	addresses **LIST** Reference,
	note **LIST** Annotation,
	outcomeCode **LIST** CodeableConcept,
	outcomeReference **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lifecycleStatus)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (achievementStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("description")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_startDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (startCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expressedBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE goal_Target(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	measure TEXT, -- Foreign Key to codeableConcept table
	detailQuantity TEXT, -- Foreign Key to quantity table
	detailRange TEXT, -- Foreign Key to range table
	detailCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	detailString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_detailString TEXT, -- Foreign Key to element table
	detailBoolean BOOLEAN, -- pattern: ^true|false$
	_detailBoolean TEXT, -- Foreign Key to element table
	detailInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_detailInteger TEXT, -- Foreign Key to element table
	detailRatio TEXT, -- Foreign Key to ratio table
	dueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_dueDate TEXT, -- Foreign Key to element table
	dueDuration TEXT, -- Foreign Key to duration table

	FOREIGN KEY (measure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detailInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE graphDefinition(

	resourceType TEXT, -- resourceType: graphDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"start" TEXT,
	_start TEXT, -- Foreign Key to element table
	"profile" TEXT,
	link **LIST** GraphDefinition_Link,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE graphDefinition_Link(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	sliceName TEXT,
	_sliceName TEXT, -- Foreign Key to element table
	"min" INTEGER,
	_min TEXT, -- Foreign Key to element table
	"max" TEXT,
	_max TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"target" **LIST** GraphDefinition_Target,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sliceName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE graphDefinition_Target(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	params TEXT,
	_params TEXT, -- Foreign Key to element table
	"profile" TEXT,
	compartment **LIST** GraphDefinition_Compartment,
	link **LIST** GraphDefinition_Link,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_params)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE graphDefinition_Compartment(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"use" TEXT, -- enum: condition/requirement
	_use TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	"rule" TEXT, -- enum: identical/matching/different/custom
	_rule TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rule)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "group"(

	resourceType TEXT, -- resourceType: group
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: person/animal/practitioner/device/medication/substance
	_type TEXT, -- Foreign Key to element table
	actual BOOLEAN,
	_actual TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	quantity INTEGER,
	_quantity TEXT, -- Foreign Key to element table
	managingEntity TEXT, -- Foreign Key to reference table
	characteristic **LIST** Group_Characteristic,
	"member" **LIST** Group_Member,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actual)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_quantity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingEntity)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE group_Characteristic(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueReference TEXT, -- Foreign Key to reference table
	exclude BOOLEAN,
	_exclude TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE group_Member(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	entity TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table
	inactive BOOLEAN,
	_inactive TEXT, -- Foreign Key to element table

	FOREIGN KEY (entity)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_inactive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE guidanceResponse(

	resourceType TEXT, -- resourceType: guidanceResponse
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	requestIdentifier TEXT, -- Foreign Key to identifier table
	identifier **LIST** Identifier,
	moduleUri TEXT, -- pattern: ^\S*$
	_moduleUri TEXT, -- Foreign Key to element table
	moduleCanonical TEXT, -- pattern: ^\S*$
	_moduleCanonical TEXT, -- Foreign Key to element table
	moduleCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- enum: success/data-requested/data-required/in-progress/failure/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	occurrenceDateTime DATETIME,
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	performer TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	note **LIST** Annotation,
	evaluationMessage **LIST** Reference,
	outputParameters TEXT, -- Foreign Key to reference table
	"result" TEXT, -- Foreign Key to reference table
	dataRequirement **LIST** DataRequirement,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_moduleUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_moduleCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (moduleCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outputParameters)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("result")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE healthcareService(

	resourceType TEXT, -- resourceType: healthcareService
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	providedBy TEXT, -- Foreign Key to reference table
	category **LIST** CodeableConcept,
	"type" **LIST** CodeableConcept,
	specialty **LIST** CodeableConcept,
	"location" **LIST** Reference,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	extraDetails TEXT,
	_extraDetails TEXT, -- Foreign Key to element table
	photo TEXT, -- Foreign Key to attachment table
	telecom **LIST** ContactPoint,
	coverageArea **LIST** Reference,
	serviceProvisionCode **LIST** CodeableConcept,
	eligibility **LIST** HealthcareService_Eligibility,
	program **LIST** CodeableConcept,
	characteristic **LIST** CodeableConcept,
	communication **LIST** CodeableConcept,
	referralMethod **LIST** CodeableConcept,
	appointmentRequired BOOLEAN,
	_appointmentRequired TEXT, -- Foreign Key to element table
	availableTime **LIST** HealthcareService_AvailableTime,
	notAvailable **LIST** HealthcareService_NotAvailable,
	availabilityExceptions TEXT,
	_availabilityExceptions TEXT, -- Foreign Key to element table
	"endpoint" **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (providedBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_extraDetails)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (photo)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_appointmentRequired)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availabilityExceptions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE healthcareService_Eligibility(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE healthcareService_AvailableTime(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	daysOfWeek **LIST** enum, -- mon/tue/wed/thu/fri/sat/sun,
	_daysOfWeek **LIST** Element,
	allDay BOOLEAN,
	_allDay TEXT, -- Foreign Key to element table
	availableStartTime TIME,
	_availableStartTime TEXT, -- Foreign Key to element table
	availableEndTime TIME,
	_availableEndTime TEXT, -- Foreign Key to element table

	FOREIGN KEY (_allDay)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableStartTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableEndTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE healthcareService_NotAvailable(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	during TEXT, -- Foreign Key to period table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (during)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE imagingStudy(

	resourceType TEXT, -- resourceType: imagingStudy
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: registered/available/cancelled/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	modality **LIST** Coding,
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	"started" DATETIME,
	_started TEXT, -- Foreign Key to element table
	basedOn **LIST** Reference,
	referrer TEXT, -- Foreign Key to reference table
	interpreter **LIST** Reference,
	"endpoint" **LIST** Reference,
	numberOfSeries INTEGER,
	_numberOfSeries TEXT, -- Foreign Key to element table
	numberOfInstances INTEGER,
	_numberOfInstances TEXT, -- Foreign Key to element table
	procedureReference TEXT, -- Foreign Key to reference table
	procedureCode **LIST** CodeableConcept,
	"location" TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	note **LIST** Annotation,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	series **LIST** ImagingStudy_Series,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_started)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referrer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfSeries)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfInstances)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (procedureReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE imagingStudy_Series(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	uid TEXT, -- Foreign Key to id table
	_uid TEXT, -- Foreign Key to element table
	number INTEGER,
	_number TEXT, -- Foreign Key to element table
	modality TEXT, -- Foreign Key to coding table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	numberOfInstances INTEGER,
	_numberOfInstances TEXT, -- Foreign Key to element table
	"endpoint" **LIST** Reference,
	bodySite TEXT, -- Foreign Key to coding table
	laterality TEXT, -- Foreign Key to coding table
	specimen **LIST** Reference,
	"started" DATETIME,
	_started TEXT, -- Foreign Key to element table
	performer **LIST** ImagingStudy_Performer,
	"instance" **LIST** ImagingStudy_Instance,

	FOREIGN KEY (uid)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modality)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfInstances)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (laterality)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_started)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE imagingStudy_Performer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"function" TEXT, -- Foreign Key to codeableConcept table
	actor TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE imagingStudy_Instance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	uid TEXT, -- Foreign Key to id table
	_uid TEXT, -- Foreign Key to element table
	sopClass TEXT, -- Foreign Key to coding table
	number INTEGER,
	_number TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table

	FOREIGN KEY (uid)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sopClass)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_number)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization(

	resourceType TEXT, -- resourceType: immunization
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	vaccineCode TEXT, -- Foreign Key to codeableConcept table
	patient TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrenceString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_occurrenceString TEXT, -- Foreign Key to element table
	recorded DATETIME,
	_recorded TEXT, -- Foreign Key to element table
	primarySource BOOLEAN,
	_primarySource TEXT, -- Foreign Key to element table
	reportOrigin TEXT, -- Foreign Key to codeableConcept table
	"location" TEXT, -- Foreign Key to reference table
	manufacturer TEXT, -- Foreign Key to reference table
	lotNumber TEXT,
	_lotNumber TEXT, -- Foreign Key to element table
	expirationDate DATE,
	_expirationDate TEXT, -- Foreign Key to element table
	"site" TEXT, -- Foreign Key to codeableConcept table
	"route" TEXT, -- Foreign Key to codeableConcept table
	doseQuantity TEXT, -- Foreign Key to quantity table
	performer **LIST** Immunization_Performer,
	note **LIST** Annotation,
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	isSubpotent BOOLEAN,
	_isSubpotent TEXT, -- Foreign Key to element table
	subpotentReason **LIST** CodeableConcept,
	education **LIST** Immunization_Education,
	programEligibility **LIST** CodeableConcept,
	fundingSource TEXT, -- Foreign Key to codeableConcept table
	reaction **LIST** Immunization_Reaction,
	protocolApplied **LIST** Immunization_ProtocolApplied,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (vaccineCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recorded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_primarySource)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reportOrigin)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lotNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expirationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("route")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isSubpotent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fundingSource)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization_Performer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"function" TEXT, -- Foreign Key to codeableConcept table
	actor TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization_Education(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	documentType TEXT,
	_documentType TEXT, -- Foreign Key to element table
	reference TEXT,
	_reference TEXT, -- Foreign Key to element table
	publicationDate DATETIME,
	_publicationDate TEXT, -- Foreign Key to element table
	presentationDate DATETIME,
	_presentationDate TEXT, -- Foreign Key to element table

	FOREIGN KEY (_documentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publicationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_presentationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization_Reaction(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	detail TEXT, -- Foreign Key to reference table
	reported BOOLEAN,
	_reported TEXT, -- Foreign Key to element table

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detail)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reported)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunization_ProtocolApplied(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	series TEXT,
	_series TEXT, -- Foreign Key to element table
	authority TEXT, -- Foreign Key to reference table
	targetDisease **LIST** CodeableConcept,
	doseNumberPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_doseNumberPositiveInt TEXT, -- Foreign Key to element table
	doseNumberString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_doseNumberString TEXT, -- Foreign Key to element table
	seriesDosesPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_seriesDosesPositiveInt TEXT, -- Foreign Key to element table
	seriesDosesString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_seriesDosesString TEXT, -- Foreign Key to element table

	FOREIGN KEY (_series)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunizationEvaluation(

	resourceType TEXT, -- resourceType: immunizationEvaluation
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	authority TEXT, -- Foreign Key to reference table
	targetDisease TEXT, -- Foreign Key to codeableConcept table
	immunizationEvent TEXT, -- Foreign Key to reference table
	doseStatus TEXT, -- Foreign Key to codeableConcept table
	doseStatusReason **LIST** CodeableConcept,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	series TEXT,
	_series TEXT, -- Foreign Key to element table
	doseNumberPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_doseNumberPositiveInt TEXT, -- Foreign Key to element table
	doseNumberString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_doseNumberString TEXT, -- Foreign Key to element table
	seriesDosesPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_seriesDosesPositiveInt TEXT, -- Foreign Key to element table
	seriesDosesString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_seriesDosesString TEXT, -- Foreign Key to element table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetDisease)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (immunizationEvent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_series)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunizationRecommendation(

	resourceType TEXT, -- resourceType: immunizationRecommendation
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	patient TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	authority TEXT, -- Foreign Key to reference table
	recommendation **LIST** ImmunizationRecommendation_Recommendation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunizationRecommendation_Recommendation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	vaccineCode **LIST** CodeableConcept,
	targetDisease TEXT, -- Foreign Key to codeableConcept table
	contraindicatedVaccineCode **LIST** CodeableConcept,
	forecastStatus TEXT, -- Foreign Key to codeableConcept table
	forecastReason **LIST** CodeableConcept,
	dateCriterion **LIST** ImmunizationRecommendation_DateCriterion,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	series TEXT,
	_series TEXT, -- Foreign Key to element table
	doseNumberPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_doseNumberPositiveInt TEXT, -- Foreign Key to element table
	doseNumberString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_doseNumberString TEXT, -- Foreign Key to element table
	seriesDosesPositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_seriesDosesPositiveInt TEXT, -- Foreign Key to element table
	seriesDosesString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_seriesDosesString TEXT, -- Foreign Key to element table
	supportingImmunization **LIST** Reference,
	supportingPatientInformation **LIST** Reference,

	FOREIGN KEY (targetDisease)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (forecastStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_series)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doseNumberString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesPositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_seriesDosesString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE immunizationRecommendation_DateCriterion(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"value" DATETIME,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide(

	resourceType TEXT, -- resourceType: implementationGuide
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	packageId TEXT, -- Foreign Key to id table
	_packageId TEXT, -- Foreign Key to element table
	license TEXT, -- enum: not-open-source/0BSD/AAL/Abstyles/Adobe-2006/Adobe-Glyph/ADSL/AFL-1.1/AFL-1.2/AFL-2.0/AFL-2.1/AFL-3.0/Afmparse/AGPL-1.0-only/AGPL-1.0-or-later/AGPL-3.0-only/AGPL-3.0-or-later/Aladdin/AMDPLPA/AML/AMPAS/ANTLR-PD/Apache-1.0/Apache-1.1/Apache-2.0/APAFML/APL-1.0/APSL-1.0/APSL-1.1/APSL-1.2/APSL-2.0/Artistic-1.0-cl8/Artistic-1.0-Perl/Artistic-1.0/Artistic-2.0/Bahyph/Barr/Beerware/BitTorrent-1.0/BitTorrent-1.1/Borceux/BSD-1-Clause/BSD-2-Clause-FreeBSD/BSD-2-Clause-NetBSD/BSD-2-Clause-Patent/BSD-2-Clause/BSD-3-Clause-Attribution/BSD-3-Clause-Clear/BSD-3-Clause-LBNL/BSD-3-Clause-No-Nuclear-License-2014/BSD-3-Clause-No-Nuclear-License/BSD-3-Clause-No-Nuclear-Warranty/BSD-3-Clause/BSD-4-Clause-UC/BSD-4-Clause/BSD-Protection/BSD-Source-Code/BSL-1.0/bzip2-1.0.5/bzip2-1.0.6/Caldera/CATOSL-1.1/CC-BY-1.0/CC-BY-2.0/CC-BY-2.5/CC-BY-3.0/CC-BY-4.0/CC-BY-NC-1.0/CC-BY-NC-2.0/CC-BY-NC-2.5/CC-BY-NC-3.0/CC-BY-NC-4.0/CC-BY-NC-ND-1.0/CC-BY-NC-ND-2.0/CC-BY-NC-ND-2.5/CC-BY-NC-ND-3.0/CC-BY-NC-ND-4.0/CC-BY-NC-SA-1.0/CC-BY-NC-SA-2.0/CC-BY-NC-SA-2.5/CC-BY-NC-SA-3.0/CC-BY-NC-SA-4.0/CC-BY-ND-1.0/CC-BY-ND-2.0/CC-BY-ND-2.5/CC-BY-ND-3.0/CC-BY-ND-4.0/CC-BY-SA-1.0/CC-BY-SA-2.0/CC-BY-SA-2.5/CC-BY-SA-3.0/CC-BY-SA-4.0/CC0-1.0/CDDL-1.0/CDDL-1.1/CDLA-Permissive-1.0/CDLA-Sharing-1.0/CECILL-1.0/CECILL-1.1/CECILL-2.0/CECILL-2.1/CECILL-B/CECILL-C/ClArtistic/CNRI-Jython/CNRI-Python-GPL-Compatible/CNRI-Python/Condor-1.1/CPAL-1.0/CPL-1.0/CPOL-1.02/Crossword/CrystalStacker/CUA-OPL-1.0/Cube/curl/D-FSL-1.0/diffmark/DOC/Dotseqn/DSDP/dvipdfm/ECL-1.0/ECL-2.0/EFL-1.0/EFL-2.0/eGenix/Entessa/EPL-1.0/EPL-2.0/ErlPL-1.1/EUDatagrid/EUPL-1.0/EUPL-1.1/EUPL-1.2/Eurosym/Fair/Frameworx-1.0/FreeImage/FSFAP/FSFUL/FSFULLR/FTL/GFDL-1.1-only/GFDL-1.1-or-later/GFDL-1.2-only/GFDL-1.2-or-later/GFDL-1.3-only/GFDL-1.3-or-later/Giftware/GL2PS/Glide/Glulxe/gnuplot/GPL-1.0-only/GPL-1.0-or-later/GPL-2.0-only/GPL-2.0-or-later/GPL-3.0-only/GPL-3.0-or-later/gSOAP-1.3b/HaskellReport/HPND/IBM-pibs/ICU/IJG/ImageMagick/iMatix/Imlib2/Info-ZIP/Intel-ACPI/Intel/Interbase-1.0/IPA/IPL-1.0/ISC/JasPer-2.0/JSON/LAL-1.2/LAL-1.3/Latex2e/Leptonica/LGPL-2.0-only/LGPL-2.0-or-later/LGPL-2.1-only/LGPL-2.1-or-later/LGPL-3.0-only/LGPL-3.0-or-later/LGPLLR/Libpng/libtiff/LiLiQ-P-1.1/LiLiQ-R-1.1/LiLiQ-Rplus-1.1/Linux-OpenIB/LPL-1.0/LPL-1.02/LPPL-1.0/LPPL-1.1/LPPL-1.2/LPPL-1.3a/LPPL-1.3c/MakeIndex/MirOS/MIT-0/MIT-advertising/MIT-CMU/MIT-enna/MIT-feh/MIT/MITNFA/Motosoto/mpich2/MPL-1.0/MPL-1.1/MPL-2.0-no-copyleft-exception/MPL-2.0/MS-PL/MS-RL/MTLL/Multics/Mup/NASA-1.3/Naumen/NBPL-1.0/NCSA/Net-SNMP/NetCDF/Newsletr/NGPL/NLOD-1.0/NLPL/Nokia/NOSL/Noweb/NPL-1.0/NPL-1.1/NPOSL-3.0/NRL/NTP/OCCT-PL/OCLC-2.0/ODbL-1.0/OFL-1.0/OFL-1.1/OGTSL/OLDAP-1.1/OLDAP-1.2/OLDAP-1.3/OLDAP-1.4/OLDAP-2.0.1/OLDAP-2.0/OLDAP-2.1/OLDAP-2.2.1/OLDAP-2.2.2/OLDAP-2.2/OLDAP-2.3/OLDAP-2.4/OLDAP-2.5/OLDAP-2.6/OLDAP-2.7/OLDAP-2.8/OML/OpenSSL/OPL-1.0/OSET-PL-2.1/OSL-1.0/OSL-1.1/OSL-2.0/OSL-2.1/OSL-3.0/PDDL-1.0/PHP-3.0/PHP-3.01/Plexus/PostgreSQL/psfrag/psutils/Python-2.0/Qhull/QPL-1.0/Rdisc/RHeCos-1.1/RPL-1.1/RPL-1.5/RPSL-1.0/RSA-MD/RSCPL/Ruby/SAX-PD/Saxpath/SCEA/Sendmail/SGI-B-1.0/SGI-B-1.1/SGI-B-2.0/SimPL-2.0/SISSL-1.2/SISSL/Sleepycat/SMLNJ/SMPPL/SNIA/Spencer-86/Spencer-94/Spencer-99/SPL-1.0/SugarCRM-1.1.3/SWL/TCL/TCP-wrappers/TMate/TORQUE-1.1/TOSL/Unicode-DFS-2015/Unicode-DFS-2016/Unicode-TOU/Unlicense/UPL-1.0/Vim/VOSTROM/VSL-1.0/W3C-19980720/W3C-20150513/W3C/Watcom-1.0/Wsuipa/WTFPL/X11/Xerox/XFree86-1.1/xinetd/Xnet/xpp/XSkat/YPL-1.0/YPL-1.1/Zed/Zend-2.0/Zimbra-1.3/Zimbra-1.4/zlib-acknowledgement/Zlib/ZPL-1.1/ZPL-2.0/ZPL-2.1
	_license TEXT, -- Foreign Key to element table
	fhirVersion **LIST** enum, -- 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1,
	_fhirVersion **LIST** Element,
	dependsOn **LIST** ImplementationGuide_DependsOn,
	"global" **LIST** ImplementationGuide_Global,
	"definition" TEXT, -- Foreign Key to implementationGuide_Definition table
	manifest TEXT, -- Foreign Key to implementationGuide_Manifest table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packageId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_packageId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_license)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("definition")
		REFERENCES implementationGuide_Definition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manifest)
		REFERENCES implementationGuide_Manifest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_DependsOn(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	uri TEXT,
	packageId TEXT, -- Foreign Key to id table
	_packageId TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table

	FOREIGN KEY (packageId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_packageId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Global(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	"profile" TEXT,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Definition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	grouping **LIST** ImplementationGuide_Grouping,
	"resource" **LIST** ImplementationGuide_Resource,
	page TEXT, -- Foreign Key to implementationGuide_Page table
	"parameter" **LIST** ImplementationGuide_Parameter,
	template **LIST** ImplementationGuide_Template,

	FOREIGN KEY (page)
		REFERENCES implementationGuide_Page (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Grouping(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Resource(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	reference TEXT, -- Foreign Key to reference table
	fhirVersion **LIST** enum, -- 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1,
	_fhirVersion **LIST** Element,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	exampleBoolean BOOLEAN, -- pattern: ^true|false$
	_exampleBoolean TEXT, -- Foreign Key to element table
	exampleCanonical TEXT, -- pattern: ^\S*$
	_exampleCanonical TEXT, -- Foreign Key to element table
	groupingId TEXT, -- Foreign Key to id table
	_groupingId TEXT, -- Foreign Key to element table

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupingId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupingId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Page(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	nameUrl TEXT, -- pattern: ^\S*$
	_nameUrl TEXT, -- Foreign Key to element table
	nameReference TEXT, -- Foreign Key to reference table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	generation TEXT, -- enum: html/markdown/xml/generated
	_generation TEXT, -- Foreign Key to element table
	page **LIST** ImplementationGuide_Page,

	FOREIGN KEY (_nameUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nameReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_generation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- enum: apply/path-resource/path-pages/path-tx-cache/expansion-parameter/rule-broken-links/generate-xml/generate-json/generate-turtle/html-template
	_code TEXT, -- Foreign Key to element table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Template(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	"source" TEXT,
	_source TEXT, -- Foreign Key to element table
	"scope" TEXT,
	_scope TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_scope)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Manifest(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	rendering TEXT,
	_rendering TEXT, -- Foreign Key to element table
	"resource" **LIST** ImplementationGuide_Resource1,
	page **LIST** ImplementationGuide_Page1,
	"image" **LIST** string,
	_image **LIST** Element,
	other **LIST** string,
	_other **LIST** Element,

	FOREIGN KEY (_rendering)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Resource1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	reference TEXT, -- Foreign Key to reference table
	exampleBoolean BOOLEAN, -- pattern: ^true|false$
	_exampleBoolean TEXT, -- Foreign Key to element table
	exampleCanonical TEXT, -- pattern: ^\S*$
	_exampleCanonical TEXT, -- Foreign Key to element table
	relativePath TEXT,
	_relativePath TEXT, -- Foreign Key to element table

	FOREIGN KEY (reference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exampleCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relativePath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE implementationGuide_Page1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	anchor **LIST** string,
	_anchor **LIST** Element,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan(

	resourceType TEXT, -- resourceType: insurancePlan
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	"type" **LIST** CodeableConcept,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	alias **LIST** string,
	_alias **LIST** Element,
	"period" TEXT, -- Foreign Key to period table
	ownedBy TEXT, -- Foreign Key to reference table
	administeredBy TEXT, -- Foreign Key to reference table
	coverageArea **LIST** Reference,
	contact **LIST** InsurancePlan_Contact,
	"endpoint" **LIST** Reference,
	network **LIST** Reference,
	coverage **LIST** InsurancePlan_Coverage,
	"plan" **LIST** InsurancePlan_Plan,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (ownedBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (administeredBy)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Contact(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	purpose TEXT, -- Foreign Key to codeableConcept table
	"name" TEXT, -- Foreign Key to humanName table
	telecom **LIST** ContactPoint,
	"address" TEXT, -- Foreign Key to address table

	FOREIGN KEY (purpose)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Coverage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	network **LIST** Reference,
	benefit **LIST** InsurancePlan_Benefit,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Benefit(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	requirement TEXT,
	_requirement TEXT, -- Foreign Key to element table
	"limit" **LIST** InsurancePlan_Limit,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Limit(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"value" TEXT, -- Foreign Key to quantity table
	"code" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("value")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Plan(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"type" TEXT, -- Foreign Key to codeableConcept table
	coverageArea **LIST** Reference,
	network **LIST** Reference,
	generalCost **LIST** InsurancePlan_GeneralCost,
	specificCost **LIST** InsurancePlan_SpecificCost,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_GeneralCost(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	groupSize INTEGER,
	_groupSize TEXT, -- Foreign Key to element table
	cost TEXT, -- Foreign Key to money table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupSize)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cost)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_SpecificCost(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	benefit **LIST** InsurancePlan_Benefit1,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Benefit1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	cost **LIST** InsurancePlan_Cost,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE insurancePlan_Cost(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	applicability TEXT, -- Foreign Key to codeableConcept table
	qualifiers **LIST** CodeableConcept,
	"value" TEXT, -- Foreign Key to quantity table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (applicability)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE invoice(

	resourceType TEXT, -- resourceType: invoice
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: draft/issued/balanced/cancelled/entered-in-error
	_status TEXT, -- Foreign Key to element table
	cancelledReason TEXT,
	_cancelledReason TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	recipient TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	participant **LIST** Invoice_Participant,
	issuer TEXT, -- Foreign Key to reference table
	account TEXT, -- Foreign Key to reference table
	lineItem **LIST** Invoice_LineItem,
	totalPriceComponent **LIST** Invoice_PriceComponent,
	totalNet TEXT, -- Foreign Key to money table
	totalGross TEXT, -- Foreign Key to money table
	paymentTerms TEXT,
	_paymentTerms TEXT, -- Foreign Key to element table
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cancelledReason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (issuer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (account)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (totalNet)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (totalGross)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentTerms)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE invoice_Participant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"role" TEXT, -- Foreign Key to codeableConcept table
	actor TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE invoice_LineItem(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"sequence" INTEGER,
	_sequence TEXT, -- Foreign Key to element table
	chargeItemReference TEXT, -- Foreign Key to reference table
	chargeItemCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	priceComponent **LIST** Invoice_PriceComponent,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (chargeItemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (chargeItemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE invoice_PriceComponent(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: base/surcharge/deduction/discount/tax/informational
	_type TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	factor REAL,
	_factor TEXT, -- Foreign Key to element table
	amount TEXT, -- Foreign Key to money table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_factor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE library(

	resourceType TEXT, -- resourceType: library
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	"parameter" **LIST** ParameterDefinition,
	dataRequirement **LIST** DataRequirement,
	content **LIST** Attachment,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE linkage(

	resourceType TEXT, -- resourceType: linkage
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	author TEXT, -- Foreign Key to reference table
	item **LIST** Linkage_Item,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE linkage_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: source/alternate/historical
	_type TEXT, -- Foreign Key to element table
	"resource" TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("resource")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE list(

	resourceType TEXT, -- resourceType: list
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: current/retired/entered-in-error
	_status TEXT, -- Foreign Key to element table
	mode TEXT, -- enum: working/snapshot/changes
	_mode TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	"source" TEXT, -- Foreign Key to reference table
	orderedBy TEXT, -- Foreign Key to codeableConcept table
	note **LIST** Annotation,
	entry **LIST** List_Entry,
	emptyReason TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orderedBy)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (emptyReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE list_Entry(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	flag TEXT, -- Foreign Key to codeableConcept table
	deleted BOOLEAN,
	_deleted TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	item TEXT, -- Foreign Key to reference table

	FOREIGN KEY (flag)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deleted)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (item)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "location"(

	resourceType TEXT, -- resourceType: location
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: active/suspended/inactive
	_status TEXT, -- Foreign Key to element table
	operationalStatus TEXT, -- Foreign Key to coding table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	alias **LIST** string,
	_alias **LIST** Element,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	mode TEXT, -- enum: instance/kind
	_mode TEXT, -- Foreign Key to element table
	"type" **LIST** CodeableConcept,
	telecom **LIST** ContactPoint,
	"address" TEXT, -- Foreign Key to address table
	physicalType TEXT, -- Foreign Key to codeableConcept table
	"position" TEXT, -- Foreign Key to location_Position table
	managingOrganization TEXT, -- Foreign Key to reference table
	partOf TEXT, -- Foreign Key to reference table
	hoursOfOperation **LIST** Location_HoursOfOperation,
	availabilityExceptions TEXT,
	_availabilityExceptions TEXT, -- Foreign Key to element table
	"endpoint" **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operationalStatus)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("position")
		REFERENCES location_Position (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availabilityExceptions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE location_Position(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	longitude REAL,
	_longitude TEXT, -- Foreign Key to element table
	latitude REAL,
	_latitude TEXT, -- Foreign Key to element table
	altitude REAL,
	_altitude TEXT, -- Foreign Key to element table

	FOREIGN KEY (_longitude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_latitude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_altitude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE location_HoursOfOperation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	daysOfWeek **LIST** code,
	_daysOfWeek **LIST** Element,
	allDay BOOLEAN,
	_allDay TEXT, -- Foreign Key to element table
	openingTime TIME,
	_openingTime TEXT, -- Foreign Key to element table
	closingTime TIME,
	_closingTime TEXT, -- Foreign Key to element table

	FOREIGN KEY (_allDay)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_openingTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_closingTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure(

	resourceType TEXT, -- resourceType: measure
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	library **LIST** canonical,
	disclaimer TEXT,
	_disclaimer TEXT, -- Foreign Key to element table
	scoring TEXT, -- Foreign Key to codeableConcept table
	compositeScoring TEXT, -- Foreign Key to codeableConcept table
	"type" **LIST** CodeableConcept,
	riskAdjustment TEXT,
	_riskAdjustment TEXT, -- Foreign Key to element table
	rateAggregation TEXT,
	_rateAggregation TEXT, -- Foreign Key to element table
	rationale TEXT,
	_rationale TEXT, -- Foreign Key to element table
	clinicalRecommendationStatement TEXT,
	_clinicalRecommendationStatement TEXT, -- Foreign Key to element table
	improvementNotation TEXT, -- Foreign Key to codeableConcept table
	"definition" **LIST** markdown,
	_definition **LIST** Element,
	guidance TEXT,
	_guidance TEXT, -- Foreign Key to element table
	"group" **LIST** Measure_Group,
	supplementalData **LIST** Measure_SupplementalData,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disclaimer)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (scoring)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (compositeScoring)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_riskAdjustment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rateAggregation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rationale)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_clinicalRecommendationStatement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (improvementNotation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_guidance)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_Group(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"population" **LIST** Measure_Population,
	stratifier **LIST** Measure_Stratifier,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_Population(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	criteria TEXT, -- Foreign Key to expression table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_Stratifier(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	criteria TEXT, -- Foreign Key to expression table
	component **LIST** Measure_Component,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_Component(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	criteria TEXT, -- Foreign Key to expression table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measure_SupplementalData(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"usage" **LIST** CodeableConcept,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	criteria TEXT, -- Foreign Key to expression table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criteria)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport(

	resourceType TEXT, -- resourceType: measureReport
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: complete/pending/error
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: individual/subject-list/summary/data-collection
	_type TEXT, -- Foreign Key to element table
	measure TEXT,
	"subject" TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	reporter TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table
	improvementNotation TEXT, -- Foreign Key to codeableConcept table
	"group" **LIST** MeasureReport_Group,
	evaluatedResource **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reporter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (improvementNotation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Group(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"population" **LIST** MeasureReport_Population,
	measureScore TEXT, -- Foreign Key to quantity table
	stratifier **LIST** MeasureReport_Stratifier,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measureScore)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Population(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"count" INTEGER,
	_count TEXT, -- Foreign Key to element table
	subjectResults TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectResults)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Stratifier(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" **LIST** CodeableConcept,
	stratum **LIST** MeasureReport_Stratum

);

CREATE TABLE measureReport_Stratum(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"value" TEXT, -- Foreign Key to codeableConcept table
	component **LIST** MeasureReport_Component,
	"population" **LIST** MeasureReport_Population1,
	measureScore TEXT, -- Foreign Key to quantity table

	FOREIGN KEY ("value")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (measureScore)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Component(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"value" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE measureReport_Population1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"count" INTEGER,
	_count TEXT, -- Foreign Key to element table
	subjectResults TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_count)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectResults)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE media(

	resourceType TEXT, -- resourceType: media
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn **LIST** Reference,
	partOf **LIST** Reference,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	modality TEXT, -- Foreign Key to codeableConcept table
	"view" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	createdDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_createdDateTime TEXT, -- Foreign Key to element table
	createdPeriod TEXT, -- Foreign Key to period table
	issued DATETIME,
	_issued TEXT, -- Foreign Key to element table
	operator TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	bodySite TEXT, -- Foreign Key to codeableConcept table
	deviceName TEXT,
	_deviceName TEXT, -- Foreign Key to element table
	device TEXT, -- Foreign Key to reference table
	height INTEGER,
	_height TEXT, -- Foreign Key to element table
	width INTEGER,
	_width TEXT, -- Foreign Key to element table
	frames INTEGER,
	_frames TEXT, -- Foreign Key to element table
	duration REAL,
	_duration TEXT, -- Foreign Key to element table
	content TEXT, -- Foreign Key to attachment table
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (modality)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("view")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_createdDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (createdPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (operator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deviceName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_height)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_width)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_frames)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_duration)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (content)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medication(

	resourceType TEXT, -- resourceType: medication
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	manufacturer TEXT, -- Foreign Key to reference table
	form TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to ratio table
	ingredient **LIST** Medication_Ingredient,
	batch TEXT, -- Foreign Key to medication_Batch table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (form)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (batch)
		REFERENCES medication_Batch (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medication_Ingredient(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	itemReference TEXT, -- Foreign Key to reference table
	isActive BOOLEAN,
	_isActive TEXT, -- Foreign Key to element table
	strength TEXT, -- Foreign Key to ratio table

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medication_Batch(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	lotNumber TEXT,
	_lotNumber TEXT, -- Foreign Key to element table
	expirationDate DATETIME,
	_expirationDate TEXT, -- Foreign Key to element table

	FOREIGN KEY (_lotNumber)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expirationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationAdministration(

	resourceType TEXT, -- resourceType: medicationAdministration
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiates **LIST** uri,
	_instantiates **LIST** Element,
	partOf **LIST** Reference,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason **LIST** CodeableConcept,
	category TEXT, -- Foreign Key to codeableConcept table
	medicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	medicationReference TEXT, -- Foreign Key to reference table
	"subject" TEXT, -- Foreign Key to reference table
	context TEXT, -- Foreign Key to reference table
	supportingInformation **LIST** Reference,
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	performer **LIST** MedicationAdministration_Performer,
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	request TEXT, -- Foreign Key to reference table
	device **LIST** Reference,
	note **LIST** Annotation,
	dosage TEXT, -- Foreign Key to medicationAdministration_Dosage table
	eventHistory **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dosage)
		REFERENCES medicationAdministration_Dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationAdministration_Performer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"function" TEXT, -- Foreign Key to codeableConcept table
	actor TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationAdministration_Dosage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	"site" TEXT, -- Foreign Key to codeableConcept table
	"route" TEXT, -- Foreign Key to codeableConcept table
	"method" TEXT, -- Foreign Key to codeableConcept table
	dose TEXT, -- Foreign Key to quantity table
	rateRatio TEXT, -- Foreign Key to ratio table
	rateQuantity TEXT, -- Foreign Key to quantity table

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("site")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("route")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dose)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationDispense(

	resourceType TEXT, -- resourceType: medicationDispense
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	partOf **LIST** Reference,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReasonCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	statusReasonReference TEXT, -- Foreign Key to reference table
	category TEXT, -- Foreign Key to codeableConcept table
	medicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	medicationReference TEXT, -- Foreign Key to reference table
	"subject" TEXT, -- Foreign Key to reference table
	context TEXT, -- Foreign Key to reference table
	supportingInformation **LIST** Reference,
	performer **LIST** MedicationDispense_Performer,
	"location" TEXT, -- Foreign Key to reference table
	authorizingPrescription **LIST** Reference,
	"type" TEXT, -- Foreign Key to codeableConcept table
	quantity TEXT, -- Foreign Key to quantity table
	daysSupply TEXT, -- Foreign Key to quantity table
	whenPrepared DATETIME,
	_whenPrepared TEXT, -- Foreign Key to element table
	whenHandedOver DATETIME,
	_whenHandedOver TEXT, -- Foreign Key to element table
	destination TEXT, -- Foreign Key to reference table
	receiver **LIST** Reference,
	note **LIST** Annotation,
	dosageInstruction **LIST** Dosage,
	substitution TEXT, -- Foreign Key to medicationDispense_Substitution table
	detectedIssue **LIST** Reference,
	eventHistory **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReasonCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (daysSupply)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_whenPrepared)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_whenHandedOver)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substitution)
		REFERENCES medicationDispense_Substitution (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationDispense_Performer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"function" TEXT, -- Foreign Key to codeableConcept table
	actor TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationDispense_Substitution(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	wasSubstituted BOOLEAN,
	_wasSubstituted TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	reason **LIST** CodeableConcept,
	responsibleParty **LIST** Reference,

	FOREIGN KEY (_wasSubstituted)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge(

	resourceType TEXT, -- resourceType: medicationKnowledge
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	manufacturer TEXT, -- Foreign Key to reference table
	doseForm TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to quantity table
	"synonym" **LIST** string,
	_synonym **LIST** Element,
	relatedMedicationKnowledge **LIST** MedicationKnowledge_RelatedMedicationKnowledge,
	associatedMedication **LIST** Reference,
	productType **LIST** CodeableConcept,
	monograph **LIST** MedicationKnowledge_Monograph,
	ingredient **LIST** MedicationKnowledge_Ingredient,
	preparationInstruction TEXT,
	_preparationInstruction TEXT, -- Foreign Key to element table
	intendedRoute **LIST** CodeableConcept,
	cost **LIST** MedicationKnowledge_Cost,
	monitoringProgram **LIST** MedicationKnowledge_MonitoringProgram,
	administrationGuidelines **LIST** MedicationKnowledge_AdministrationGuidelines,
	medicineClassification **LIST** MedicationKnowledge_MedicineClassification,
	packaging TEXT, -- Foreign Key to medicationKnowledge_Packaging table
	drugCharacteristic **LIST** MedicationKnowledge_DrugCharacteristic,
	contraindication **LIST** Reference,
	regulatory **LIST** MedicationKnowledge_Regulatory,
	kinetics **LIST** MedicationKnowledge_Kinetics,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (doseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preparationInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (packaging)
		REFERENCES medicationKnowledge_Packaging (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_RelatedMedicationKnowledge(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	reference **LIST** Reference,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Monograph(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"source" TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Ingredient(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	itemReference TEXT, -- Foreign Key to reference table
	isActive BOOLEAN,
	_isActive TEXT, -- Foreign Key to element table
	strength TEXT, -- Foreign Key to ratio table

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isActive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Cost(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"source" TEXT,
	_source TEXT, -- Foreign Key to element table
	cost TEXT, -- Foreign Key to money table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cost)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_MonitoringProgram(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_AdministrationGuidelines(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	dosage **LIST** MedicationKnowledge_Dosage,
	indicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	indicationReference TEXT, -- Foreign Key to reference table
	patientCharacteristics **LIST** MedicationKnowledge_PatientCharacteristics,

	FOREIGN KEY (indicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (indicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Dosage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	dosage **LIST** Dosage,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_PatientCharacteristics(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	characteristicCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	characteristicQuantity TEXT, -- Foreign Key to quantity table
	"value" **LIST** string,
	_value **LIST** Element,

	FOREIGN KEY (characteristicCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (characteristicQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_MedicineClassification(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	classification **LIST** CodeableConcept,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Packaging(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	quantity TEXT, -- Foreign Key to quantity table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_DrugCharacteristic(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Regulatory(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	regulatoryAuthority TEXT, -- Foreign Key to reference table
	substitution **LIST** MedicationKnowledge_Substitution,
	schedule **LIST** MedicationKnowledge_Schedule,
	maxDispense TEXT, -- Foreign Key to medicationKnowledge_MaxDispense table

	FOREIGN KEY (regulatoryAuthority)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDispense)
		REFERENCES medicationKnowledge_MaxDispense (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Substitution(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	allowed BOOLEAN,
	_allowed TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allowed)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Schedule(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	schedule TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (schedule)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_MaxDispense(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	quantity TEXT, -- Foreign Key to quantity table
	"period" TEXT, -- Foreign Key to duration table

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationKnowledge_Kinetics(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	areaUnderCurve **LIST** Quantity,
	lethalDose50 **LIST** Quantity,
	halfLifePeriod TEXT, -- Foreign Key to duration table

	FOREIGN KEY (halfLifePeriod)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationRequest(

	resourceType TEXT, -- resourceType: medicationRequest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	intent TEXT,
	_intent TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	doNotPerform BOOLEAN,
	_doNotPerform TEXT, -- Foreign Key to element table
	reportedBoolean BOOLEAN, -- pattern: ^true|false$
	_reportedBoolean TEXT, -- Foreign Key to element table
	reportedReference TEXT, -- Foreign Key to reference table
	medicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	medicationReference TEXT, -- Foreign Key to reference table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	supportingInformation **LIST** Reference,
	authoredOn DATETIME,
	_authoredOn TEXT, -- Foreign Key to element table
	requester TEXT, -- Foreign Key to reference table
	performer TEXT, -- Foreign Key to reference table
	performerType TEXT, -- Foreign Key to codeableConcept table
	recorder TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	instantiatesCanonical **LIST** canonical,
	_instantiatesCanonical **LIST** Element,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	basedOn **LIST** Reference,
	groupIdentifier TEXT, -- Foreign Key to identifier table
	courseOfTherapyType TEXT, -- Foreign Key to codeableConcept table
	insurance **LIST** Reference,
	note **LIST** Annotation,
	dosageInstruction **LIST** Dosage,
	dispenseRequest TEXT, -- Foreign Key to medicationRequest_DispenseRequest table
	substitution TEXT, -- Foreign Key to medicationRequest_Substitution table
	priorPrescription TEXT, -- Foreign Key to reference table
	detectedIssue **LIST** Reference,
	eventHistory **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reportedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reportedReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (courseOfTherapyType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dispenseRequest)
		REFERENCES medicationRequest_DispenseRequest (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substitution)
		REFERENCES medicationRequest_Substitution (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (priorPrescription)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationRequest_DispenseRequest(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	initialFill TEXT, -- Foreign Key to medicationRequest_InitialFill table
	dispenseInterval TEXT, -- Foreign Key to duration table
	validityPeriod TEXT, -- Foreign Key to period table
	numberOfRepeatsAllowed INTEGER,
	_numberOfRepeatsAllowed TEXT, -- Foreign Key to element table
	quantity TEXT, -- Foreign Key to quantity table
	expectedSupplyDuration TEXT, -- Foreign Key to duration table
	performer TEXT, -- Foreign Key to reference table

	FOREIGN KEY (initialFill)
		REFERENCES medicationRequest_InitialFill (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dispenseInterval)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfRepeatsAllowed)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expectedSupplyDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationRequest_InitialFill(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	quantity TEXT, -- Foreign Key to quantity table
	duration TEXT, -- Foreign Key to duration table

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationRequest_Substitution(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	allowedBoolean BOOLEAN, -- pattern: ^true|false$
	_allowedBoolean TEXT, -- Foreign Key to element table
	allowedCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	reason TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_allowedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (allowedCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicationStatement(

	resourceType TEXT, -- resourceType: medicationStatement
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn **LIST** Reference,
	partOf **LIST** Reference,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason **LIST** CodeableConcept,
	category TEXT, -- Foreign Key to codeableConcept table
	medicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	medicationReference TEXT, -- Foreign Key to reference table
	"subject" TEXT, -- Foreign Key to reference table
	context TEXT, -- Foreign Key to reference table
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	dateAsserted DATETIME,
	_dateAsserted TEXT, -- Foreign Key to element table
	informationSource TEXT, -- Foreign Key to reference table
	derivedFrom **LIST** Reference,
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	note **LIST** Annotation,
	dosage **LIST** Dosage,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateAsserted)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (informationSource)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct(

	resourceType TEXT, -- resourceType: medicinalProduct
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"domain" TEXT, -- Foreign Key to coding table
	combinedPharmaceuticalDoseForm TEXT, -- Foreign Key to codeableConcept table
	legalStatusOfSupply TEXT, -- Foreign Key to codeableConcept table
	additionalMonitoringIndicator TEXT, -- Foreign Key to codeableConcept table
	specialMeasures **LIST** string,
	_specialMeasures **LIST** Element,
	paediatricUseIndicator TEXT, -- Foreign Key to codeableConcept table
	productClassification **LIST** CodeableConcept,
	marketingStatus **LIST** MarketingStatus,
	pharmaceuticalProduct **LIST** Reference,
	packagedMedicinalProduct **LIST** Reference,
	attachedDocument **LIST** Reference,
	masterFile **LIST** Reference,
	contact **LIST** Reference,
	clinicalTrial **LIST** Reference,
	"name" **LIST** MedicinalProduct_Name,
	crossReference **LIST** Identifier,
	manufacturingBusinessOperation **LIST** MedicinalProduct_ManufacturingBusinessOperation,
	specialDesignation **LIST** MedicinalProduct_SpecialDesignation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("domain")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (combinedPharmaceuticalDoseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalStatusOfSupply)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additionalMonitoringIndicator)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paediatricUseIndicator)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_Name(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	productName TEXT,
	_productName TEXT, -- Foreign Key to element table
	namePart **LIST** MedicinalProduct_NamePart,
	countryLanguage **LIST** MedicinalProduct_CountryLanguage,

	FOREIGN KEY (_productName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_NamePart(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	part TEXT,
	_part TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to coding table

	FOREIGN KEY (_part)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_CountryLanguage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	country TEXT, -- Foreign Key to codeableConcept table
	jurisdiction TEXT, -- Foreign Key to codeableConcept table
	"language" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (jurisdiction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_ManufacturingBusinessOperation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	operationType TEXT, -- Foreign Key to codeableConcept table
	authorisationReferenceNumber TEXT, -- Foreign Key to identifier table
	effectiveDate DATETIME,
	_effectiveDate TEXT, -- Foreign Key to element table
	confidentialityIndicator TEXT, -- Foreign Key to codeableConcept table
	manufacturer **LIST** Reference,
	regulator TEXT, -- Foreign Key to reference table

	FOREIGN KEY (operationType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (authorisationReferenceNumber)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (confidentialityIndicator)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (regulator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProduct_SpecialDesignation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"type" TEXT, -- Foreign Key to codeableConcept table
	intendedUse TEXT, -- Foreign Key to codeableConcept table
	indicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	indicationReference TEXT, -- Foreign Key to reference table
	"status" TEXT, -- Foreign Key to codeableConcept table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	species TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intendedUse)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (indicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (indicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (species)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductAuthorization(

	resourceType TEXT, -- resourceType: medicinalProductAuthorization
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"subject" TEXT, -- Foreign Key to reference table
	country **LIST** CodeableConcept,
	jurisdiction **LIST** CodeableConcept,
	"status" TEXT, -- Foreign Key to codeableConcept table
	statusDate DATETIME,
	_statusDate TEXT, -- Foreign Key to element table
	restoreDate DATETIME,
	_restoreDate TEXT, -- Foreign Key to element table
	validityPeriod TEXT, -- Foreign Key to period table
	dataExclusivityPeriod TEXT, -- Foreign Key to period table
	dateOfFirstAuthorization DATETIME,
	_dateOfFirstAuthorization TEXT, -- Foreign Key to element table
	internationalBirthDate DATETIME,
	_internationalBirthDate TEXT, -- Foreign Key to element table
	legalBasis TEXT, -- Foreign Key to codeableConcept table
	jurisdictionalAuthorization **LIST** MedicinalProductAuthorization_JurisdictionalAuthorization,
	holder TEXT, -- Foreign Key to reference table
	regulator TEXT, -- Foreign Key to reference table
	"procedure" TEXT, -- Foreign Key to medicinalProductAuthorization_Procedure table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_restoreDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataExclusivityPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateOfFirstAuthorization)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_internationalBirthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalBasis)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (holder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (regulator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES medicinalProductAuthorization_Procedure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductAuthorization_JurisdictionalAuthorization(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	country TEXT, -- Foreign Key to codeableConcept table
	jurisdiction **LIST** CodeableConcept,
	legalStatusOfSupply TEXT, -- Foreign Key to codeableConcept table
	validityPeriod TEXT, -- Foreign Key to period table

	FOREIGN KEY (country)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalStatusOfSupply)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validityPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductAuthorization_Procedure(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"type" TEXT, -- Foreign Key to codeableConcept table
	datePeriod TEXT, -- Foreign Key to period table
	dateDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_dateDateTime TEXT, -- Foreign Key to element table
	application **LIST** MedicinalProductAuthorization_Procedure,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (datePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductContraindication(

	resourceType TEXT, -- resourceType: medicinalProductContraindication
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"subject" **LIST** Reference,
	disease TEXT, -- Foreign Key to codeableConcept table
	diseaseStatus TEXT, -- Foreign Key to codeableConcept table
	comorbidity **LIST** CodeableConcept,
	therapeuticIndication **LIST** Reference,
	otherTherapy **LIST** MedicinalProductContraindication_OtherTherapy,
	"population" **LIST** Population,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (disease)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diseaseStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductContraindication_OtherTherapy(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	therapyRelationshipType TEXT, -- Foreign Key to codeableConcept table
	medicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	medicationReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (therapyRelationshipType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIndication(

	resourceType TEXT, -- resourceType: medicinalProductIndication
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"subject" **LIST** Reference,
	diseaseSymptomProcedure TEXT, -- Foreign Key to codeableConcept table
	diseaseStatus TEXT, -- Foreign Key to codeableConcept table
	comorbidity **LIST** CodeableConcept,
	intendedEffect TEXT, -- Foreign Key to codeableConcept table
	duration TEXT, -- Foreign Key to quantity table
	otherTherapy **LIST** MedicinalProductIndication_OtherTherapy,
	undesirableEffect **LIST** Reference,
	"population" **LIST** Population,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diseaseSymptomProcedure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (diseaseStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intendedEffect)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIndication_OtherTherapy(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	therapyRelationshipType TEXT, -- Foreign Key to codeableConcept table
	medicationCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	medicationReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (therapyRelationshipType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (medicationReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient(

	resourceType TEXT, -- resourceType: medicinalProductIngredient
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"role" TEXT, -- Foreign Key to codeableConcept table
	allergenicIndicator BOOLEAN,
	_allergenicIndicator TEXT, -- Foreign Key to element table
	manufacturer **LIST** Reference,
	specifiedSubstance **LIST** MedicinalProductIngredient_SpecifiedSubstance,
	substance TEXT, -- Foreign Key to medicinalProductIngredient_Substance table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_allergenicIndicator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substance)
		REFERENCES medicinalProductIngredient_Substance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient_SpecifiedSubstance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"group" TEXT, -- Foreign Key to codeableConcept table
	confidentiality TEXT, -- Foreign Key to codeableConcept table
	strength **LIST** MedicinalProductIngredient_Strength,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("group")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (confidentiality)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient_Strength(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	presentation TEXT, -- Foreign Key to ratio table
	presentationLowLimit TEXT, -- Foreign Key to ratio table
	concentration TEXT, -- Foreign Key to ratio table
	concentrationLowLimit TEXT, -- Foreign Key to ratio table
	measurementPoint TEXT,
	_measurementPoint TEXT, -- Foreign Key to element table
	country **LIST** CodeableConcept,
	referenceStrength **LIST** MedicinalProductIngredient_ReferenceStrength,

	FOREIGN KEY (presentation)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (presentationLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (concentration)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (concentrationLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_measurementPoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient_ReferenceStrength(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	substance TEXT, -- Foreign Key to codeableConcept table
	strength TEXT, -- Foreign Key to ratio table
	strengthLowLimit TEXT, -- Foreign Key to ratio table
	measurementPoint TEXT,
	_measurementPoint TEXT, -- Foreign Key to element table
	country **LIST** CodeableConcept,

	FOREIGN KEY (substance)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strength)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (strengthLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_measurementPoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductIngredient_Substance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	strength **LIST** MedicinalProductIngredient_Strength,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductInteraction(

	resourceType TEXT, -- resourceType: medicinalProductInteraction
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"subject" **LIST** Reference,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	interactant **LIST** MedicinalProductInteraction_Interactant,
	"type" TEXT, -- Foreign Key to codeableConcept table
	effect TEXT, -- Foreign Key to codeableConcept table
	incidence TEXT, -- Foreign Key to codeableConcept table
	management TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effect)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (incidence)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (management)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductInteraction_Interactant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	itemReference TEXT, -- Foreign Key to reference table
	itemCodeableConcept TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductManufactured(

	resourceType TEXT, -- resourceType: medicinalProductManufactured
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	manufacturedDoseForm TEXT, -- Foreign Key to codeableConcept table
	unitOfPresentation TEXT, -- Foreign Key to codeableConcept table
	quantity TEXT, -- Foreign Key to quantity table
	manufacturer **LIST** Reference,
	ingredient **LIST** Reference,
	physicalCharacteristics TEXT, -- Foreign Key to prodCharacteristic table
	otherCharacteristics **LIST** CodeableConcept,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manufacturedDoseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfPresentation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalCharacteristics)
		REFERENCES prodCharacteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPackaged(

	resourceType TEXT, -- resourceType: medicinalProductPackaged
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"subject" **LIST** Reference,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	legalStatusOfSupply TEXT, -- Foreign Key to codeableConcept table
	marketingStatus **LIST** MarketingStatus,
	marketingAuthorization TEXT, -- Foreign Key to reference table
	manufacturer **LIST** Reference,
	batchIdentifier **LIST** MedicinalProductPackaged_BatchIdentifier,
	packageItem **LIST** MedicinalProductPackaged_PackageItem,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (legalStatusOfSupply)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (marketingAuthorization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPackaged_BatchIdentifier(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	outerPackaging TEXT, -- Foreign Key to identifier table
	immediatePackaging TEXT, -- Foreign Key to identifier table

	FOREIGN KEY (outerPackaging)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (immediatePackaging)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPackaged_PackageItem(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"type" TEXT, -- Foreign Key to codeableConcept table
	quantity TEXT, -- Foreign Key to quantity table
	material **LIST** CodeableConcept,
	alternateMaterial **LIST** CodeableConcept,
	device **LIST** Reference,
	manufacturedItem **LIST** Reference,
	packageItem **LIST** MedicinalProductPackaged_PackageItem,
	physicalCharacteristics TEXT, -- Foreign Key to prodCharacteristic table
	otherCharacteristics **LIST** CodeableConcept,
	shelfLifeStorage **LIST** ProductShelfLife,
	manufacturer **LIST** Reference,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (physicalCharacteristics)
		REFERENCES prodCharacteristic (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical(

	resourceType TEXT, -- resourceType: medicinalProductPharmaceutical
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	administrableDoseForm TEXT, -- Foreign Key to codeableConcept table
	unitOfPresentation TEXT, -- Foreign Key to codeableConcept table
	ingredient **LIST** Reference,
	device **LIST** Reference,
	"characteristics" **LIST** MedicinalProductPharmaceutical_Characteristics,
	routeOfAdministration **LIST** MedicinalProductPharmaceutical_RouteOfAdministration,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (administrableDoseForm)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfPresentation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical_Characteristics(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical_RouteOfAdministration(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	firstDose TEXT, -- Foreign Key to quantity table
	maxSingleDose TEXT, -- Foreign Key to quantity table
	maxDosePerDay TEXT, -- Foreign Key to quantity table
	maxDosePerTreatmentPeriod TEXT, -- Foreign Key to ratio table
	maxTreatmentPeriod TEXT, -- Foreign Key to duration table
	targetSpecies **LIST** MedicinalProductPharmaceutical_TargetSpecies,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (firstDose)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxSingleDose)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerDay)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDosePerTreatmentPeriod)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxTreatmentPeriod)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical_TargetSpecies(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	withdrawalPeriod **LIST** MedicinalProductPharmaceutical_WithdrawalPeriod,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductPharmaceutical_WithdrawalPeriod(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	tissue TEXT, -- Foreign Key to codeableConcept table
	"value" TEXT, -- Foreign Key to quantity table
	supportingInformation TEXT,
	_supportingInformation TEXT, -- Foreign Key to element table

	FOREIGN KEY (tissue)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("value")
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_supportingInformation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE medicinalProductUndesirableEffect(

	resourceType TEXT, -- resourceType: medicinalProductUndesirableEffect
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"subject" **LIST** Reference,
	symptomConditionEffect TEXT, -- Foreign Key to codeableConcept table
	classification TEXT, -- Foreign Key to codeableConcept table
	frequencyOfOccurrence TEXT, -- Foreign Key to codeableConcept table
	"population" **LIST** Population,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (symptomConditionEffect)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (frequencyOfOccurrence)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageDefinition(

	resourceType TEXT, -- resourceType: messageDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	replaces **LIST** canonical,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	base TEXT,
	parent **LIST** canonical,
	eventCoding TEXT, -- Foreign Key to coding table
	eventUri TEXT, -- pattern: ^\S*$
	_eventUri TEXT, -- Foreign Key to element table
	category TEXT, -- enum: consequence/currency/notification
	_category TEXT, -- Foreign Key to element table
	focus **LIST** MessageDefinition_Focus,
	responseRequired TEXT, -- enum: always/on-error/never/on-success
	_responseRequired TEXT, -- Foreign Key to element table
	allowedResponse **LIST** MessageDefinition_AllowedResponse,
	graph **LIST** canonical,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eventCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_eventUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_category)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responseRequired)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageDefinition_Focus(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	"profile" TEXT,
	"min" INTEGER,
	_min TEXT, -- Foreign Key to element table
	"max" TEXT,
	_max TEXT, -- Foreign Key to element table

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageDefinition_AllowedResponse(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"message" TEXT,
	situation TEXT,
	_situation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_situation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageHeader(

	resourceType TEXT, -- resourceType: messageHeader
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	eventCoding TEXT, -- Foreign Key to coding table
	eventUri TEXT, -- pattern: ^\S*$
	_eventUri TEXT, -- Foreign Key to element table
	destination **LIST** MessageHeader_Destination,
	sender TEXT, -- Foreign Key to reference table
	enterer TEXT, -- Foreign Key to reference table
	author TEXT, -- Foreign Key to reference table
	"source" TEXT, -- Foreign Key to messageHeader_Source table
	responsible TEXT, -- Foreign Key to reference table
	reason TEXT, -- Foreign Key to codeableConcept table
	response TEXT, -- Foreign Key to messageHeader_Response table
	focus **LIST** Reference,
	"definition" TEXT,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (eventCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_eventUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sender)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enterer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES messageHeader_Source (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responsible)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES messageHeader_Response (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageHeader_Destination(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"target" TEXT, -- Foreign Key to reference table
	"endpoint" TEXT,
	_endpoint TEXT, -- Foreign Key to element table
	receiver TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("target")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_endpoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (receiver)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageHeader_Source(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	software TEXT,
	_software TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	contact TEXT, -- Foreign Key to contactPoint table
	"endpoint" TEXT,
	_endpoint TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_software)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (contact)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_endpoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE messageHeader_Response(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to id table
	_identifier TEXT, -- Foreign Key to element table
	"code" TEXT, -- enum: ok/transient-error/fatal-error
	_code TEXT, -- Foreign Key to element table
	details TEXT, -- Foreign Key to reference table

	FOREIGN KEY (identifier)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (details)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence(

	resourceType TEXT, -- resourceType: molecularSequence
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"type" TEXT, -- enum: aa/dna/rna
	_type TEXT, -- Foreign Key to element table
	coordinateSystem INTEGER,
	_coordinateSystem TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	specimen TEXT, -- Foreign Key to reference table
	device TEXT, -- Foreign Key to reference table
	performer TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	referenceSeq TEXT, -- Foreign Key to molecularSequence_ReferenceSeq table
	variant **LIST** MolecularSequence_Variant,
	observedSeq TEXT,
	_observedSeq TEXT, -- Foreign Key to element table
	quality **LIST** MolecularSequence_Quality,
	readCoverage INTEGER,
	_readCoverage TEXT, -- Foreign Key to element table
	repository **LIST** MolecularSequence_Repository,
	pointer **LIST** Reference,
	structureVariant **LIST** MolecularSequence_StructureVariant,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_coordinateSystem)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimen)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceSeq)
		REFERENCES molecularSequence_ReferenceSeq (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_observedSeq)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readCoverage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_ReferenceSeq(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	chromosome TEXT, -- Foreign Key to codeableConcept table
	genomeBuild TEXT,
	_genomeBuild TEXT, -- Foreign Key to element table
	orientation TEXT, -- enum: sense/antisense
	_orientation TEXT, -- Foreign Key to element table
	referenceSeqId TEXT, -- Foreign Key to codeableConcept table
	referenceSeqPointer TEXT, -- Foreign Key to reference table
	referenceSeqString TEXT,
	_referenceSeqString TEXT, -- Foreign Key to element table
	strand TEXT, -- enum: watson/crick
	_strand TEXT, -- Foreign Key to element table
	windowStart INTEGER,
	_windowStart TEXT, -- Foreign Key to element table
	windowEnd INTEGER,
	_windowEnd TEXT, -- Foreign Key to element table

	FOREIGN KEY (chromosome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_genomeBuild)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_orientation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceSeqId)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceSeqPointer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_referenceSeqString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_strand)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_windowStart)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_windowEnd)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Variant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"start" INTEGER,
	_start TEXT, -- Foreign Key to element table
	"end" INTEGER,
	_end TEXT, -- Foreign Key to element table
	observedAllele TEXT,
	_observedAllele TEXT, -- Foreign Key to element table
	referenceAllele TEXT,
	_referenceAllele TEXT, -- Foreign Key to element table
	cigar TEXT,
	_cigar TEXT, -- Foreign Key to element table
	variantPointer TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_observedAllele)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_referenceAllele)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cigar)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variantPointer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Quality(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: indel/snp/unknown
	_type TEXT, -- Foreign Key to element table
	standardSequence TEXT, -- Foreign Key to codeableConcept table
	"start" INTEGER,
	_start TEXT, -- Foreign Key to element table
	"end" INTEGER,
	_end TEXT, -- Foreign Key to element table
	score TEXT, -- Foreign Key to quantity table
	"method" TEXT, -- Foreign Key to codeableConcept table
	truthTP REAL,
	_truthTP TEXT, -- Foreign Key to element table
	queryTP REAL,
	_queryTP TEXT, -- Foreign Key to element table
	truthFN REAL,
	_truthFN TEXT, -- Foreign Key to element table
	queryFP REAL,
	_queryFP TEXT, -- Foreign Key to element table
	gtFP REAL,
	_gtFP TEXT, -- Foreign Key to element table
	precision REAL,
	_precision TEXT, -- Foreign Key to element table
	recall REAL,
	_recall TEXT, -- Foreign Key to element table
	fScore REAL,
	_fScore TEXT, -- Foreign Key to element table
	roc TEXT, -- Foreign Key to molecularSequence_Roc table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (standardSequence)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (score)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_truthTP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_queryTP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_truthFN)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_queryFP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gtFP)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precision)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recall)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fScore)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (roc)
		REFERENCES molecularSequence_Roc (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Roc(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	score **LIST** integer,
	_score **LIST** Element,
	numTP **LIST** integer,
	_numTP **LIST** Element,
	numFP **LIST** integer,
	_numFP **LIST** Element,
	numFN **LIST** integer,
	_numFN **LIST** Element,
	precision **LIST** decimal,
	_precision **LIST** Element,
	sensitivity **LIST** decimal,
	_sensitivity **LIST** Element,
	fMeasure **LIST** decimal,
	_fMeasure **LIST** Element

);

CREATE TABLE molecularSequence_Repository(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: directlink/openapi/login/oauth/other
	_type TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	datasetId TEXT,
	_datasetId TEXT, -- Foreign Key to element table
	variantsetId TEXT,
	_variantsetId TEXT, -- Foreign Key to element table
	readsetId TEXT,
	_readsetId TEXT, -- Foreign Key to element table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_datasetId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variantsetId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readsetId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_StructureVariant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	variantType TEXT, -- Foreign Key to codeableConcept table
	exact BOOLEAN,
	_exact TEXT, -- Foreign Key to element table
	"length" INTEGER,
	_length TEXT, -- Foreign Key to element table
	"outer" TEXT, -- Foreign Key to molecularSequence_Outer table
	"inner" TEXT, -- Foreign Key to molecularSequence_Inner table

	FOREIGN KEY (variantType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exact)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_length)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("outer")
		REFERENCES molecularSequence_Outer (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("inner")
		REFERENCES molecularSequence_Inner (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Outer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"start" INTEGER,
	_start TEXT, -- Foreign Key to element table
	"end" INTEGER,
	_end TEXT, -- Foreign Key to element table

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE molecularSequence_Inner(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"start" INTEGER,
	_start TEXT, -- Foreign Key to element table
	"end" INTEGER,
	_end TEXT, -- Foreign Key to element table

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE namingSystem(

	resourceType TEXT, -- resourceType: namingSystem
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	kind TEXT, -- enum: codesystem/identifier/root
	_kind TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	responsible TEXT,
	_responsible TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	uniqueId **LIST** NamingSystem_UniqueId,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responsible)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE namingSystem_UniqueId(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: oid/uuid/uri/other
	_type TEXT, -- Foreign Key to element table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table
	preferred BOOLEAN,
	_preferred TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder(

	resourceType TEXT, -- resourceType: nutritionOrder
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	instantiates **LIST** uri,
	_instantiates **LIST** Element,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	intent TEXT,
	_intent TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	"dateTime" DATETIME,
	_dateTime TEXT, -- Foreign Key to element table
	orderer TEXT, -- Foreign Key to reference table
	allergyIntolerance **LIST** Reference,
	foodPreferenceModifier **LIST** CodeableConcept,
	excludeFoodModifier **LIST** CodeableConcept,
	oralDiet TEXT, -- Foreign Key to nutritionOrder_OralDiet table
	supplement **LIST** NutritionOrder_Supplement,
	enteralFormula TEXT, -- Foreign Key to nutritionOrder_EnteralFormula table
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (orderer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (oralDiet)
		REFERENCES nutritionOrder_OralDiet (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (enteralFormula)
		REFERENCES nutritionOrder_EnteralFormula (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_OralDiet(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" **LIST** CodeableConcept,
	schedule **LIST** Timing,
	nutrient **LIST** NutritionOrder_Nutrient,
	texture **LIST** NutritionOrder_Texture,
	fluidConsistencyType **LIST** CodeableConcept,
	instruction TEXT,
	_instruction TEXT, -- Foreign Key to element table

	FOREIGN KEY (_instruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Nutrient(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	modifier TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to quantity table

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Texture(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	modifier TEXT, -- Foreign Key to codeableConcept table
	foodType TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (modifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (foodType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Supplement(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	productName TEXT,
	_productName TEXT, -- Foreign Key to element table
	schedule **LIST** Timing,
	quantity TEXT, -- Foreign Key to quantity table
	instruction TEXT,
	_instruction TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_productName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_EnteralFormula(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	baseFormulaType TEXT, -- Foreign Key to codeableConcept table
	baseFormulaProductName TEXT,
	_baseFormulaProductName TEXT, -- Foreign Key to element table
	additiveType TEXT, -- Foreign Key to codeableConcept table
	additiveProductName TEXT,
	_additiveProductName TEXT, -- Foreign Key to element table
	caloricDensity TEXT, -- Foreign Key to quantity table
	routeofAdministration TEXT, -- Foreign Key to codeableConcept table
	administration **LIST** NutritionOrder_Administration,
	maxVolumeToDeliver TEXT, -- Foreign Key to quantity table
	administrationInstruction TEXT,
	_administrationInstruction TEXT, -- Foreign Key to element table

	FOREIGN KEY (baseFormulaType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_baseFormulaProductName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_additiveProductName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (caloricDensity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (routeofAdministration)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxVolumeToDeliver)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_administrationInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE nutritionOrder_Administration(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	schedule TEXT, -- Foreign Key to timing table
	quantity TEXT, -- Foreign Key to quantity table
	rateQuantity TEXT, -- Foreign Key to quantity table
	rateRatio TEXT, -- Foreign Key to ratio table

	FOREIGN KEY (schedule)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (rateRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observation(

	resourceType TEXT, -- resourceType: observation
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn **LIST** Reference,
	partOf **LIST** Reference,
	"status" TEXT, -- enum: registered/preliminary/final/amended/corrected/cancelled/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	focus **LIST** Reference,
	encounter TEXT, -- Foreign Key to reference table
	effectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_effectiveDateTime TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	effectiveTiming TEXT, -- Foreign Key to timing table
	effectiveInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_effectiveInstant TEXT, -- Foreign Key to element table
	issued DATETIME,
	_issued TEXT, -- Foreign Key to element table
	performer **LIST** Reference,
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueRange TEXT, -- Foreign Key to range table
	valueRatio TEXT, -- Foreign Key to ratio table
	valueSampledData TEXT, -- Foreign Key to sampledData table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valuePeriod TEXT, -- Foreign Key to period table
	dataAbsentReason TEXT, -- Foreign Key to codeableConcept table
	interpretation **LIST** CodeableConcept,
	note **LIST** Annotation,
	bodySite TEXT, -- Foreign Key to codeableConcept table
	"method" TEXT, -- Foreign Key to codeableConcept table
	specimen TEXT, -- Foreign Key to reference table
	device TEXT, -- Foreign Key to reference table
	referenceRange **LIST** Observation_ReferenceRange,
	hasMember **LIST** Reference,
	derivedFrom **LIST** Reference,
	component **LIST** Observation_Component,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_effectiveInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataAbsentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimen)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (device)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observation_ReferenceRange(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	low TEXT, -- Foreign Key to quantity table
	high TEXT, -- Foreign Key to quantity table
	"type" TEXT, -- Foreign Key to codeableConcept table
	appliesTo **LIST** CodeableConcept,
	age TEXT, -- Foreign Key to range table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table

	FOREIGN KEY (low)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (high)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (age)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observation_Component(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueRange TEXT, -- Foreign Key to range table
	valueRatio TEXT, -- Foreign Key to ratio table
	valueSampledData TEXT, -- Foreign Key to sampledData table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valuePeriod TEXT, -- Foreign Key to period table
	dataAbsentReason TEXT, -- Foreign Key to codeableConcept table
	interpretation **LIST** CodeableConcept,
	referenceRange **LIST** Observation_ReferenceRange,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (dataAbsentReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observationDefinition(

	resourceType TEXT, -- resourceType: observationDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category **LIST** CodeableConcept,
	"code" TEXT, -- Foreign Key to codeableConcept table
	identifier **LIST** Identifier,
	permittedDataType **LIST** enum, -- Quantity/CodeableConcept/string/boolean/integer/Range/Ratio/SampledData/time/dateTime/Period,
	_permittedDataType **LIST** Element,
	multipleResultsAllowed BOOLEAN,
	_multipleResultsAllowed TEXT, -- Foreign Key to element table
	"method" TEXT, -- Foreign Key to codeableConcept table
	preferredReportName TEXT,
	_preferredReportName TEXT, -- Foreign Key to element table
	quantitativeDetails TEXT, -- Foreign Key to observationDefinition_QuantitativeDetails table
	qualifiedInterval **LIST** ObservationDefinition_QualifiedInterval,
	validCodedValueSet TEXT, -- Foreign Key to reference table
	normalCodedValueSet TEXT, -- Foreign Key to reference table
	abnormalCodedValueSet TEXT, -- Foreign Key to reference table
	criticalCodedValueSet TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleResultsAllowed)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferredReportName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantitativeDetails)
		REFERENCES observationDefinition_QuantitativeDetails (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (normalCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (abnormalCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (criticalCodedValueSet)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observationDefinition_QuantitativeDetails(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	customaryUnit TEXT, -- Foreign Key to codeableConcept table
	unit TEXT, -- Foreign Key to codeableConcept table
	conversionFactor REAL,
	_conversionFactor TEXT, -- Foreign Key to element table
	decimalPrecision INTEGER,
	_decimalPrecision TEXT, -- Foreign Key to element table

	FOREIGN KEY (customaryUnit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unit)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_conversionFactor)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_decimalPrecision)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE observationDefinition_QualifiedInterval(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- enum: reference/critical/absolute
	_category TEXT, -- Foreign Key to element table
	"range" TEXT, -- Foreign Key to range table
	context TEXT, -- Foreign Key to codeableConcept table
	appliesTo **LIST** CodeableConcept,
	gender TEXT, -- enum: male/female/other/unknown
	_gender TEXT, -- Foreign Key to element table
	age TEXT, -- Foreign Key to range table
	gestationalAge TEXT, -- Foreign Key to range table
	"condition" TEXT,
	_condition TEXT, -- Foreign Key to element table

	FOREIGN KEY (_category)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("range")
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (context)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (age)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (gestationalAge)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_condition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition(

	resourceType TEXT, -- resourceType: operationDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	kind TEXT, -- enum: operation/query
	_kind TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	affectsState BOOLEAN,
	_affectsState TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	base TEXT,
	"resource" **LIST** code,
	_resource **LIST** Element,
	"system" BOOLEAN,
	_system TEXT, -- Foreign Key to element table
	"type" BOOLEAN,
	_type TEXT, -- Foreign Key to element table
	"instance" BOOLEAN,
	_instance TEXT, -- Foreign Key to element table
	inputProfile TEXT,
	outputProfile TEXT,
	"parameter" **LIST** OperationDefinition_Parameter,
	overload **LIST** OperationDefinition_Overload,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_affectsState)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instance)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"use" TEXT, -- enum: in/out
	_use TEXT, -- Foreign Key to element table
	"min" INTEGER,
	_min TEXT, -- Foreign Key to element table
	"max" TEXT,
	_max TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	targetProfile **LIST** canonical,
	searchType TEXT, -- enum: number/date/string/token/reference/composite/quantity/uri/special
	_searchType TEXT, -- Foreign Key to element table
	"binding" TEXT, -- Foreign Key to operationDefinition_Binding table
	referencedFrom **LIST** OperationDefinition_ReferencedFrom,
	part **LIST** OperationDefinition_Parameter,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_use)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_searchType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("binding")
		REFERENCES operationDefinition_Binding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition_Binding(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	strength TEXT, -- enum: required/extensible/preferred/example
	_strength TEXT, -- Foreign Key to element table
	valueSet TEXT,

	FOREIGN KEY (_strength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition_ReferencedFrom(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"source" TEXT,
	_source TEXT, -- Foreign Key to element table
	sourceId TEXT,
	_sourceId TEXT, -- Foreign Key to element table

	FOREIGN KEY (_source)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationDefinition_Overload(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	parameterName **LIST** string,
	_parameterName **LIST** Element,
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationOutcome(

	resourceType TEXT, -- resourceType: operationOutcome
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	issue **LIST** OperationOutcome_Issue,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE operationOutcome_Issue(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	severity TEXT, -- enum: fatal/error/warning/information
	_severity TEXT, -- Foreign Key to element table
	"code" TEXT, -- enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational
	_code TEXT, -- Foreign Key to element table
	details TEXT, -- Foreign Key to codeableConcept table
	diagnostics TEXT,
	_diagnostics TEXT, -- Foreign Key to element table
	"location" **LIST** string,
	_location **LIST** Element,
	expression **LIST** string,
	_expression **LIST** Element,

	FOREIGN KEY (_severity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (details)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_diagnostics)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE organization(

	resourceType TEXT, -- resourceType: organization
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	"type" **LIST** CodeableConcept,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	alias **LIST** string,
	_alias **LIST** Element,
	telecom **LIST** ContactPoint,
	"address" **LIST** Address,
	partOf TEXT, -- Foreign Key to reference table
	contact **LIST** Organization_Contact,
	"endpoint" **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE organization_Contact(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	purpose TEXT, -- Foreign Key to codeableConcept table
	"name" TEXT, -- Foreign Key to humanName table
	telecom **LIST** ContactPoint,
	"address" TEXT, -- Foreign Key to address table

	FOREIGN KEY (purpose)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE organizationAffiliation(

	resourceType TEXT, -- resourceType: organizationAffiliation
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	organization TEXT, -- Foreign Key to reference table
	participatingOrganization TEXT, -- Foreign Key to reference table
	network **LIST** Reference,
	"code" **LIST** CodeableConcept,
	specialty **LIST** CodeableConcept,
	"location" **LIST** Reference,
	healthcareService **LIST** Reference,
	telecom **LIST** ContactPoint,
	"endpoint" **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participatingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE parameters(

	resourceType TEXT, -- resourceType: parameters
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"parameter" **LIST** Parameters_Parameter,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE parameters_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical TEXT, -- Foreign Key to element table
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId TEXT, -- Foreign Key to element table
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown TEXT, -- Foreign Key to element table
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid TEXT, -- Foreign Key to element table
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl TEXT, -- Foreign Key to element table
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid TEXT, -- Foreign Key to element table
	valueAddress TEXT, -- Foreign Key to address table
	valueAge TEXT, -- Foreign Key to age table
	valueAnnotation TEXT, -- Foreign Key to annotation table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueCoding TEXT, -- Foreign Key to coding table
	valueContactPoint TEXT, -- Foreign Key to contactPoint table
	valueCount TEXT, -- Foreign Key to count table
	valueDistance TEXT, -- Foreign Key to distance table
	valueDuration TEXT, -- Foreign Key to duration table
	valueHumanName TEXT, -- Foreign Key to humanName table
	valueIdentifier TEXT, -- Foreign Key to identifier table
	valueMoney TEXT, -- Foreign Key to money table
	valuePeriod TEXT, -- Foreign Key to period table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueRatio TEXT, -- Foreign Key to ratio table
	valueReference TEXT, -- Foreign Key to reference table
	valueSampledData TEXT, -- Foreign Key to sampledData table
	valueSignature TEXT, -- Foreign Key to signature table
	valueTiming TEXT, -- Foreign Key to timing table
	valueContactDetail TEXT, -- Foreign Key to contactDetail table
	valueContributor TEXT, -- Foreign Key to contributor table
	valueDataRequirement TEXT, -- Foreign Key to dataRequirement table
	valueExpression TEXT, -- Foreign Key to expression table
	valueParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	valueRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	valueTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	valueUsageContext TEXT, -- Foreign Key to usageContext table
	valueDosage TEXT, -- Foreign Key to dosage table
	valueMeta TEXT, -- Foreign Key to meta table
	"resource" TEXT, -- Foreign Key to resourceList table
	part **LIST** Parameters_Parameter,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("resource")
		REFERENCES resourceList (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE patient(

	resourceType TEXT, -- resourceType: patient
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	"name" **LIST** HumanName,
	telecom **LIST** ContactPoint,
	gender TEXT, -- enum: male/female/other/unknown
	_gender TEXT, -- Foreign Key to element table
	birthDate DATE,
	_birthDate TEXT, -- Foreign Key to element table
	deceasedBoolean BOOLEAN, -- pattern: ^true|false$
	_deceasedBoolean TEXT, -- Foreign Key to element table
	deceasedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_deceasedDateTime TEXT, -- Foreign Key to element table
	"address" **LIST** Address,
	maritalStatus TEXT, -- Foreign Key to codeableConcept table
	multipleBirthBoolean BOOLEAN, -- pattern: ^true|false$
	_multipleBirthBoolean TEXT, -- Foreign Key to element table
	multipleBirthInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_multipleBirthInteger TEXT, -- Foreign Key to element table
	photo **LIST** Attachment,
	contact **LIST** Patient_Contact,
	communication **LIST** Patient_Communication,
	generalPractitioner **LIST** Reference,
	managingOrganization TEXT, -- Foreign Key to reference table
	link **LIST** Patient_Link,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_deceasedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maritalStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleBirthBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleBirthInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE patient_Contact(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	relationship **LIST** CodeableConcept,
	"name" TEXT, -- Foreign Key to humanName table
	telecom **LIST** ContactPoint,
	"address" TEXT, -- Foreign Key to address table
	gender TEXT, -- enum: male/female/other/unknown
	_gender TEXT, -- Foreign Key to element table
	organization TEXT, -- Foreign Key to reference table
	"period" TEXT, -- Foreign Key to period table

	FOREIGN KEY ("name")
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("address")
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE patient_Communication(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"language" TEXT, -- Foreign Key to codeableConcept table
	preferred BOOLEAN,
	_preferred TEXT, -- Foreign Key to element table

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE patient_Link(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	other TEXT, -- Foreign Key to reference table
	"type" TEXT, -- enum: replaced-by/replaces/refer/seealso
	_type TEXT, -- Foreign Key to element table

	FOREIGN KEY (other)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE paymentNotice(

	resourceType TEXT, -- resourceType: paymentNotice
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	request TEXT, -- Foreign Key to reference table
	response TEXT, -- Foreign Key to reference table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	"provider" TEXT, -- Foreign Key to reference table
	payment TEXT, -- Foreign Key to reference table
	paymentDate DATE,
	_paymentDate TEXT, -- Foreign Key to element table
	payee TEXT, -- Foreign Key to reference table
	recipient TEXT, -- Foreign Key to reference table
	amount TEXT, -- Foreign Key to money table
	paymentStatus TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("provider")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payment)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recipient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE paymentReconciliation(

	resourceType TEXT, -- resourceType: paymentReconciliation
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	paymentIssuer TEXT, -- Foreign Key to reference table
	request TEXT, -- Foreign Key to reference table
	requestor TEXT, -- Foreign Key to reference table
	outcome TEXT, -- enum: queued/complete/error/partial
	_outcome TEXT, -- Foreign Key to element table
	disposition TEXT,
	_disposition TEXT, -- Foreign Key to element table
	paymentDate DATE,
	_paymentDate TEXT, -- Foreign Key to element table
	paymentAmount TEXT, -- Foreign Key to money table
	paymentIdentifier TEXT, -- Foreign Key to identifier table
	detail **LIST** PaymentReconciliation_Detail,
	formCode TEXT, -- Foreign Key to codeableConcept table
	processNote **LIST** PaymentReconciliation_ProcessNote,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentIssuer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_outcome)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_disposition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paymentDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentAmount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (paymentIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (formCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE paymentReconciliation_Detail(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	predecessor TEXT, -- Foreign Key to identifier table
	"type" TEXT, -- Foreign Key to codeableConcept table
	request TEXT, -- Foreign Key to reference table
	submitter TEXT, -- Foreign Key to reference table
	response TEXT, -- Foreign Key to reference table
	"date" DATE,
	_date TEXT, -- Foreign Key to element table
	responsible TEXT, -- Foreign Key to reference table
	payee TEXT, -- Foreign Key to reference table
	amount TEXT, -- Foreign Key to money table

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (predecessor)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (request)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (submitter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (response)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responsible)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (payee)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE paymentReconciliation_ProcessNote(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: display/print/printoper
	_type TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE person(

	resourceType TEXT, -- resourceType: person
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"name" **LIST** HumanName,
	telecom **LIST** ContactPoint,
	gender TEXT, -- enum: male/female/other/unknown
	_gender TEXT, -- Foreign Key to element table
	birthDate DATE,
	_birthDate TEXT, -- Foreign Key to element table
	"address" **LIST** Address,
	photo TEXT, -- Foreign Key to attachment table
	managingOrganization TEXT, -- Foreign Key to reference table
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	link **LIST** Person_Link,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (photo)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (managingOrganization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE person_Link(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"target" TEXT, -- Foreign Key to reference table
	assurance TEXT, -- enum: level1/level2/level3/level4
	_assurance TEXT, -- Foreign Key to element table

	FOREIGN KEY ("target")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_assurance)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition(

	resourceType TEXT, -- resourceType: planDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	library **LIST** canonical,
	goal **LIST** PlanDefinition_Goal,
	"action" **LIST** PlanDefinition_Action,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Goal(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT, -- Foreign Key to codeableConcept table
	"priority" TEXT, -- Foreign Key to codeableConcept table
	"start" TEXT, -- Foreign Key to codeableConcept table
	addresses **LIST** CodeableConcept,
	documentation **LIST** RelatedArtifact,
	"target" **LIST** PlanDefinition_Target,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("description")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("priority")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("start")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Target(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	measure TEXT, -- Foreign Key to codeableConcept table
	detailQuantity TEXT, -- Foreign Key to quantity table
	detailRange TEXT, -- Foreign Key to range table
	detailCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	due TEXT, -- Foreign Key to duration table

	FOREIGN KEY (measure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (detailCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (due)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Action(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	prefix TEXT,
	_prefix TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	textEquivalent TEXT,
	_textEquivalent TEXT, -- Foreign Key to element table
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	"code" **LIST** CodeableConcept,
	reason **LIST** CodeableConcept,
	documentation **LIST** RelatedArtifact,
	goalId **LIST** id,
	_goalId **LIST** Element,
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"trigger" **LIST** TriggerDefinition,
	"condition" **LIST** PlanDefinition_Condition,
	"input" **LIST** DataRequirement,
	"output" **LIST** DataRequirement,
	relatedAction **LIST** PlanDefinition_RelatedAction,
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime TEXT, -- Foreign Key to element table
	timingAge TEXT, -- Foreign Key to age table
	timingPeriod TEXT, -- Foreign Key to period table
	timingDuration TEXT, -- Foreign Key to duration table
	timingRange TEXT, -- Foreign Key to range table
	timingTiming TEXT, -- Foreign Key to timing table
	participant **LIST** PlanDefinition_Participant,
	"type" TEXT, -- Foreign Key to codeableConcept table
	groupingBehavior TEXT, -- enum: visual-group/logical-group/sentence-group
	_groupingBehavior TEXT, -- Foreign Key to element table
	selectionBehavior TEXT, -- enum: any/all/all-or-none/exactly-one/at-most-one/one-or-more
	_selectionBehavior TEXT, -- Foreign Key to element table
	requiredBehavior TEXT, -- enum: must/could/must-unless-documented
	_requiredBehavior TEXT, -- Foreign Key to element table
	precheckBehavior TEXT, -- enum: yes/no
	_precheckBehavior TEXT, -- Foreign Key to element table
	cardinalityBehavior TEXT, -- enum: single/multiple
	_cardinalityBehavior TEXT, -- Foreign Key to element table
	definitionCanonical TEXT, -- pattern: ^\S*$
	_definitionCanonical TEXT, -- Foreign Key to element table
	definitionUri TEXT, -- pattern: ^\S*$
	_definitionUri TEXT, -- Foreign Key to element table
	transform TEXT,
	dynamicValue **LIST** PlanDefinition_DynamicValue,
	"action" **LIST** PlanDefinition_Action,

	FOREIGN KEY (_prefix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_textEquivalent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupingBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_selectionBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requiredBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precheckBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cardinalityBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Condition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	kind TEXT, -- enum: applicability/start/stop
	_kind TEXT, -- Foreign Key to element table
	expression TEXT, -- Foreign Key to expression table

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_RelatedAction(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	actionId TEXT, -- Foreign Key to id table
	_actionId TEXT, -- Foreign Key to element table
	relationship TEXT, -- enum: before-start/before/before-end/concurrent-with-start/concurrent/concurrent-with-end/after-start/after/after-end
	_relationship TEXT, -- Foreign Key to element table
	offsetDuration TEXT, -- Foreign Key to duration table
	offsetRange TEXT, -- Foreign Key to range table

	FOREIGN KEY (actionId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relationship)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_Participant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: patient/practitioner/related-person/device
	_type TEXT, -- Foreign Key to element table
	"role" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE planDefinition_DynamicValue(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	expression TEXT, -- Foreign Key to expression table

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitioner(

	resourceType TEXT, -- resourceType: practitioner
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	"name" **LIST** HumanName,
	telecom **LIST** ContactPoint,
	"address" **LIST** Address,
	gender TEXT, -- enum: male/female/other/unknown
	_gender TEXT, -- Foreign Key to element table
	birthDate DATE,
	_birthDate TEXT, -- Foreign Key to element table
	photo **LIST** Attachment,
	qualification **LIST** Practitioner_Qualification,
	communication **LIST** CodeableConcept,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitioner_Qualification(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"period" TEXT, -- Foreign Key to period table
	issuer TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (issuer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitionerRole(

	resourceType TEXT, -- resourceType: practitionerRole
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	practitioner TEXT, -- Foreign Key to reference table
	organization TEXT, -- Foreign Key to reference table
	"code" **LIST** CodeableConcept,
	specialty **LIST** CodeableConcept,
	"location" **LIST** Reference,
	healthcareService **LIST** Reference,
	telecom **LIST** ContactPoint,
	availableTime **LIST** PractitionerRole_AvailableTime,
	notAvailable **LIST** PractitionerRole_NotAvailable,
	availabilityExceptions TEXT,
	_availabilityExceptions TEXT, -- Foreign Key to element table
	"endpoint" **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (practitioner)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availabilityExceptions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitionerRole_AvailableTime(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	daysOfWeek **LIST** code,
	_daysOfWeek **LIST** Element,
	allDay BOOLEAN,
	_allDay TEXT, -- Foreign Key to element table
	availableStartTime TIME,
	_availableStartTime TEXT, -- Foreign Key to element table
	availableEndTime TIME,
	_availableEndTime TEXT, -- Foreign Key to element table

	FOREIGN KEY (_allDay)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableStartTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_availableEndTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE practitionerRole_NotAvailable(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	during TEXT, -- Foreign Key to period table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (during)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE "procedure"(

	resourceType TEXT, -- resourceType: procedure
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	basedOn **LIST** Reference,
	partOf **LIST** Reference,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	category TEXT, -- Foreign Key to codeableConcept table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	performedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_performedDateTime TEXT, -- Foreign Key to element table
	performedPeriod TEXT, -- Foreign Key to period table
	performedString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_performedString TEXT, -- Foreign Key to element table
	performedAge TEXT, -- Foreign Key to age table
	performedRange TEXT, -- Foreign Key to range table
	recorder TEXT, -- Foreign Key to reference table
	asserter TEXT, -- Foreign Key to reference table
	performer **LIST** Procedure_Performer,
	"location" TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	bodySite **LIST** CodeableConcept,
	outcome TEXT, -- Foreign Key to codeableConcept table
	report **LIST** Reference,
	complication **LIST** CodeableConcept,
	complicationDetail **LIST** Reference,
	followUp **LIST** CodeableConcept,
	note **LIST** Annotation,
	focalDevice **LIST** Procedure_FocalDevice,
	usedReference **LIST** Reference,
	usedCode **LIST** CodeableConcept,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_performedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_performedString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performedAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performedRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (recorder)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asserter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE procedure_Performer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"function" TEXT, -- Foreign Key to codeableConcept table
	actor TEXT, -- Foreign Key to reference table
	onBehalfOf TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("function")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (actor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE procedure_FocalDevice(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"action" TEXT, -- Foreign Key to codeableConcept table
	manipulated TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("action")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (manipulated)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE provenance(

	resourceType TEXT, -- resourceType: provenance
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"target" **LIST** Reference,
	occurredPeriod TEXT, -- Foreign Key to period table
	occurredDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurredDateTime TEXT, -- Foreign Key to element table
	recorded DATETIME,
	_recorded TEXT, -- Foreign Key to element table
	"policy" **LIST** uri,
	_policy **LIST** Element,
	"location" TEXT, -- Foreign Key to reference table
	reason **LIST** CodeableConcept,
	activity TEXT, -- Foreign Key to codeableConcept table
	agent **LIST** Provenance_Agent,
	entity **LIST** Provenance_Entity,
	"signature" **LIST** Signature,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurredPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurredDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_recorded)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (activity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE provenance_Agent(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"role" **LIST** CodeableConcept,
	who TEXT, -- Foreign Key to reference table
	onBehalfOf TEXT, -- Foreign Key to reference table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE provenance_Entity(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"role" TEXT, -- enum: derivation/revision/quotation/source/removal
	_role TEXT, -- Foreign Key to element table
	what TEXT, -- Foreign Key to reference table
	agent **LIST** Provenance_Agent,

	FOREIGN KEY (_role)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (what)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire(

	resourceType TEXT, -- resourceType: questionnaire
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	derivedFrom **LIST** canonical,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	subjectType **LIST** code,
	_subjectType **LIST** Element,
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	"code" **LIST** Coding,
	item **LIST** Questionnaire_Item,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	linkId TEXT,
	_linkId TEXT, -- Foreign Key to element table
	"definition" TEXT,
	_definition TEXT, -- Foreign Key to element table
	"code" **LIST** Coding,
	prefix TEXT,
	_prefix TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	"type" TEXT, -- enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity
	_type TEXT, -- Foreign Key to element table
	enableWhen **LIST** Questionnaire_EnableWhen,
	enableBehavior TEXT, -- enum: all/any
	_enableBehavior TEXT, -- Foreign Key to element table
	"required" BOOLEAN,
	_required TEXT, -- Foreign Key to element table
	repeats BOOLEAN,
	_repeats TEXT, -- Foreign Key to element table
	readOnly BOOLEAN,
	_readOnly TEXT, -- Foreign Key to element table
	"maxLength" INTEGER,
	_maxLength TEXT, -- Foreign Key to element table
	answerValueSet TEXT,
	answerOption **LIST** Questionnaire_AnswerOption,
	initial **LIST** Questionnaire_Initial,
	item **LIST** Questionnaire_Item,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_prefix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_enableBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_required)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_repeats)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_readOnly)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maxLength)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire_EnableWhen(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	question TEXT,
	_question TEXT, -- Foreign Key to element table
	operator TEXT, -- enum: exists/=/!=/>/</>=/<=
	_operator TEXT, -- Foreign Key to element table
	answerBoolean BOOLEAN, -- pattern: ^true|false$
	_answerBoolean TEXT, -- Foreign Key to element table
	answerDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_answerDecimal TEXT, -- Foreign Key to element table
	answerInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_answerInteger TEXT, -- Foreign Key to element table
	answerDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_answerDate TEXT, -- Foreign Key to element table
	answerDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_answerDateTime TEXT, -- Foreign Key to element table
	answerTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_answerTime TEXT, -- Foreign Key to element table
	answerString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_answerString TEXT, -- Foreign Key to element table
	answerCoding TEXT, -- Foreign Key to coding table
	answerQuantity TEXT, -- Foreign Key to quantity table
	answerReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_question)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_operator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_answerString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answerCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answerQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (answerReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire_AnswerOption(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueCoding TEXT, -- Foreign Key to coding table
	valueReference TEXT, -- Foreign Key to reference table
	initialSelected BOOLEAN,
	_initialSelected TEXT, -- Foreign Key to element table

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_initialSelected)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaire_Initial(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCoding TEXT, -- Foreign Key to coding table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaireResponse(

	resourceType TEXT, -- resourceType: questionnaireResponse
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	basedOn **LIST** Reference,
	partOf **LIST** Reference,
	questionnaire TEXT,
	"status" TEXT, -- enum: in-progress/completed/amended/entered-in-error/stopped
	_status TEXT, -- Foreign Key to element table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	authored DATETIME,
	_authored TEXT, -- Foreign Key to element table
	author TEXT, -- Foreign Key to reference table
	"source" TEXT, -- Foreign Key to reference table
	item **LIST** QuestionnaireResponse_Item,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authored)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("source")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaireResponse_Item(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	linkId TEXT,
	_linkId TEXT, -- Foreign Key to element table
	"definition" TEXT,
	_definition TEXT, -- Foreign Key to element table
	"text" TEXT,
	_text TEXT, -- Foreign Key to element table
	answer **LIST** QuestionnaireResponse_Answer,
	item **LIST** QuestionnaireResponse_Item,

	FOREIGN KEY (_linkId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_text)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE questionnaireResponse_Answer(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCoding TEXT, -- Foreign Key to coding table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueReference TEXT, -- Foreign Key to reference table
	item **LIST** QuestionnaireResponse_Item,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE relatedPerson(

	resourceType TEXT, -- resourceType: relatedPerson
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	relationship **LIST** CodeableConcept,
	"name" **LIST** HumanName,
	telecom **LIST** ContactPoint,
	gender TEXT, -- enum: male/female/other/unknown
	_gender TEXT, -- Foreign Key to element table
	birthDate DATE,
	_birthDate TEXT, -- Foreign Key to element table
	"address" **LIST** Address,
	photo **LIST** Attachment,
	"period" TEXT, -- Foreign Key to period table
	communication **LIST** RelatedPerson_Communication,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_gender)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_birthDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE relatedPerson_Communication(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"language" TEXT, -- Foreign Key to codeableConcept table
	preferred BOOLEAN,
	_preferred TEXT, -- Foreign Key to element table

	FOREIGN KEY ("language")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE requestGroup(

	resourceType TEXT, -- resourceType: requestGroup
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	_instantiatesCanonical **LIST** Element,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	basedOn **LIST** Reference,
	replaces **LIST** Reference,
	groupIdentifier TEXT, -- Foreign Key to identifier table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	intent TEXT,
	_intent TEXT, -- Foreign Key to element table
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	authoredOn DATETIME,
	_authoredOn TEXT, -- Foreign Key to element table
	author TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	note **LIST** Annotation,
	"action" **LIST** RequestGroup_Action,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (author)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE requestGroup_Action(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	prefix TEXT,
	_prefix TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	textEquivalent TEXT,
	_textEquivalent TEXT, -- Foreign Key to element table
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	"code" **LIST** CodeableConcept,
	documentation **LIST** RelatedArtifact,
	"condition" **LIST** RequestGroup_Condition,
	relatedAction **LIST** RequestGroup_RelatedAction,
	timingDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timingDateTime TEXT, -- Foreign Key to element table
	timingAge TEXT, -- Foreign Key to age table
	timingPeriod TEXT, -- Foreign Key to period table
	timingDuration TEXT, -- Foreign Key to duration table
	timingRange TEXT, -- Foreign Key to range table
	timingTiming TEXT, -- Foreign Key to timing table
	participant **LIST** Reference,
	"type" TEXT, -- Foreign Key to codeableConcept table
	groupingBehavior TEXT,
	_groupingBehavior TEXT, -- Foreign Key to element table
	selectionBehavior TEXT,
	_selectionBehavior TEXT, -- Foreign Key to element table
	requiredBehavior TEXT,
	_requiredBehavior TEXT, -- Foreign Key to element table
	precheckBehavior TEXT,
	_precheckBehavior TEXT, -- Foreign Key to element table
	cardinalityBehavior TEXT,
	_cardinalityBehavior TEXT, -- Foreign Key to element table
	"resource" TEXT, -- Foreign Key to reference table
	"action" **LIST** RequestGroup_Action,

	FOREIGN KEY (_prefix)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_textEquivalent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timingDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timingTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_groupingBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_selectionBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requiredBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_precheckBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cardinalityBehavior)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("resource")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE requestGroup_Condition(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	kind TEXT,
	_kind TEXT, -- Foreign Key to element table
	expression TEXT, -- Foreign Key to expression table

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE requestGroup_RelatedAction(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	actionId TEXT, -- Foreign Key to id table
	_actionId TEXT, -- Foreign Key to element table
	relationship TEXT,
	_relationship TEXT, -- Foreign Key to element table
	offsetDuration TEXT, -- Foreign Key to duration table
	offsetRange TEXT, -- Foreign Key to range table

	FOREIGN KEY (actionId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actionId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relationship)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (offsetRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchDefinition(

	resourceType TEXT, -- resourceType: researchDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	shortTitle TEXT,
	_shortTitle TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	comment **LIST** string,
	_comment **LIST** Element,
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	library **LIST** canonical,
	"population" TEXT, -- Foreign Key to reference table
	exposure TEXT, -- Foreign Key to reference table
	exposureAlternative TEXT, -- Foreign Key to reference table
	outcome TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposure)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposureAlternative)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchElementDefinition(

	resourceType TEXT, -- resourceType: researchElementDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	shortTitle TEXT,
	_shortTitle TEXT, -- Foreign Key to element table
	subtitle TEXT,
	_subtitle TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	subjectCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	subjectReference TEXT, -- Foreign Key to reference table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	comment **LIST** string,
	_comment **LIST** Element,
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"usage" TEXT,
	_usage TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	library **LIST** canonical,
	"type" TEXT, -- enum: population/exposure/outcome
	_type TEXT, -- Foreign Key to element table
	variableType TEXT, -- enum: dichotomous/continuous/descriptive
	_variableType TEXT, -- Foreign Key to element table
	characteristic **LIST** ResearchElementDefinition_Characteristic,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_shortTitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_subtitle)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (subjectReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_usage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variableType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchElementDefinition_Characteristic(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	definitionCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	definitionCanonical TEXT, -- pattern: ^\S*$
	_definitionCanonical TEXT, -- Foreign Key to element table
	definitionExpression TEXT, -- Foreign Key to expression table
	definitionDataRequirement TEXT, -- Foreign Key to dataRequirement table
	usageContext **LIST** UsageContext,
	exclude BOOLEAN,
	_exclude TEXT, -- Foreign Key to element table
	unitOfMeasure TEXT, -- Foreign Key to codeableConcept table
	studyEffectiveDescription TEXT,
	_studyEffectiveDescription TEXT, -- Foreign Key to element table
	studyEffectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_studyEffectiveDateTime TEXT, -- Foreign Key to element table
	studyEffectivePeriod TEXT, -- Foreign Key to period table
	studyEffectiveDuration TEXT, -- Foreign Key to duration table
	studyEffectiveTiming TEXT, -- Foreign Key to timing table
	studyEffectiveTimeFromStart TEXT, -- Foreign Key to duration table
	studyEffectiveGroupMeasure TEXT, -- enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_studyEffectiveGroupMeasure TEXT, -- Foreign Key to element table
	participantEffectiveDescription TEXT,
	_participantEffectiveDescription TEXT, -- Foreign Key to element table
	participantEffectiveDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_participantEffectiveDateTime TEXT, -- Foreign Key to element table
	participantEffectivePeriod TEXT, -- Foreign Key to period table
	participantEffectiveDuration TEXT, -- Foreign Key to duration table
	participantEffectiveTiming TEXT, -- Foreign Key to timing table
	participantEffectiveTimeFromStart TEXT, -- Foreign Key to duration table
	participantEffectiveGroupMeasure TEXT, -- enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median
	_participantEffectiveGroupMeasure TEXT, -- Foreign Key to element table

	FOREIGN KEY (definitionCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_definitionCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definitionDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_exclude)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfMeasure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_studyEffectiveDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_studyEffectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectiveDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyEffectiveTimeFromStart)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_studyEffectiveGroupMeasure)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (participantEffectiveTimeFromStart)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_participantEffectiveGroupMeasure)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchStudy(

	resourceType TEXT, -- resourceType: researchStudy
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	protocol **LIST** Reference,
	partOf **LIST** Reference,
	"status" TEXT, -- enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn
	_status TEXT, -- Foreign Key to element table
	primaryPurposeType TEXT, -- Foreign Key to codeableConcept table
	phase TEXT, -- Foreign Key to codeableConcept table
	category **LIST** CodeableConcept,
	focus **LIST** CodeableConcept,
	"condition" **LIST** CodeableConcept,
	contact **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	keyword **LIST** CodeableConcept,
	"location" **LIST** CodeableConcept,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	enrollment **LIST** Reference,
	"period" TEXT, -- Foreign Key to period table
	sponsor TEXT, -- Foreign Key to reference table
	principalInvestigator TEXT, -- Foreign Key to reference table
	"site" **LIST** Reference,
	reasonStopped TEXT, -- Foreign Key to codeableConcept table
	note **LIST** Annotation,
	arm **LIST** ResearchStudy_Arm,
	objective **LIST** ResearchStudy_Objective,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (primaryPurposeType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (phase)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sponsor)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (principalInvestigator)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonStopped)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchStudy_Arm(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchStudy_Objective(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE researchSubject(

	resourceType TEXT, -- resourceType: researchSubject
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: candidate/eligible/follow-up/ineligible/not-registered/off-study/on-study/on-study-intervention/on-study-observation/pending-on-study/potential-candidate/screening/withdrawn
	_status TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	study TEXT, -- Foreign Key to reference table
	individual TEXT, -- Foreign Key to reference table
	assignedArm TEXT,
	_assignedArm TEXT, -- Foreign Key to element table
	actualArm TEXT,
	_actualArm TEXT, -- Foreign Key to element table
	consent TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (study)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (individual)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_assignedArm)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_actualArm)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (consent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskAssessment(

	resourceType TEXT, -- resourceType: riskAssessment
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn TEXT, -- Foreign Key to reference table
	parent TEXT, -- Foreign Key to reference table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	"method" TEXT, -- Foreign Key to codeableConcept table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	"condition" TEXT, -- Foreign Key to reference table
	performer TEXT, -- Foreign Key to reference table
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	basis **LIST** Reference,
	prediction **LIST** RiskAssessment_Prediction,
	mitigation TEXT,
	_mitigation TEXT, -- Foreign Key to element table
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (basedOn)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (parent)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("condition")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mitigation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskAssessment_Prediction(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	outcome TEXT, -- Foreign Key to codeableConcept table
	probabilityDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_probabilityDecimal TEXT, -- Foreign Key to element table
	probabilityRange TEXT, -- Foreign Key to range table
	qualitativeRisk TEXT, -- Foreign Key to codeableConcept table
	relativeRisk REAL,
	_relativeRisk TEXT, -- Foreign Key to element table
	whenPeriod TEXT, -- Foreign Key to period table
	whenRange TEXT, -- Foreign Key to range table
	rationale TEXT,
	_rationale TEXT, -- Foreign Key to element table

	FOREIGN KEY (outcome)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_probabilityDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (probabilityRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (qualitativeRisk)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_relativeRisk)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (whenPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (whenRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_rationale)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis(

	resourceType TEXT, -- resourceType: riskEvidenceSynthesis
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	note **LIST** Annotation,
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	approvalDate DATE,
	_approvalDate TEXT, -- Foreign Key to element table
	lastReviewDate DATE,
	_lastReviewDate TEXT, -- Foreign Key to element table
	effectivePeriod TEXT, -- Foreign Key to period table
	topic **LIST** CodeableConcept,
	author **LIST** ContactDetail,
	editor **LIST** ContactDetail,
	reviewer **LIST** ContactDetail,
	endorser **LIST** ContactDetail,
	relatedArtifact **LIST** RelatedArtifact,
	synthesisType TEXT, -- Foreign Key to codeableConcept table
	studyType TEXT, -- Foreign Key to codeableConcept table
	"population" TEXT, -- Foreign Key to reference table
	exposure TEXT, -- Foreign Key to reference table
	outcome TEXT, -- Foreign Key to reference table
	sampleSize TEXT, -- Foreign Key to riskEvidenceSynthesis_SampleSize table
	riskEstimate TEXT, -- Foreign Key to riskEvidenceSynthesis_RiskEstimate table
	certainty **LIST** RiskEvidenceSynthesis_Certainty,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_approvalDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastReviewDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (effectivePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (synthesisType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (studyType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("population")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (exposure)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (outcome)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sampleSize)
		REFERENCES riskEvidenceSynthesis_SampleSize (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (riskEstimate)
		REFERENCES riskEvidenceSynthesis_RiskEstimate (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_SampleSize(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	numberOfStudies INTEGER,
	_numberOfStudies TEXT, -- Foreign Key to element table
	numberOfParticipants INTEGER,
	_numberOfParticipants TEXT, -- Foreign Key to element table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfStudies)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfParticipants)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_RiskEstimate(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"value" REAL,
	_value TEXT, -- Foreign Key to element table
	unitOfMeasure TEXT, -- Foreign Key to codeableConcept table
	denominatorCount INTEGER,
	_denominatorCount TEXT, -- Foreign Key to element table
	numeratorCount INTEGER,
	_numeratorCount TEXT, -- Foreign Key to element table
	precisionEstimate **LIST** RiskEvidenceSynthesis_PrecisionEstimate,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (unitOfMeasure)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_denominatorCount)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numeratorCount)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_PrecisionEstimate(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	"level" REAL,
	_level TEXT, -- Foreign Key to element table
	"from" REAL,
	_from TEXT, -- Foreign Key to element table
	"to" REAL,
	_to TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_level)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_from)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_to)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE riskEvidenceSynthesis_Certainty(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	rating **LIST** CodeableConcept,
	note **LIST** Annotation,
	certaintySubcomponent **LIST** RiskEvidenceSynthesis_CertaintySubcomponent

);

CREATE TABLE riskEvidenceSynthesis_CertaintySubcomponent(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	rating **LIST** CodeableConcept,
	note **LIST** Annotation,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE schedule(

	resourceType TEXT, -- resourceType: schedule
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	active BOOLEAN,
	_active TEXT, -- Foreign Key to element table
	serviceCategory **LIST** CodeableConcept,
	serviceType **LIST** CodeableConcept,
	specialty **LIST** CodeableConcept,
	actor **LIST** Reference,
	planningHorizon TEXT, -- Foreign Key to period table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_active)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (planningHorizon)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE searchParameter(

	resourceType TEXT, -- resourceType: searchParameter
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	derivedFrom TEXT,
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	base **LIST** code,
	_base **LIST** Element,
	"type" TEXT, -- enum: number/date/string/token/reference/composite/quantity/uri/special
	_type TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table
	xpath TEXT,
	_xpath TEXT, -- Foreign Key to element table
	xpathUsage TEXT, -- enum: normal/phonetic/nearby/distance/other
	_xpathUsage TEXT, -- Foreign Key to element table
	"target" **LIST** code,
	_target **LIST** Element,
	multipleOr BOOLEAN,
	_multipleOr TEXT, -- Foreign Key to element table
	multipleAnd BOOLEAN,
	_multipleAnd TEXT, -- Foreign Key to element table
	comparator **LIST** enum, -- eq/ne/gt/lt/ge/le/sa/eb/ap,
	_comparator **LIST** Element,
	modifier **LIST** enum, -- missing/exact/contains/not/text/in/not-in/below/above/type/identifier/ofType,
	_modifier **LIST** Element,
	"chain" **LIST** string,
	_chain **LIST** Element,
	component **LIST** SearchParameter_Component,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_xpath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_xpathUsage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleOr)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_multipleAnd)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE searchParameter_Component(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"definition" TEXT,
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE serviceRequest(

	resourceType TEXT, -- resourceType: serviceRequest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical **LIST** canonical,
	instantiatesUri **LIST** uri,
	_instantiatesUri **LIST** Element,
	basedOn **LIST** Reference,
	replaces **LIST** Reference,
	requisition TEXT, -- Foreign Key to identifier table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	intent TEXT,
	_intent TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	doNotPerform BOOLEAN,
	_doNotPerform TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	orderDetail **LIST** CodeableConcept,
	quantityQuantity TEXT, -- Foreign Key to quantity table
	quantityRatio TEXT, -- Foreign Key to ratio table
	quantityRange TEXT, -- Foreign Key to range table
	"subject" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	occurrenceTiming TEXT, -- Foreign Key to timing table
	asNeededBoolean BOOLEAN, -- pattern: ^true|false$
	_asNeededBoolean TEXT, -- Foreign Key to element table
	asNeededCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	authoredOn DATETIME,
	_authoredOn TEXT, -- Foreign Key to element table
	requester TEXT, -- Foreign Key to reference table
	performerType TEXT, -- Foreign Key to codeableConcept table
	performer **LIST** Reference,
	locationCode **LIST** CodeableConcept,
	locationReference **LIST** Reference,
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	insurance **LIST** Reference,
	supportingInfo **LIST** Reference,
	specimen **LIST** Reference,
	bodySite **LIST** CodeableConcept,
	note **LIST** Annotation,
	patientInstruction TEXT,
	_patientInstruction TEXT, -- Foreign Key to element table
	relevantHistory **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requisition)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_doNotPerform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantityQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantityRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantityRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_asNeededBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (asNeededCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (performerType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_patientInstruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE slot(

	resourceType TEXT, -- resourceType: slot
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	serviceCategory **LIST** CodeableConcept,
	serviceType **LIST** CodeableConcept,
	specialty **LIST** CodeableConcept,
	appointmentType TEXT, -- Foreign Key to codeableConcept table
	schedule TEXT, -- Foreign Key to reference table
	"status" TEXT, -- enum: busy/free/busy-unavailable/busy-tentative/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"start" DATETIME,
	_start TEXT, -- Foreign Key to element table
	"end" DATETIME,
	_end TEXT, -- Foreign Key to element table
	overbooked BOOLEAN,
	_overbooked TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (appointmentType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (schedule)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_start)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_overbooked)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimen(

	resourceType TEXT, -- resourceType: specimen
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	accessionIdentifier TEXT, -- Foreign Key to identifier table
	"status" TEXT, -- enum: available/unavailable/unsatisfactory/entered-in-error
	_status TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"subject" TEXT, -- Foreign Key to reference table
	receivedTime DATETIME,
	_receivedTime TEXT, -- Foreign Key to element table
	parent **LIST** Reference,
	request **LIST** Reference,
	"collection" TEXT, -- Foreign Key to specimen_Collection table
	processing **LIST** Specimen_Processing,
	container **LIST** Specimen_Container,
	"condition" **LIST** CodeableConcept,
	note **LIST** Annotation,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (accessionIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("subject")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_receivedTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("collection")
		REFERENCES specimen_Collection (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimen_Collection(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	collector TEXT, -- Foreign Key to reference table
	collectedDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_collectedDateTime TEXT, -- Foreign Key to element table
	collectedPeriod TEXT, -- Foreign Key to period table
	duration TEXT, -- Foreign Key to duration table
	quantity TEXT, -- Foreign Key to quantity table
	"method" TEXT, -- Foreign Key to codeableConcept table
	bodySite TEXT, -- Foreign Key to codeableConcept table
	fastingStatusCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	fastingStatusDuration TEXT, -- Foreign Key to duration table

	FOREIGN KEY (collector)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_collectedDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (collectedPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (bodySite)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fastingStatusCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fastingStatusDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimen_Processing(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"procedure" TEXT, -- Foreign Key to codeableConcept table
	additive **LIST** Reference,
	timeDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_timeDateTime TEXT, -- Foreign Key to element table
	timePeriod TEXT, -- Foreign Key to period table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("procedure")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (timePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimen_Container(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	capacity TEXT, -- Foreign Key to quantity table
	specimenQuantity TEXT, -- Foreign Key to quantity table
	additiveCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	additiveReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (capacity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (specimenQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition(

	resourceType TEXT, -- resourceType: specimenDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	typeCollected TEXT, -- Foreign Key to codeableConcept table
	patientPreparation **LIST** CodeableConcept,
	timeAspect TEXT,
	_timeAspect TEXT, -- Foreign Key to element table
	"collection" **LIST** CodeableConcept,
	typeTested **LIST** SpecimenDefinition_TypeTested,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (typeCollected)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timeAspect)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition_TypeTested(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	isDerived BOOLEAN,
	_isDerived TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	preference TEXT, -- enum: preferred/alternate
	_preference TEXT, -- Foreign Key to element table
	container TEXT, -- Foreign Key to specimenDefinition_Container table
	requirement TEXT,
	_requirement TEXT, -- Foreign Key to element table
	retentionTime TEXT, -- Foreign Key to duration table
	rejectionCriterion **LIST** CodeableConcept,
	handling **LIST** SpecimenDefinition_Handling,

	FOREIGN KEY (_isDerived)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preference)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (container)
		REFERENCES specimenDefinition_Container (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requirement)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (retentionTime)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition_Container(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	material TEXT, -- Foreign Key to codeableConcept table
	"type" TEXT, -- Foreign Key to codeableConcept table
	cap TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	capacity TEXT, -- Foreign Key to quantity table
	minimumVolumeQuantity TEXT, -- Foreign Key to quantity table
	minimumVolumeString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_minimumVolumeString TEXT, -- Foreign Key to element table
	additive **LIST** SpecimenDefinition_Additive,
	preparation TEXT,
	_preparation TEXT, -- Foreign Key to element table

	FOREIGN KEY (material)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cap)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (capacity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (minimumVolumeQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minimumVolumeString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preparation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition_Additive(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	additiveCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	additiveReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (additiveCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (additiveReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE specimenDefinition_Handling(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	temperatureQualifier TEXT, -- Foreign Key to codeableConcept table
	temperatureRange TEXT, -- Foreign Key to range table
	maxDuration TEXT, -- Foreign Key to duration table
	instruction TEXT,
	_instruction TEXT, -- Foreign Key to element table

	FOREIGN KEY (temperatureQualifier)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (temperatureRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (maxDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instruction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition(

	resourceType TEXT, -- resourceType: structureDefinition
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	keyword **LIST** Coding,
	fhirVersion TEXT, -- enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1
	_fhirVersion TEXT, -- Foreign Key to element table
	mapping **LIST** StructureDefinition_Mapping,
	kind TEXT, -- enum: primitive-type/complex-type/resource/logical
	_kind TEXT, -- Foreign Key to element table
	abstract BOOLEAN,
	_abstract TEXT, -- Foreign Key to element table
	context **LIST** StructureDefinition_Context,
	contextInvariant **LIST** string,
	_contextInvariant **LIST** Element,
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	baseDefinition TEXT,
	derivation TEXT, -- enum: specialization/constraint
	_derivation TEXT, -- Foreign Key to element table
	"snapshot" TEXT, -- Foreign Key to structureDefinition_Snapshot table
	"differential" TEXT, -- Foreign Key to structureDefinition_Differential table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_fhirVersion)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_abstract)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_derivation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("snapshot")
		REFERENCES structureDefinition_Snapshot (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("differential")
		REFERENCES structureDefinition_Differential (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition_Mapping(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"identity" TEXT, -- Foreign Key to id table
	_identity TEXT, -- Foreign Key to element table
	uri TEXT,
	_uri TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table

	FOREIGN KEY ("identity")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition_Context(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: fhirpath/element/extension
	_type TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureDefinition_Snapshot(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	element **LIST** ElementDefinition

);

CREATE TABLE structureDefinition_Differential(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	element **LIST** ElementDefinition

);

CREATE TABLE structureMap(

	resourceType TEXT, -- resourceType: structureMap
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	"structure" **LIST** StructureMap_Structure,
	import **LIST** canonical,
	"group" **LIST** StructureMap_Group,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Structure(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	mode TEXT, -- enum: source/queried/target/produced
	_mode TEXT, -- Foreign Key to element table
	alias TEXT,
	_alias TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_alias)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Group(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT, -- Foreign Key to id table
	_name TEXT, -- Foreign Key to element table
	extends TEXT, -- Foreign Key to id table
	_extends TEXT, -- Foreign Key to element table
	typeMode TEXT, -- enum: none/types/type-and-types
	_typeMode TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table
	"input" **LIST** StructureMap_Input,
	"rule" **LIST** StructureMap_Rule,

	FOREIGN KEY ("name")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (extends)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_extends)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_typeMode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Input(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT, -- Foreign Key to id table
	_name TEXT, -- Foreign Key to element table
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	mode TEXT, -- enum: source/target
	_mode TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY ("name")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_mode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Rule(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT, -- Foreign Key to id table
	_name TEXT, -- Foreign Key to element table
	"source" **LIST** StructureMap_Source,
	"target" **LIST** StructureMap_Target,
	"rule" **LIST** StructureMap_Rule,
	"dependent" **LIST** StructureMap_Dependent,
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY ("name")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Source(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	context TEXT, -- Foreign Key to id table
	_context TEXT, -- Foreign Key to element table
	"min" INTEGER,
	_min TEXT, -- Foreign Key to element table
	"max" TEXT,
	_max TEXT, -- Foreign Key to element table
	"type" TEXT,
	_type TEXT, -- Foreign Key to element table
	defaultValueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_defaultValueBase64Binary TEXT, -- Foreign Key to element table
	defaultValueBoolean BOOLEAN, -- pattern: ^true|false$
	_defaultValueBoolean TEXT, -- Foreign Key to element table
	defaultValueCanonical TEXT, -- pattern: ^\S*$
	_defaultValueCanonical TEXT, -- Foreign Key to element table
	defaultValueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_defaultValueCode TEXT, -- Foreign Key to element table
	defaultValueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_defaultValueDate TEXT, -- Foreign Key to element table
	defaultValueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_defaultValueDateTime TEXT, -- Foreign Key to element table
	defaultValueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_defaultValueDecimal TEXT, -- Foreign Key to element table
	defaultValueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_defaultValueId TEXT, -- Foreign Key to element table
	defaultValueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_defaultValueInstant TEXT, -- Foreign Key to element table
	defaultValueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_defaultValueInteger TEXT, -- Foreign Key to element table
	defaultValueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueMarkdown TEXT, -- Foreign Key to element table
	defaultValueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_defaultValueOid TEXT, -- Foreign Key to element table
	defaultValuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_defaultValuePositiveInt TEXT, -- Foreign Key to element table
	defaultValueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_defaultValueString TEXT, -- Foreign Key to element table
	defaultValueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_defaultValueTime TEXT, -- Foreign Key to element table
	defaultValueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_defaultValueUnsignedInt TEXT, -- Foreign Key to element table
	defaultValueUri TEXT, -- pattern: ^\S*$
	_defaultValueUri TEXT, -- Foreign Key to element table
	defaultValueUrl TEXT, -- pattern: ^\S*$
	_defaultValueUrl TEXT, -- Foreign Key to element table
	defaultValueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_defaultValueUuid TEXT, -- Foreign Key to element table
	defaultValueAddress TEXT, -- Foreign Key to address table
	defaultValueAge TEXT, -- Foreign Key to age table
	defaultValueAnnotation TEXT, -- Foreign Key to annotation table
	defaultValueAttachment TEXT, -- Foreign Key to attachment table
	defaultValueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	defaultValueCoding TEXT, -- Foreign Key to coding table
	defaultValueContactPoint TEXT, -- Foreign Key to contactPoint table
	defaultValueCount TEXT, -- Foreign Key to count table
	defaultValueDistance TEXT, -- Foreign Key to distance table
	defaultValueDuration TEXT, -- Foreign Key to duration table
	defaultValueHumanName TEXT, -- Foreign Key to humanName table
	defaultValueIdentifier TEXT, -- Foreign Key to identifier table
	defaultValueMoney TEXT, -- Foreign Key to money table
	defaultValuePeriod TEXT, -- Foreign Key to period table
	defaultValueQuantity TEXT, -- Foreign Key to quantity table
	defaultValueRange TEXT, -- Foreign Key to range table
	defaultValueRatio TEXT, -- Foreign Key to ratio table
	defaultValueReference TEXT, -- Foreign Key to reference table
	defaultValueSampledData TEXT, -- Foreign Key to sampledData table
	defaultValueSignature TEXT, -- Foreign Key to signature table
	defaultValueTiming TEXT, -- Foreign Key to timing table
	defaultValueContactDetail TEXT, -- Foreign Key to contactDetail table
	defaultValueContributor TEXT, -- Foreign Key to contributor table
	defaultValueDataRequirement TEXT, -- Foreign Key to dataRequirement table
	defaultValueExpression TEXT, -- Foreign Key to expression table
	defaultValueParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	defaultValueRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	defaultValueTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	defaultValueUsageContext TEXT, -- Foreign Key to usageContext table
	defaultValueDosage TEXT, -- Foreign Key to dosage table
	defaultValueMeta TEXT, -- Foreign Key to meta table
	element TEXT,
	_element TEXT, -- Foreign Key to element table
	listMode TEXT, -- enum: first/not_first/last/not_last/only_one
	_listMode TEXT, -- Foreign Key to element table
	variable TEXT, -- Foreign Key to id table
	_variable TEXT, -- Foreign Key to element table
	"condition" TEXT,
	_condition TEXT, -- Foreign Key to element table
	"check" TEXT,
	_check TEXT, -- Foreign Key to element table
	logMessage TEXT,
	_logMessage TEXT, -- Foreign Key to element table

	FOREIGN KEY (context)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_context)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_min)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_max)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (defaultValueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_element)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_listMode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variable)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_condition)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_check)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_logMessage)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Target(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	context TEXT, -- Foreign Key to id table
	_context TEXT, -- Foreign Key to element table
	contextType TEXT, -- enum: type/variable
	_contextType TEXT, -- Foreign Key to element table
	element TEXT,
	_element TEXT, -- Foreign Key to element table
	variable TEXT, -- Foreign Key to id table
	_variable TEXT, -- Foreign Key to element table
	listMode **LIST** enum, -- first/share/last/collate,
	_listMode **LIST** Element,
	listRuleId TEXT, -- Foreign Key to id table
	_listRuleId TEXT, -- Foreign Key to element table
	transform TEXT, -- enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp
	_transform TEXT, -- Foreign Key to element table
	"parameter" **LIST** StructureMap_Parameter,

	FOREIGN KEY (context)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_context)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contextType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_element)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (variable)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_variable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (listRuleId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_listRuleId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_transform)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE structureMap_Dependent(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT, -- Foreign Key to id table
	_name TEXT, -- Foreign Key to element table
	variable **LIST** string,
	_variable **LIST** Element,

	FOREIGN KEY ("name")
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE subscription(

	resourceType TEXT, -- resourceType: subscription
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"status" TEXT, -- enum: requested/active/error/off
	_status TEXT, -- Foreign Key to element table
	contact **LIST** ContactPoint,
	"end" DATETIME,
	_end TEXT, -- Foreign Key to element table
	reason TEXT,
	_reason TEXT, -- Foreign Key to element table
	criteria TEXT,
	_criteria TEXT, -- Foreign Key to element table
	error TEXT,
	_error TEXT, -- Foreign Key to element table
	channel TEXT, -- Foreign Key to subscription_Channel table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_end)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_reason)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_criteria)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_error)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (channel)
		REFERENCES subscription_Channel (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE subscription_Channel(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: rest-hook/websocket/email/sms/message
	_type TEXT, -- Foreign Key to element table
	"endpoint" TEXT,
	_endpoint TEXT, -- Foreign Key to element table
	payload TEXT,
	_payload TEXT, -- Foreign Key to element table
	header **LIST** string,
	_header **LIST** Element,

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_endpoint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_payload)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substance(

	resourceType TEXT, -- resourceType: substance
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: active/inactive/entered-in-error
	_status TEXT, -- Foreign Key to element table
	category **LIST** CodeableConcept,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"instance" **LIST** Substance_Instance,
	ingredient **LIST** Substance_Ingredient,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substance_Instance(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	expiry DATETIME,
	_expiry TEXT, -- Foreign Key to element table
	quantity TEXT, -- Foreign Key to quantity table

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expiry)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substance_Ingredient(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	quantity TEXT, -- Foreign Key to ratio table
	substanceCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	substanceReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (quantity)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substanceCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substanceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceNucleicAcid(

	resourceType TEXT, -- resourceType: substanceNucleicAcid
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	sequenceType TEXT, -- Foreign Key to codeableConcept table
	numberOfSubunits INTEGER,
	_numberOfSubunits TEXT, -- Foreign Key to element table
	areaOfHybridisation TEXT,
	_areaOfHybridisation TEXT, -- Foreign Key to element table
	oligoNucleotideType TEXT, -- Foreign Key to codeableConcept table
	subunit **LIST** SubstanceNucleicAcid_Subunit,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfSubunits)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_areaOfHybridisation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (oligoNucleotideType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceNucleicAcid_Subunit(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	subunit INTEGER,
	_subunit TEXT, -- Foreign Key to element table
	"sequence" TEXT,
	_sequence TEXT, -- Foreign Key to element table
	"length" INTEGER,
	_length TEXT, -- Foreign Key to element table
	sequenceAttachment TEXT, -- Foreign Key to attachment table
	fivePrime TEXT, -- Foreign Key to codeableConcept table
	threePrime TEXT, -- Foreign Key to codeableConcept table
	linkage **LIST** SubstanceNucleicAcid_Linkage,
	sugar **LIST** SubstanceNucleicAcid_Sugar,

	FOREIGN KEY (_subunit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_length)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (fivePrime)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (threePrime)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceNucleicAcid_Linkage(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	connectivity TEXT,
	_connectivity TEXT, -- Foreign Key to element table
	identifier TEXT, -- Foreign Key to identifier table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	residueSite TEXT,
	_residueSite TEXT, -- Foreign Key to element table

	FOREIGN KEY (_connectivity)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_residueSite)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceNucleicAcid_Sugar(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	residueSite TEXT,
	_residueSite TEXT, -- Foreign Key to element table

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_residueSite)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer(

	resourceType TEXT, -- resourceType: substancePolymer
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	class TEXT, -- Foreign Key to codeableConcept table
	"geometry" TEXT, -- Foreign Key to codeableConcept table
	copolymerConnectivity **LIST** CodeableConcept,
	modification **LIST** string,
	_modification **LIST** Element,
	monomerSet **LIST** SubstancePolymer_MonomerSet,
	"repeat" **LIST** SubstancePolymer_Repeat,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("geometry")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_MonomerSet(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	ratioType TEXT, -- Foreign Key to codeableConcept table
	startingMaterial **LIST** SubstancePolymer_StartingMaterial,

	FOREIGN KEY (ratioType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_StartingMaterial(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	material TEXT, -- Foreign Key to codeableConcept table
	"type" TEXT, -- Foreign Key to codeableConcept table
	isDefining BOOLEAN,
	_isDefining TEXT, -- Foreign Key to element table
	amount TEXT, -- Foreign Key to substanceAmount table

	FOREIGN KEY (material)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isDefining)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES substanceAmount (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_Repeat(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	numberOfUnits INTEGER,
	_numberOfUnits TEXT, -- Foreign Key to element table
	averageMolecularFormula TEXT,
	_averageMolecularFormula TEXT, -- Foreign Key to element table
	repeatUnitAmountType TEXT, -- Foreign Key to codeableConcept table
	repeatUnit **LIST** SubstancePolymer_RepeatUnit,

	FOREIGN KEY (_numberOfUnits)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_averageMolecularFormula)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (repeatUnitAmountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_RepeatUnit(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	orientationOfPolymerisation TEXT, -- Foreign Key to codeableConcept table
	repeatUnit TEXT,
	_repeatUnit TEXT, -- Foreign Key to element table
	amount TEXT, -- Foreign Key to substanceAmount table
	degreeOfPolymerisation **LIST** SubstancePolymer_DegreeOfPolymerisation,
	structuralRepresentation **LIST** SubstancePolymer_StructuralRepresentation,

	FOREIGN KEY (orientationOfPolymerisation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_repeatUnit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES substanceAmount (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_DegreeOfPolymerisation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	degree TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to substanceAmount table

	FOREIGN KEY (degree)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES substanceAmount (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substancePolymer_StructuralRepresentation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	representation TEXT,
	_representation TEXT, -- Foreign Key to element table
	attachment TEXT, -- Foreign Key to attachment table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_representation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceProtein(

	resourceType TEXT, -- resourceType: substanceProtein
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	sequenceType TEXT, -- Foreign Key to codeableConcept table
	numberOfSubunits INTEGER,
	_numberOfSubunits TEXT, -- Foreign Key to element table
	disulfideLinkage **LIST** string,
	_disulfideLinkage **LIST** Element,
	subunit **LIST** SubstanceProtein_Subunit,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_numberOfSubunits)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceProtein_Subunit(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	subunit INTEGER,
	_subunit TEXT, -- Foreign Key to element table
	"sequence" TEXT,
	_sequence TEXT, -- Foreign Key to element table
	"length" INTEGER,
	_length TEXT, -- Foreign Key to element table
	sequenceAttachment TEXT, -- Foreign Key to attachment table
	nTerminalModificationId TEXT, -- Foreign Key to identifier table
	nTerminalModification TEXT,
	_nTerminalModification TEXT, -- Foreign Key to element table
	cTerminalModificationId TEXT, -- Foreign Key to identifier table
	cTerminalModification TEXT,
	_cTerminalModification TEXT, -- Foreign Key to element table

	FOREIGN KEY (_subunit)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sequence)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_length)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sequenceAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nTerminalModificationId)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_nTerminalModification)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (cTerminalModificationId)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cTerminalModification)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation(

	resourceType TEXT, -- resourceType: substanceReferenceInformation
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	gene **LIST** SubstanceReferenceInformation_Gene,
	geneElement **LIST** SubstanceReferenceInformation_GeneElement,
	classification **LIST** SubstanceReferenceInformation_Classification,
	"target" **LIST** SubstanceReferenceInformation_Target,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation_Gene(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	geneSequenceOrigin TEXT, -- Foreign Key to codeableConcept table
	gene TEXT, -- Foreign Key to codeableConcept table
	"source" **LIST** Reference,

	FOREIGN KEY (geneSequenceOrigin)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (gene)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation_GeneElement(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	element TEXT, -- Foreign Key to identifier table
	"source" **LIST** Reference,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (element)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation_Classification(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"domain" TEXT, -- Foreign Key to codeableConcept table
	classification TEXT, -- Foreign Key to codeableConcept table
	subtype **LIST** CodeableConcept,
	"source" **LIST** Reference,

	FOREIGN KEY ("domain")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (classification)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceReferenceInformation_Target(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"target" TEXT, -- Foreign Key to identifier table
	"type" TEXT, -- Foreign Key to codeableConcept table
	interaction TEXT, -- Foreign Key to codeableConcept table
	organism TEXT, -- Foreign Key to codeableConcept table
	organismType TEXT, -- Foreign Key to codeableConcept table
	amountQuantity TEXT, -- Foreign Key to quantity table
	amountRange TEXT, -- Foreign Key to range table
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString TEXT, -- Foreign Key to element table
	amountType TEXT, -- Foreign Key to codeableConcept table
	"source" **LIST** Reference,

	FOREIGN KEY ("target")
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (interaction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organism)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organismType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial(

	resourceType TEXT, -- resourceType: substanceSourceMaterial
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	sourceMaterialClass TEXT, -- Foreign Key to codeableConcept table
	sourceMaterialType TEXT, -- Foreign Key to codeableConcept table
	sourceMaterialState TEXT, -- Foreign Key to codeableConcept table
	organismId TEXT, -- Foreign Key to identifier table
	organismName TEXT,
	_organismName TEXT, -- Foreign Key to element table
	parentSubstanceId **LIST** Identifier,
	parentSubstanceName **LIST** string,
	_parentSubstanceName **LIST** Element,
	countryOfOrigin **LIST** CodeableConcept,
	geographicalLocation **LIST** string,
	_geographicalLocation **LIST** Element,
	developmentStage TEXT, -- Foreign Key to codeableConcept table
	fractionDescription **LIST** SubstanceSourceMaterial_FractionDescription,
	organism TEXT, -- Foreign Key to substanceSourceMaterial_Organism table
	partDescription **LIST** SubstanceSourceMaterial_PartDescription,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterialClass)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterialType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterialState)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organismId)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_organismName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (developmentStage)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organism)
		REFERENCES substanceSourceMaterial_Organism (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_FractionDescription(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	fraction TEXT,
	_fraction TEXT, -- Foreign Key to element table
	materialType TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_fraction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (materialType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_Organism(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	family TEXT, -- Foreign Key to codeableConcept table
	genus TEXT, -- Foreign Key to codeableConcept table
	species TEXT, -- Foreign Key to codeableConcept table
	intraspecificType TEXT, -- Foreign Key to codeableConcept table
	intraspecificDescription TEXT,
	_intraspecificDescription TEXT, -- Foreign Key to element table
	author **LIST** SubstanceSourceMaterial_Author,
	hybrid TEXT, -- Foreign Key to substanceSourceMaterial_Hybrid table
	organismGeneral TEXT, -- Foreign Key to substanceSourceMaterial_OrganismGeneral table

	FOREIGN KEY (family)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (genus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (species)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (intraspecificType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intraspecificDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hybrid)
		REFERENCES substanceSourceMaterial_Hybrid (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (organismGeneral)
		REFERENCES substanceSourceMaterial_OrganismGeneral (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_Author(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	authorType TEXT, -- Foreign Key to codeableConcept table
	authorDescription TEXT,
	_authorDescription TEXT, -- Foreign Key to element table

	FOREIGN KEY (authorType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authorDescription)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_Hybrid(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	maternalOrganismId TEXT,
	_maternalOrganismId TEXT, -- Foreign Key to element table
	maternalOrganismName TEXT,
	_maternalOrganismName TEXT, -- Foreign Key to element table
	paternalOrganismId TEXT,
	_paternalOrganismId TEXT, -- Foreign Key to element table
	paternalOrganismName TEXT,
	_paternalOrganismName TEXT, -- Foreign Key to element table
	hybridType TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (_maternalOrganismId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_maternalOrganismName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paternalOrganismId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paternalOrganismName)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (hybridType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_OrganismGeneral(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	kingdom TEXT, -- Foreign Key to codeableConcept table
	phylum TEXT, -- Foreign Key to codeableConcept table
	class TEXT, -- Foreign Key to codeableConcept table
	"order" TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (kingdom)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (phylum)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (class)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("order")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSourceMaterial_PartDescription(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	part TEXT, -- Foreign Key to codeableConcept table
	partLocation TEXT, -- Foreign Key to codeableConcept table

	FOREIGN KEY (part)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (partLocation)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification(

	resourceType TEXT, -- resourceType: substanceSpecification
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- Foreign Key to codeableConcept table
	"domain" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"source" **LIST** Reference,
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	moiety **LIST** SubstanceSpecification_Moiety,
	property **LIST** SubstanceSpecification_Property,
	referenceInformation TEXT, -- Foreign Key to reference table
	"structure" TEXT, -- Foreign Key to substanceSpecification_Structure table
	"code" **LIST** SubstanceSpecification_Code,
	"name" **LIST** SubstanceSpecification_Name,
	molecularWeight **LIST** SubstanceSpecification_MolecularWeight,
	relationship **LIST** SubstanceSpecification_Relationship,
	nucleicAcid TEXT, -- Foreign Key to reference table
	polymer TEXT, -- Foreign Key to reference table
	protein TEXT, -- Foreign Key to reference table
	sourceMaterial TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("domain")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (referenceInformation)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("structure")
		REFERENCES substanceSpecification_Structure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (nucleicAcid)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (polymer)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (protein)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceMaterial)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Moiety(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"role" TEXT, -- Foreign Key to codeableConcept table
	identifier TEXT, -- Foreign Key to identifier table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	stereochemistry TEXT, -- Foreign Key to codeableConcept table
	opticalActivity TEXT, -- Foreign Key to codeableConcept table
	molecularFormula TEXT,
	_molecularFormula TEXT, -- Foreign Key to element table
	amountQuantity TEXT, -- Foreign Key to quantity table
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString TEXT, -- Foreign Key to element table

	FOREIGN KEY ("role")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (stereochemistry)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (opticalActivity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_molecularFormula)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Property(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	category TEXT, -- Foreign Key to codeableConcept table
	"code" TEXT, -- Foreign Key to codeableConcept table
	parameters TEXT,
	_parameters TEXT, -- Foreign Key to element table
	definingSubstanceReference TEXT, -- Foreign Key to reference table
	definingSubstanceCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	amountQuantity TEXT, -- Foreign Key to quantity table
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString TEXT, -- Foreign Key to element table

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_parameters)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definingSubstanceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (definingSubstanceCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Structure(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	stereochemistry TEXT, -- Foreign Key to codeableConcept table
	opticalActivity TEXT, -- Foreign Key to codeableConcept table
	molecularFormula TEXT,
	_molecularFormula TEXT, -- Foreign Key to element table
	molecularFormulaByMoiety TEXT,
	_molecularFormulaByMoiety TEXT, -- Foreign Key to element table
	isotope **LIST** SubstanceSpecification_Isotope,
	molecularWeight TEXT, -- Foreign Key to substanceSpecification_MolecularWeight table
	"source" **LIST** Reference,
	representation **LIST** SubstanceSpecification_Representation,

	FOREIGN KEY (stereochemistry)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (opticalActivity)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_molecularFormula)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_molecularFormulaByMoiety)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (molecularWeight)
		REFERENCES substanceSpecification_MolecularWeight (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Isotope(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"name" TEXT, -- Foreign Key to codeableConcept table
	substitution TEXT, -- Foreign Key to codeableConcept table
	halfLife TEXT, -- Foreign Key to quantity table
	molecularWeight TEXT, -- Foreign Key to substanceSpecification_MolecularWeight table

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("name")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substitution)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (halfLife)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (molecularWeight)
		REFERENCES substanceSpecification_MolecularWeight (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_MolecularWeight(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"method" TEXT, -- Foreign Key to codeableConcept table
	"type" TEXT, -- Foreign Key to codeableConcept table
	amount TEXT, -- Foreign Key to quantity table

	FOREIGN KEY ("method")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amount)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Representation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	representation TEXT,
	_representation TEXT, -- Foreign Key to element table
	attachment TEXT, -- Foreign Key to attachment table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_representation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Code(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- Foreign Key to codeableConcept table
	statusDate DATETIME,
	_statusDate TEXT, -- Foreign Key to element table
	comment TEXT,
	_comment TEXT, -- Foreign Key to element table
	"source" **LIST** Reference,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_comment)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Name(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"type" TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- Foreign Key to codeableConcept table
	preferred BOOLEAN,
	_preferred TEXT, -- Foreign Key to element table
	"language" **LIST** CodeableConcept,
	"domain" **LIST** CodeableConcept,
	jurisdiction **LIST** CodeableConcept,
	"synonym" **LIST** SubstanceSpecification_Name,
	"translation" **LIST** SubstanceSpecification_Name,
	official **LIST** SubstanceSpecification_Official,
	"source" **LIST** Reference,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_preferred)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Official(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	authority TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT, -- Foreign Key to codeableConcept table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table

	FOREIGN KEY (authority)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("status")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE substanceSpecification_Relationship(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	substanceReference TEXT, -- Foreign Key to reference table
	substanceCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	relationship TEXT, -- Foreign Key to codeableConcept table
	isDefining BOOLEAN,
	_isDefining TEXT, -- Foreign Key to element table
	amountQuantity TEXT, -- Foreign Key to quantity table
	amountRange TEXT, -- Foreign Key to range table
	amountRatio TEXT, -- Foreign Key to ratio table
	amountString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_amountString TEXT, -- Foreign Key to element table
	amountRatioLowLimit TEXT, -- Foreign Key to ratio table
	amountType TEXT, -- Foreign Key to codeableConcept table
	"source" **LIST** Reference,

	FOREIGN KEY (substanceReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (substanceCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (relationship)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isDefining)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_amountString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountRatioLowLimit)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (amountType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE supplyDelivery(

	resourceType TEXT, -- resourceType: supplyDelivery
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	basedOn **LIST** Reference,
	partOf **LIST** Reference,
	"status" TEXT, -- enum: in-progress/completed/abandoned/entered-in-error
	_status TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	"type" TEXT, -- Foreign Key to codeableConcept table
	suppliedItem TEXT, -- Foreign Key to supplyDelivery_SuppliedItem table
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	occurrenceTiming TEXT, -- Foreign Key to timing table
	supplier TEXT, -- Foreign Key to reference table
	destination TEXT, -- Foreign Key to reference table
	receiver **LIST** Reference,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (suppliedItem)
		REFERENCES supplyDelivery_SuppliedItem (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (supplier)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (destination)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE supplyDelivery_SuppliedItem(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	quantity TEXT, -- Foreign Key to quantity table
	itemCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	itemReference TEXT, -- Foreign Key to reference table

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE supplyRequest(

	resourceType TEXT, -- resourceType: supplyRequest
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT, -- enum: draft/active/suspended/cancelled/completed/entered-in-error/unknown
	_status TEXT, -- Foreign Key to element table
	category TEXT, -- Foreign Key to codeableConcept table
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	itemCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	itemReference TEXT, -- Foreign Key to reference table
	quantity TEXT, -- Foreign Key to quantity table
	"parameter" **LIST** SupplyRequest_Parameter,
	occurrenceDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_occurrenceDateTime TEXT, -- Foreign Key to element table
	occurrencePeriod TEXT, -- Foreign Key to period table
	occurrenceTiming TEXT, -- Foreign Key to timing table
	authoredOn DATETIME,
	_authoredOn TEXT, -- Foreign Key to element table
	requester TEXT, -- Foreign Key to reference table
	supplier **LIST** Reference,
	reasonCode **LIST** CodeableConcept,
	reasonReference **LIST** Reference,
	deliverFrom TEXT, -- Foreign Key to reference table
	deliverTo TEXT, -- Foreign Key to reference table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (category)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (itemReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (quantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_occurrenceDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrencePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (occurrenceTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deliverFrom)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (deliverTo)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE supplyRequest_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT, -- Foreign Key to codeableConcept table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE task(

	resourceType TEXT, -- resourceType: task
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	instantiatesCanonical TEXT,
	instantiatesUri TEXT,
	_instantiatesUri TEXT, -- Foreign Key to element table
	basedOn **LIST** Reference,
	groupIdentifier TEXT, -- Foreign Key to identifier table
	partOf **LIST** Reference,
	"status" TEXT, -- enum: draft/requested/received/accepted/rejected/ready/cancelled/in-progress/on-hold/failed/completed/entered-in-error
	_status TEXT, -- Foreign Key to element table
	statusReason TEXT, -- Foreign Key to codeableConcept table
	businessStatus TEXT, -- Foreign Key to codeableConcept table
	intent TEXT, -- enum: unknown/proposal/plan/order/original-order/reflex-order/filler-order/instance-order/option
	_intent TEXT, -- Foreign Key to element table
	"priority" TEXT,
	_priority TEXT, -- Foreign Key to element table
	"code" TEXT, -- Foreign Key to codeableConcept table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	focus TEXT, -- Foreign Key to reference table
	"for" TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	executionPeriod TEXT, -- Foreign Key to period table
	authoredOn DATETIME,
	_authoredOn TEXT, -- Foreign Key to element table
	lastModified DATETIME,
	_lastModified TEXT, -- Foreign Key to element table
	requester TEXT, -- Foreign Key to reference table
	performerType **LIST** CodeableConcept,
	"owner" TEXT, -- Foreign Key to reference table
	"location" TEXT, -- Foreign Key to reference table
	reasonCode TEXT, -- Foreign Key to codeableConcept table
	reasonReference TEXT, -- Foreign Key to reference table
	insurance **LIST** Reference,
	note **LIST** Annotation,
	relevantHistory **LIST** Reference,
	restriction TEXT, -- Foreign Key to task_Restriction table
	"input" **LIST** Task_Input,
	"output" **LIST** Task_Output,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_instantiatesUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (groupIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (statusReason)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (businessStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_intent)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_priority)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("code")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (focus)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("for")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (executionPeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_authoredOn)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastModified)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requester)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("owner")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("location")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonCode)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (reasonReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (restriction)
		REFERENCES task_Restriction (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE task_Restriction(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	repetitions INTEGER,
	_repetitions TEXT, -- Foreign Key to element table
	"period" TEXT, -- Foreign Key to period table
	recipient **LIST** Reference,

	FOREIGN KEY (_repetitions)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("period")
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE task_Input(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical TEXT, -- Foreign Key to element table
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId TEXT, -- Foreign Key to element table
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown TEXT, -- Foreign Key to element table
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid TEXT, -- Foreign Key to element table
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl TEXT, -- Foreign Key to element table
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid TEXT, -- Foreign Key to element table
	valueAddress TEXT, -- Foreign Key to address table
	valueAge TEXT, -- Foreign Key to age table
	valueAnnotation TEXT, -- Foreign Key to annotation table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueCoding TEXT, -- Foreign Key to coding table
	valueContactPoint TEXT, -- Foreign Key to contactPoint table
	valueCount TEXT, -- Foreign Key to count table
	valueDistance TEXT, -- Foreign Key to distance table
	valueDuration TEXT, -- Foreign Key to duration table
	valueHumanName TEXT, -- Foreign Key to humanName table
	valueIdentifier TEXT, -- Foreign Key to identifier table
	valueMoney TEXT, -- Foreign Key to money table
	valuePeriod TEXT, -- Foreign Key to period table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueRatio TEXT, -- Foreign Key to ratio table
	valueReference TEXT, -- Foreign Key to reference table
	valueSampledData TEXT, -- Foreign Key to sampledData table
	valueSignature TEXT, -- Foreign Key to signature table
	valueTiming TEXT, -- Foreign Key to timing table
	valueContactDetail TEXT, -- Foreign Key to contactDetail table
	valueContributor TEXT, -- Foreign Key to contributor table
	valueDataRequirement TEXT, -- Foreign Key to dataRequirement table
	valueExpression TEXT, -- Foreign Key to expression table
	valueParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	valueRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	valueTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	valueUsageContext TEXT, -- Foreign Key to usageContext table
	valueDosage TEXT, -- Foreign Key to dosage table
	valueMeta TEXT, -- Foreign Key to meta table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE task_Output(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to codeableConcept table
	valueBase64Binary TEXT, -- pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
	_valueBase64Binary TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueCanonical TEXT, -- pattern: ^\S*$
	_valueCanonical TEXT, -- Foreign Key to element table
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode TEXT, -- Foreign Key to element table
	valueDate TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
	_valueDate TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueId TEXT, -- pattern: ^[A-Za-z0-9\-\.]{1,64}$
	_valueId TEXT, -- Foreign Key to element table
	valueInstant TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
	_valueInstant TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueMarkdown TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueMarkdown TEXT, -- Foreign Key to element table
	valueOid TEXT, -- pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
	_valueOid TEXT, -- Foreign Key to element table
	valuePositiveInt REAL, -- pattern: ^[1-9][0-9]*$
	_valuePositiveInt TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueTime TEXT, -- pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
	_valueTime TEXT, -- Foreign Key to element table
	valueUnsignedInt REAL, -- pattern: ^[0]|([1-9][0-9]*)$
	_valueUnsignedInt TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueUrl TEXT, -- pattern: ^\S*$
	_valueUrl TEXT, -- Foreign Key to element table
	valueUuid TEXT, -- pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
	_valueUuid TEXT, -- Foreign Key to element table
	valueAddress TEXT, -- Foreign Key to address table
	valueAge TEXT, -- Foreign Key to age table
	valueAnnotation TEXT, -- Foreign Key to annotation table
	valueAttachment TEXT, -- Foreign Key to attachment table
	valueCodeableConcept TEXT, -- Foreign Key to codeableConcept table
	valueCoding TEXT, -- Foreign Key to coding table
	valueContactPoint TEXT, -- Foreign Key to contactPoint table
	valueCount TEXT, -- Foreign Key to count table
	valueDistance TEXT, -- Foreign Key to distance table
	valueDuration TEXT, -- Foreign Key to duration table
	valueHumanName TEXT, -- Foreign Key to humanName table
	valueIdentifier TEXT, -- Foreign Key to identifier table
	valueMoney TEXT, -- Foreign Key to money table
	valuePeriod TEXT, -- Foreign Key to period table
	valueQuantity TEXT, -- Foreign Key to quantity table
	valueRange TEXT, -- Foreign Key to range table
	valueRatio TEXT, -- Foreign Key to ratio table
	valueReference TEXT, -- Foreign Key to reference table
	valueSampledData TEXT, -- Foreign Key to sampledData table
	valueSignature TEXT, -- Foreign Key to signature table
	valueTiming TEXT, -- Foreign Key to timing table
	valueContactDetail TEXT, -- Foreign Key to contactDetail table
	valueContributor TEXT, -- Foreign Key to contributor table
	valueDataRequirement TEXT, -- Foreign Key to dataRequirement table
	valueExpression TEXT, -- Foreign Key to expression table
	valueParameterDefinition TEXT, -- Foreign Key to parameterDefinition table
	valueRelatedArtifact TEXT, -- Foreign Key to relatedArtifact table
	valueTriggerDefinition TEXT, -- Foreign Key to triggerDefinition table
	valueUsageContext TEXT, -- Foreign Key to usageContext table
	valueDosage TEXT, -- Foreign Key to dosage table
	valueMeta TEXT, -- Foreign Key to meta table

	FOREIGN KEY ("type")
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBase64Binary)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCanonical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInstant)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueMarkdown)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueOid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valuePositiveInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUnsignedInt)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUuid)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAddress)
		REFERENCES address (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAge)
		REFERENCES age (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAnnotation)
		REFERENCES annotation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueAttachment)
		REFERENCES attachment (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCodeableConcept)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCoding)
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactPoint)
		REFERENCES contactPoint (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueCount)
		REFERENCES count (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDistance)
		REFERENCES distance (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDuration)
		REFERENCES duration (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueHumanName)
		REFERENCES humanName (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueIdentifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMoney)
		REFERENCES money (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valuePeriod)
		REFERENCES period (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueQuantity)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRange)
		REFERENCES range (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRatio)
		REFERENCES ratio (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueReference)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSampledData)
		REFERENCES sampledData (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTiming)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContactDetail)
		REFERENCES contactDetail (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueContributor)
		REFERENCES contributor (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDataRequirement)
		REFERENCES dataRequirement (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueExpression)
		REFERENCES expression (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueParameterDefinition)
		REFERENCES parameterDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueRelatedArtifact)
		REFERENCES relatedArtifact (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueTriggerDefinition)
		REFERENCES triggerDefinition (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueUsageContext)
		REFERENCES usageContext (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueDosage)
		REFERENCES dosage (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (valueMeta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities(

	resourceType TEXT, -- resourceType: terminologyCapabilities
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	kind TEXT,
	_kind TEXT, -- Foreign Key to element table
	software TEXT, -- Foreign Key to terminologyCapabilities_Software table
	"implementation" TEXT, -- Foreign Key to terminologyCapabilities_Implementation table
	lockedDate BOOLEAN,
	_lockedDate TEXT, -- Foreign Key to element table
	codeSystem **LIST** TerminologyCapabilities_CodeSystem,
	expansion TEXT, -- Foreign Key to terminologyCapabilities_Expansion table
	codeSearch TEXT, -- enum: explicit/all
	_codeSearch TEXT, -- Foreign Key to element table
	validateCode TEXT, -- Foreign Key to terminologyCapabilities_ValidateCode table
	"translation" TEXT, -- Foreign Key to terminologyCapabilities_Translation table
	closure TEXT, -- Foreign Key to terminologyCapabilities_Closure table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_kind)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (software)
		REFERENCES terminologyCapabilities_Software (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("implementation")
		REFERENCES terminologyCapabilities_Implementation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lockedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expansion)
		REFERENCES terminologyCapabilities_Expansion (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_codeSearch)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validateCode)
		REFERENCES terminologyCapabilities_ValidateCode (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("translation")
		REFERENCES terminologyCapabilities_Translation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (closure)
		REFERENCES terminologyCapabilities_Closure (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Software(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Implementation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_CodeSystem(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	uri TEXT,
	"version" **LIST** TerminologyCapabilities_Version,
	subsumption BOOLEAN,
	_subsumption TEXT, -- Foreign Key to element table

	FOREIGN KEY (_subsumption)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Version(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	isDefault BOOLEAN,
	_isDefault TEXT, -- Foreign Key to element table
	compositional BOOLEAN,
	_compositional TEXT, -- Foreign Key to element table
	"language" **LIST** code,
	_language **LIST** Element,
	"filter" **LIST** TerminologyCapabilities_Filter,
	property **LIST** code,
	_property **LIST** Element,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_isDefault)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_compositional)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Filter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	op **LIST** code,
	_op **LIST** Element,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Expansion(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	hierarchical BOOLEAN,
	_hierarchical TEXT, -- Foreign Key to element table
	paging BOOLEAN,
	_paging TEXT, -- Foreign Key to element table
	incomplete BOOLEAN,
	_incomplete TEXT, -- Foreign Key to element table
	"parameter" **LIST** TerminologyCapabilities_Parameter,
	textFilter TEXT,
	_textFilter TEXT, -- Foreign Key to element table

	FOREIGN KEY (_hierarchical)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_paging)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_incomplete)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_textFilter)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	documentation TEXT,
	_documentation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_documentation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_ValidateCode(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	translations BOOLEAN,
	_translations TEXT, -- Foreign Key to element table

	FOREIGN KEY (_translations)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Translation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	needsMap BOOLEAN,
	_needsMap TEXT, -- Foreign Key to element table

	FOREIGN KEY (_needsMap)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE terminologyCapabilities_Closure(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"translation" BOOLEAN,
	_translation TEXT, -- Foreign Key to element table

	FOREIGN KEY (_translation)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport(

	resourceType TEXT, -- resourceType: testReport
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT, -- Foreign Key to identifier table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: completed/in-progress/waiting/stopped/entered-in-error
	_status TEXT, -- Foreign Key to element table
	testScript TEXT, -- Foreign Key to reference table
	"result" TEXT, -- enum: pass/fail/pending
	_result TEXT, -- Foreign Key to element table
	score REAL,
	_score TEXT, -- Foreign Key to element table
	tester TEXT,
	_tester TEXT, -- Foreign Key to element table
	issued DATETIME,
	_issued TEXT, -- Foreign Key to element table
	participant **LIST** TestReport_Participant,
	setup TEXT, -- Foreign Key to testReport_Setup table
	test **LIST** TestReport_Test,
	teardown TEXT, -- Foreign Key to testReport_Teardown table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (testScript)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_result)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_score)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_tester)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_issued)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (setup)
		REFERENCES testReport_Setup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (teardown)
		REFERENCES testReport_Teardown (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Participant(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- enum: test-engine/client/server
	_type TEXT, -- Foreign Key to element table
	uri TEXT,
	_uri TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table

	FOREIGN KEY (_type)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_uri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Setup(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"action" **LIST** TestReport_Action

);

CREATE TABLE testReport_Action(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	operation TEXT, -- Foreign Key to testReport_Operation table
	assert TEXT, -- Foreign Key to testReport_Assert table

	FOREIGN KEY (operation)
		REFERENCES testReport_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assert)
		REFERENCES testReport_Assert (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Operation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"result" TEXT, -- enum: pass/skip/fail/warning/error
	_result TEXT, -- Foreign Key to element table
	"message" TEXT,
	_message TEXT, -- Foreign Key to element table
	detail TEXT,
	_detail TEXT, -- Foreign Key to element table

	FOREIGN KEY (_result)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_message)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detail)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Assert(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"result" TEXT, -- enum: pass/skip/fail/warning/error
	_result TEXT, -- Foreign Key to element table
	"message" TEXT,
	_message TEXT, -- Foreign Key to element table
	detail TEXT,
	_detail TEXT, -- Foreign Key to element table

	FOREIGN KEY (_result)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_message)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_detail)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Test(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"action" **LIST** TestReport_Action1,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Action1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	operation TEXT, -- Foreign Key to testReport_Operation table
	assert TEXT, -- Foreign Key to testReport_Assert table

	FOREIGN KEY (operation)
		REFERENCES testReport_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assert)
		REFERENCES testReport_Assert (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testReport_Teardown(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"action" **LIST** TestReport_Action2

);

CREATE TABLE testReport_Action2(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	operation TEXT, -- Foreign Key to testReport_Operation table

	FOREIGN KEY (operation)
		REFERENCES testReport_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript(

	resourceType TEXT, -- resourceType: testScript
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier TEXT, -- Foreign Key to identifier table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	origin **LIST** TestScript_Origin,
	destination **LIST** TestScript_Destination,
	metadata TEXT, -- Foreign Key to testScript_Metadata table
	fixture **LIST** TestScript_Fixture,
	"profile" **LIST** Reference,
	variable **LIST** TestScript_Variable,
	setup TEXT, -- Foreign Key to testScript_Setup table
	test **LIST** TestScript_Test,
	teardown TEXT, -- Foreign Key to testScript_Teardown table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (identifier)
		REFERENCES identifier (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (metadata)
		REFERENCES testScript_Metadata (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (setup)
		REFERENCES testScript_Setup (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (teardown)
		REFERENCES testScript_Teardown (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Origin(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"index" INTEGER,
	_index TEXT, -- Foreign Key to element table
	"profile" TEXT, -- Foreign Key to coding table

	FOREIGN KEY (_index)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("profile")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Destination(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"index" INTEGER,
	_index TEXT, -- Foreign Key to element table
	"profile" TEXT, -- Foreign Key to coding table

	FOREIGN KEY (_index)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("profile")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Metadata(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	link **LIST** TestScript_Link,
	capability **LIST** TestScript_Capability

);

CREATE TABLE testScript_Link(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Capability(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"required" BOOLEAN,
	_required TEXT, -- Foreign Key to element table
	validated BOOLEAN,
	_validated TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	origin **LIST** integer,
	_origin **LIST** Element,
	destination INTEGER,
	_destination TEXT, -- Foreign Key to element table
	link **LIST** uri,
	_link **LIST** Element,
	capabilities TEXT,

	FOREIGN KEY (_required)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_validated)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_destination)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Fixture(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	autocreate BOOLEAN,
	_autocreate TEXT, -- Foreign Key to element table
	autodelete BOOLEAN,
	_autodelete TEXT, -- Foreign Key to element table
	"resource" TEXT, -- Foreign Key to reference table

	FOREIGN KEY (_autocreate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_autodelete)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("resource")
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Variable(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	defaultValue TEXT,
	_defaultValue TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table
	headerField TEXT,
	_headerField TEXT, -- Foreign Key to element table
	hint TEXT,
	_hint TEXT, -- Foreign Key to element table
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	sourceId TEXT, -- Foreign Key to id table
	_sourceId TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_defaultValue)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_headerField)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_hint)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Setup(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"action" **LIST** TestScript_Action

);

CREATE TABLE testScript_Action(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	operation TEXT, -- Foreign Key to testScript_Operation table
	assert TEXT, -- Foreign Key to testScript_Assert table

	FOREIGN KEY (operation)
		REFERENCES testScript_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assert)
		REFERENCES testScript_Assert (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Operation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"type" TEXT, -- Foreign Key to coding table
	"resource" TEXT,
	_resource TEXT, -- Foreign Key to element table
	label TEXT,
	_label TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	accept TEXT,
	_accept TEXT, -- Foreign Key to element table
	contentType TEXT,
	_contentType TEXT, -- Foreign Key to element table
	destination INTEGER,
	_destination TEXT, -- Foreign Key to element table
	encodeRequestUrl BOOLEAN,
	_encodeRequestUrl TEXT, -- Foreign Key to element table
	"method" TEXT, -- enum: delete/get/options/patch/post/put/head
	_method TEXT, -- Foreign Key to element table
	origin INTEGER,
	_origin TEXT, -- Foreign Key to element table
	params TEXT,
	_params TEXT, -- Foreign Key to element table
	requestHeader **LIST** TestScript_RequestHeader,
	requestId TEXT, -- Foreign Key to id table
	_requestId TEXT, -- Foreign Key to element table
	responseId TEXT, -- Foreign Key to id table
	_responseId TEXT, -- Foreign Key to element table
	sourceId TEXT, -- Foreign Key to id table
	_sourceId TEXT, -- Foreign Key to element table
	targetId TEXT, -- Foreign Key to id table
	_targetId TEXT, -- Foreign Key to element table
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table

	FOREIGN KEY ("type")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resource)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_accept)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_destination)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_encodeRequestUrl)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_method)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_origin)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_params)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (requestId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requestId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (responseId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responseId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (targetId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_targetId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_RequestHeader(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	field TEXT,
	_field TEXT, -- Foreign Key to element table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (_field)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Assert(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	label TEXT,
	_label TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	direction TEXT, -- enum: response/request
	_direction TEXT, -- Foreign Key to element table
	compareToSourceId TEXT,
	_compareToSourceId TEXT, -- Foreign Key to element table
	compareToSourceExpression TEXT,
	_compareToSourceExpression TEXT, -- Foreign Key to element table
	compareToSourcePath TEXT,
	_compareToSourcePath TEXT, -- Foreign Key to element table
	contentType TEXT,
	_contentType TEXT, -- Foreign Key to element table
	expression TEXT,
	_expression TEXT, -- Foreign Key to element table
	headerField TEXT,
	_headerField TEXT, -- Foreign Key to element table
	minimumId TEXT,
	_minimumId TEXT, -- Foreign Key to element table
	navigationLinks BOOLEAN,
	_navigationLinks TEXT, -- Foreign Key to element table
	operator TEXT, -- enum: equals/notEquals/in/notIn/greaterThan/lessThan/empty/notEmpty/contains/notContains/eval
	_operator TEXT, -- Foreign Key to element table
	"path" TEXT,
	_path TEXT, -- Foreign Key to element table
	requestMethod TEXT, -- enum: delete/get/options/patch/post/put/head
	_requestMethod TEXT, -- Foreign Key to element table
	requestURL TEXT,
	_requestURL TEXT, -- Foreign Key to element table
	"resource" TEXT,
	_resource TEXT, -- Foreign Key to element table
	response TEXT, -- enum: okay/created/noContent/notModified/bad/forbidden/notFound/methodNotAllowed/conflict/gone/preconditionFailed/unprocessable
	_response TEXT, -- Foreign Key to element table
	responseCode TEXT,
	_responseCode TEXT, -- Foreign Key to element table
	sourceId TEXT, -- Foreign Key to id table
	_sourceId TEXT, -- Foreign Key to element table
	validateProfileId TEXT, -- Foreign Key to id table
	_validateProfileId TEXT, -- Foreign Key to element table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table
	warningOnly BOOLEAN,
	_warningOnly TEXT, -- Foreign Key to element table

	FOREIGN KEY (_label)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_direction)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_compareToSourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_compareToSourceExpression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_compareToSourcePath)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_contentType)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_expression)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_headerField)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_minimumId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_navigationLinks)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_operator)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_path)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requestMethod)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_requestURL)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_resource)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_response)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_responseCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validateProfileId)
		REFERENCES id (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_validateProfileId)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_warningOnly)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Test(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	"action" **LIST** TestScript_Action1,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Action1(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	operation TEXT, -- Foreign Key to testScript_Operation table
	assert TEXT, -- Foreign Key to testScript_Assert table

	FOREIGN KEY (operation)
		REFERENCES testScript_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (assert)
		REFERENCES testScript_Assert (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE testScript_Teardown(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"action" **LIST** TestScript_Action2

);

CREATE TABLE testScript_Action2(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	operation TEXT, -- Foreign Key to testScript_Operation table

	FOREIGN KEY (operation)
		REFERENCES testScript_Operation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet(

	resourceType TEXT, -- resourceType: valueSet
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"url" TEXT,
	_url TEXT, -- Foreign Key to element table
	identifier **LIST** Identifier,
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	title TEXT,
	_title TEXT, -- Foreign Key to element table
	"status" TEXT, -- enum: draft/active/retired/unknown
	_status TEXT, -- Foreign Key to element table
	experimental BOOLEAN,
	_experimental TEXT, -- Foreign Key to element table
	"date" DATETIME,
	_date TEXT, -- Foreign Key to element table
	publisher TEXT,
	_publisher TEXT, -- Foreign Key to element table
	contact **LIST** ContactDetail,
	"description" TEXT,
	_description TEXT, -- Foreign Key to element table
	useContext **LIST** UsageContext,
	jurisdiction **LIST** CodeableConcept,
	immutable BOOLEAN,
	_immutable TEXT, -- Foreign Key to element table
	purpose TEXT,
	_purpose TEXT, -- Foreign Key to element table
	copyright TEXT,
	_copyright TEXT, -- Foreign Key to element table
	compose TEXT, -- Foreign Key to valueSet_Compose table
	expansion TEXT, -- Foreign Key to valueSet_Expansion table

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_url)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_title)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_experimental)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_publisher)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_description)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_immutable)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_purpose)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_copyright)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (compose)
		REFERENCES valueSet_Compose (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (expansion)
		REFERENCES valueSet_Expansion (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Compose(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	lockedDate DATE,
	_lockedDate TEXT, -- Foreign Key to element table
	inactive BOOLEAN,
	_inactive TEXT, -- Foreign Key to element table
	"include" **LIST** ValueSet_Include,
	exclude **LIST** ValueSet_Include,

	FOREIGN KEY (_lockedDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_inactive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Include(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	concept **LIST** ValueSet_Concept,
	"filter" **LIST** ValueSet_Filter,
	valueSet **LIST** canonical,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Concept(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	designation **LIST** ValueSet_Designation,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Designation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"use" TEXT, -- Foreign Key to coding table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("use")
		REFERENCES coding (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Filter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	property TEXT,
	_property TEXT, -- Foreign Key to element table
	op TEXT, -- enum: =/is-a/descendent-of/is-not-a/regex/in/not-in/generalizes/exists
	_op TEXT, -- Foreign Key to element table
	"value" TEXT,
	_value TEXT, -- Foreign Key to element table

	FOREIGN KEY (_property)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_op)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_value)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Expansion(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier TEXT,
	_identifier TEXT, -- Foreign Key to element table
	"timestamp" DATETIME,
	_timestamp TEXT, -- Foreign Key to element table
	total INTEGER,
	_total TEXT, -- Foreign Key to element table
	offset INTEGER,
	_offset TEXT, -- Foreign Key to element table
	"parameter" **LIST** ValueSet_Parameter,
	"contains" **LIST** ValueSet_Contains,

	FOREIGN KEY (_identifier)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_timestamp)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_total)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_offset)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Parameter(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"name" TEXT,
	_name TEXT, -- Foreign Key to element table
	valueString TEXT, -- pattern: ^[ \r\n\t\S]+$
	_valueString TEXT, -- Foreign Key to element table
	valueBoolean BOOLEAN, -- pattern: ^true|false$
	_valueBoolean TEXT, -- Foreign Key to element table
	valueInteger REAL, -- pattern: ^-?([0]|([1-9][0-9]*))$
	_valueInteger TEXT, -- Foreign Key to element table
	valueDecimal REAL, -- pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
	_valueDecimal TEXT, -- Foreign Key to element table
	valueUri TEXT, -- pattern: ^\S*$
	_valueUri TEXT, -- Foreign Key to element table
	valueCode TEXT, -- pattern: ^[^\s]+(\s[^\s]+)*$
	_valueCode TEXT, -- Foreign Key to element table
	valueDateTime TEXT, -- pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
	_valueDateTime TEXT, -- Foreign Key to element table

	FOREIGN KEY (_name)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueString)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueBoolean)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueInteger)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDecimal)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueUri)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueCode)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_valueDateTime)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE valueSet_Contains(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"system" TEXT,
	_system TEXT, -- Foreign Key to element table
	abstract BOOLEAN,
	_abstract TEXT, -- Foreign Key to element table
	inactive BOOLEAN,
	_inactive TEXT, -- Foreign Key to element table
	"version" TEXT,
	_version TEXT, -- Foreign Key to element table
	"code" TEXT,
	_code TEXT, -- Foreign Key to element table
	display TEXT,
	_display TEXT, -- Foreign Key to element table
	designation **LIST** ValueSet_Designation,
	"contains" **LIST** ValueSet_Contains,

	FOREIGN KEY (_system)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_abstract)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_inactive)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_version)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_code)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_display)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE verificationResult(

	resourceType TEXT, -- resourceType: verificationResult
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	"target" **LIST** Reference,
	targetLocation **LIST** string,
	_targetLocation **LIST** Element,
	need TEXT, -- Foreign Key to codeableConcept table
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	statusDate DATETIME,
	_statusDate TEXT, -- Foreign Key to element table
	validationType TEXT, -- Foreign Key to codeableConcept table
	validationProcess **LIST** CodeableConcept,
	frequency TEXT, -- Foreign Key to timing table
	lastPerformed DATETIME,
	_lastPerformed TEXT, -- Foreign Key to element table
	nextScheduled DATE,
	_nextScheduled TEXT, -- Foreign Key to element table
	failureAction TEXT, -- Foreign Key to codeableConcept table
	primarySource **LIST** VerificationResult_PrimarySource,
	attestation TEXT, -- Foreign Key to verificationResult_Attestation table
	validator **LIST** VerificationResult_Validator,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (need)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_statusDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validationType)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (frequency)
		REFERENCES timing (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_lastPerformed)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_nextScheduled)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (failureAction)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attestation)
		REFERENCES verificationResult_Attestation (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE verificationResult_PrimarySource(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	who TEXT, -- Foreign Key to reference table
	"type" **LIST** CodeableConcept,
	communicationMethod **LIST** CodeableConcept,
	validationStatus TEXT, -- Foreign Key to codeableConcept table
	validationDate DATETIME,
	_validationDate TEXT, -- Foreign Key to element table
	canPushUpdates TEXT, -- Foreign Key to codeableConcept table
	pushTypeAvailable **LIST** CodeableConcept,

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (validationStatus)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_validationDate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (canPushUpdates)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE verificationResult_Attestation(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	who TEXT, -- Foreign Key to reference table
	onBehalfOf TEXT, -- Foreign Key to reference table
	communicationMethod TEXT, -- Foreign Key to codeableConcept table
	"date" DATE,
	_date TEXT, -- Foreign Key to element table
	sourceIdentityCertificate TEXT,
	_sourceIdentityCertificate TEXT, -- Foreign Key to element table
	proxyIdentityCertificate TEXT,
	_proxyIdentityCertificate TEXT, -- Foreign Key to element table
	proxySignature TEXT, -- Foreign Key to signature table
	sourceSignature TEXT, -- Foreign Key to signature table

	FOREIGN KEY (who)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (onBehalfOf)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (communicationMethod)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_date)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sourceIdentityCertificate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_proxyIdentityCertificate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (proxySignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (sourceSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE verificationResult_Validator(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	organization TEXT, -- Foreign Key to reference table
	identityCertificate TEXT,
	_identityCertificate TEXT, -- Foreign Key to element table
	attestationSignature TEXT, -- Foreign Key to signature table

	FOREIGN KEY (organization)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_identityCertificate)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (attestationSignature)
		REFERENCES signature (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE visionPrescription(

	resourceType TEXT, -- resourceType: visionPrescription
	id TEXT PRIMARY KEY,
	meta TEXT, -- Foreign Key to meta table
	implicitRules TEXT,
	_implicitRules TEXT, -- Foreign Key to element table
	"language" TEXT,
	_language TEXT, -- Foreign Key to element table
	"text" TEXT, -- Foreign Key to narrative table
	contained **LIST** ResourceList,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	identifier **LIST** Identifier,
	"status" TEXT,
	_status TEXT, -- Foreign Key to element table
	created DATETIME,
	_created TEXT, -- Foreign Key to element table
	patient TEXT, -- Foreign Key to reference table
	encounter TEXT, -- Foreign Key to reference table
	dateWritten DATETIME,
	_dateWritten TEXT, -- Foreign Key to element table
	prescriber TEXT, -- Foreign Key to reference table
	lensSpecification **LIST** VisionPrescription_LensSpecification,

	FOREIGN KEY (meta)
		REFERENCES meta (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_implicitRules)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_language)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY ("text")
		REFERENCES narrative (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_status)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_created)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (patient)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (encounter)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_dateWritten)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (prescriber)
		REFERENCES reference (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE visionPrescription_LensSpecification(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	product TEXT, -- Foreign Key to codeableConcept table
	eye TEXT, -- enum: right/left
	_eye TEXT, -- Foreign Key to element table
	sphere REAL,
	_sphere TEXT, -- Foreign Key to element table
	cylinder REAL,
	_cylinder TEXT, -- Foreign Key to element table
	axis INTEGER,
	_axis TEXT, -- Foreign Key to element table
	prism **LIST** VisionPrescription_Prism,
	"add" REAL,
	_add TEXT, -- Foreign Key to element table
	power REAL,
	_power TEXT, -- Foreign Key to element table
	backCurve REAL,
	_backCurve TEXT, -- Foreign Key to element table
	diameter REAL,
	_diameter TEXT, -- Foreign Key to element table
	duration TEXT, -- Foreign Key to quantity table
	color TEXT,
	_color TEXT, -- Foreign Key to element table
	brand TEXT,
	_brand TEXT, -- Foreign Key to element table
	note **LIST** Annotation,

	FOREIGN KEY (product)
		REFERENCES codeableConcept (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_eye)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_sphere)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_cylinder)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_axis)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_add)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_power)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_backCurve)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_diameter)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (duration)
		REFERENCES quantity (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_color)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_brand)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

CREATE TABLE visionPrescription_Prism(

	id TEXT PRIMARY KEY,
	extension **LIST** Extension,
	modifierExtension **LIST** Extension,
	amount REAL,
	_amount TEXT, -- Foreign Key to element table
	base TEXT, -- enum: up/down/in/out
	_base TEXT, -- Foreign Key to element table

	FOREIGN KEY (_amount)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION,

	FOREIGN KEY (_base)
		REFERENCES element (id)
			ON DELETE CASCADE
		ON UPDATE NO ACTION

);

