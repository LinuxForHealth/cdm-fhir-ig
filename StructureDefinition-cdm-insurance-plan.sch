<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile InsurancePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:InsurancePlan</sch:title>
    <sch:rule context="f:InsurancePlan">
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/dental-fully-insured-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/dental-fully-insured-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/drug-fully-insured-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/drug-fully-insured-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-type']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/exchange-plan-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/exchange-plan-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/industry-classification']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/industry-classification': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/medical-fully-insured-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/medical-fully-insured-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/vision-fully-insured-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/vision-fully-insured-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-dental-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-dental-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-drug-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-drug-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-hearing-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-hearing-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-long-term-care-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-long-term-care-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-managed-care-plan-type']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-managed-care-plan-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-medical-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-medical-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-mental-health-ambulatory-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-mental-health-ambulatory-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-mental-health-day-night-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-mental-health-day-night-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-mental-health-inpatient-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-mental-health-inpatient-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-psych-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-psych-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-short-term-care-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-short-term-care-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-substance-abuse-ambulatory-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-substance-abuse-ambulatory-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-substance-abuse-day-night-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-substance-abuse-day-night-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-substance-abuse-inpatient-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-substance-abuse-inpatient-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-vision-coverage-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-vision-coverage-indicator': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.meta</sch:title>
    <sch:rule context="f:InsurancePlan/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.implicitRules</sch:title>
    <sch:rule context="f:InsurancePlan/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.language</sch:title>
    <sch:rule context="f:InsurancePlan/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.text</sch:title>
    <sch:rule context="f:InsurancePlan/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:InsurancePlan/f:extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.extension.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:extension/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.extension.value[x] 1</sch:title>
    <sch:rule context="f:InsurancePlan/f:extension/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.identifier</sch:title>
    <sch:rule context="f:InsurancePlan/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.status</sch:title>
    <sch:rule context="f:InsurancePlan/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.type</sch:title>
    <sch:rule context="f:InsurancePlan/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.name</sch:title>
    <sch:rule context="f:InsurancePlan/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.alias</sch:title>
    <sch:rule context="f:InsurancePlan/f:alias">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.period</sch:title>
    <sch:rule context="f:InsurancePlan/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.ownedBy</sch:title>
    <sch:rule context="f:InsurancePlan/f:ownedBy">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.administeredBy</sch:title>
    <sch:rule context="f:InsurancePlan/f:administeredBy">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverageArea</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverageArea">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact.purpose</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact/f:purpose">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact.name</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact.telecom</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact/f:telecom">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact.address</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact/f:address">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.endpoint</sch:title>
    <sch:rule context="f:InsurancePlan/f:endpoint">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.network</sch:title>
    <sch:rule context="f:InsurancePlan/f:network">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.type</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.network</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:network">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.type</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.requirement</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:requirement">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.limit</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:limit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.limit.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:limit/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.limit.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:limit/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.limit.value</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:limit/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.limit.code</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:limit/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:InsurancePlan/f:plan</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan">
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-health-insurance-oversight-system-plan']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-health-insurance-oversight-system-plan': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-health-insurance-oversight-system-product']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-health-insurance-oversight-system-product': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-market-type']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-market-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-metal-tier']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/aca-metal-tier': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/capitation-arrangement']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/capitation-arrangement': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/carve-out']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/carve-out': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/cost-sharing-reduction-variant']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/cost-sharing-reduction-variant': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/funding-arrangement']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/funding-arrangement': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/level-of-care']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/level-of-care': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/long-term-care-duration']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/long-term-care-duration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/long-term-care-waiting-period']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/long-term-care-waiting-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/rating-area']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/rating-area': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/short-term-care-duration']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/short-term-care-duration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/short-term-care-waiting-period']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/short-term-care-waiting-period': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.identifier</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.type</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.coverageArea</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:coverageArea">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.network</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:network">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost.type</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost.groupSize</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost/f:groupSize">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost.cost</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost/f:cost">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost.comment</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost/f:comment">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.category</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.type</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost.extension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost.modifierExtension</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost.type</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost.applicability</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:applicability">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost.qualifiers</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:qualifiers">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost.value</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>