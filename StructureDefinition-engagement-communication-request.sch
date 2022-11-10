<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CDMCommunicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CommunicationRequest</sch:title>
    <sch:rule context="f:CommunicationRequest">
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-product']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-product': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-on-behalf-of']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-on-behalf-of': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-contact']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-contact': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-measure']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-measure': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-care-gap']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-care-gap': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-priority-sequence']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-priority-sequence': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-language']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-language': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-template']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-template': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-payload-data']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-payload-data': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-vendor']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-vendor': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/conversation-type']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/conversation-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-reengagement']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-reengagement': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-retry-limt']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/communication-retry-limt': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 0">basedOn: maximum cardinality of 'basedOn' is 0</sch:assert>
      <sch:assert test="count(f:doNotPerform) &lt;= 0">doNotPerform: maximum cardinality of 'doNotPerform' is 0</sch:assert>
      <sch:assert test="count(f:medium) &gt;= 1">medium: minimum cardinality of 'medium' is 1</sch:assert>
      <sch:assert test="count(f:medium) &lt;= 1">medium: maximum cardinality of 'medium' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 0">reasonCode: maximum cardinality of 'reasonCode' is 0</sch:assert>
      <sch:assert test="count(f:reasonReference) &lt;= 0">reasonReference: maximum cardinality of 'reasonReference' is 0</sch:assert>
      <sch:assert test="count(f:note) &lt;= 0">note: maximum cardinality of 'note' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.meta</sch:title>
    <sch:rule context="f:CommunicationRequest/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.implicitRules</sch:title>
    <sch:rule context="f:CommunicationRequest/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.language</sch:title>
    <sch:rule context="f:CommunicationRequest/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.text</sch:title>
    <sch:rule context="f:CommunicationRequest/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.extension</sch:title>
    <sch:rule context="f:CommunicationRequest/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.modifierExtension</sch:title>
    <sch:rule context="f:CommunicationRequest/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.identifier</sch:title>
    <sch:rule context="f:CommunicationRequest/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.basedOn</sch:title>
    <sch:rule context="f:CommunicationRequest/f:basedOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.replaces</sch:title>
    <sch:rule context="f:CommunicationRequest/f:replaces">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.groupIdentifier</sch:title>
    <sch:rule context="f:CommunicationRequest/f:groupIdentifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.status</sch:title>
    <sch:rule context="f:CommunicationRequest/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.statusReason</sch:title>
    <sch:rule context="f:CommunicationRequest/f:statusReason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.category</sch:title>
    <sch:rule context="f:CommunicationRequest/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.priority</sch:title>
    <sch:rule context="f:CommunicationRequest/f:priority">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.doNotPerform</sch:title>
    <sch:rule context="f:CommunicationRequest/f:doNotPerform">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.medium</sch:title>
    <sch:rule context="f:CommunicationRequest/f:medium">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.subject</sch:title>
    <sch:rule context="f:CommunicationRequest/f:subject">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.about</sch:title>
    <sch:rule context="f:CommunicationRequest/f:about">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.encounter</sch:title>
    <sch:rule context="f:CommunicationRequest/f:encounter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.payload</sch:title>
    <sch:rule context="f:CommunicationRequest/f:payload">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.payload.extension</sch:title>
    <sch:rule context="f:CommunicationRequest/f:payload/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.payload.modifierExtension</sch:title>
    <sch:rule context="f:CommunicationRequest/f:payload/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.payload.content[x] 1</sch:title>
    <sch:rule context="f:CommunicationRequest/f:payload/f:content[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.occurrence[x] 1</sch:title>
    <sch:rule context="f:CommunicationRequest/f:occurrence[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.authoredOn</sch:title>
    <sch:rule context="f:CommunicationRequest/f:authoredOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.requester</sch:title>
    <sch:rule context="f:CommunicationRequest/f:requester">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.recipient</sch:title>
    <sch:rule context="f:CommunicationRequest/f:recipient">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.sender</sch:title>
    <sch:rule context="f:CommunicationRequest/f:sender">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.reasonCode</sch:title>
    <sch:rule context="f:CommunicationRequest/f:reasonCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.reasonReference</sch:title>
    <sch:rule context="f:CommunicationRequest/f:reasonReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CommunicationRequest.note</sch:title>
    <sch:rule context="f:CommunicationRequest/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
