<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Coverage
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Coverage</sch:title>
    <sch:rule context="f:Coverage">
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/snapshot-age-in-months']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/snapshot-age-in-months': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/snapshot-age-in-years']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/snapshot-age-in-years': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-snapshot-age-in-years']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-snapshot-age-in-years': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/age-group']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/age-group': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/age-gender-group']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/age-gender-group': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/attributed-provider-with-period']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/attributed-provider-with-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/benefit-status']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/benefit-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/claim-group-identifier']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/claim-group-identifier': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/cobra-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/cobra-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/coverage-days']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/coverage-days': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/coverage-month']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/coverage-month': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/coverage-insurance-plan']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/coverage-insurance-plan': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/dual-eligibility-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/dual-eligibility-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-pcp']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-pcp': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-pcp-name-on-enrollment']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-pcp-name-on-enrollment': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-pcp-zip-on-enrollment']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/enrollment-pcp-zip-on-enrollment': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-average-scheduled-hours']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-average-scheduled-hours': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-birth-date']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-birth-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-company']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-company': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-cost-center']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-cost-center': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-count']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-count': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-business-unit']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-business-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-department']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-department': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-division']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-division': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-exempt-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-exempt-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-family-size']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-family-size': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-fte-count']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-fte-count': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-job-family']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-job-family': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-job-grade']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-job-grade': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-pay-frequency']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-pay-frequency': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-performance-rating']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-performance-rating': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-shift']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-shift': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-sub-business-unit']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-sub-business-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/salary-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/salary-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/union-worker-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/union-worker-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-education-level']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-education-level': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-gender']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-gender': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-job-title']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-job-title': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-labor-union']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-labor-union': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-retirement-date']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-retirement-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-status']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-union-id']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-union-id': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-wage-amount']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-wage-amount': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-wage-basis']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-wage-basis': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-year-of-service']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employee-year-of-service': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employer']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/employer': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/family-income-level']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/family-income-level': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/job-class-code']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/job-class-code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/job-location-zipcode']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/job-location-zipcode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/long-term-disability-benefit-rate']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/long-term-disability-benefit-rate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/medicare-coverage']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/medicare-coverage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/medicare-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/medicare-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/member-employee-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/member-employee-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/plan-employee-code']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/plan-employee-code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/region-code']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/region-code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/restricted-benefits']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/restricted-benefits': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/short-term-disability-benefit-rate']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/short-term-disability-benefit-rate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/ssi-indicator']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/ssi-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/ssi-status']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/ssi-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/tanf-benefits']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/tanf-benefits': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/total-dependent-count']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/total-dependent-count': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/subscriberId-encrypted']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/subscriberId-encrypted': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-record-population-count']) &lt;= 1">extension with URL = 'http://linuxforhealth.org/fhir/cdm/StructureDefinition/payer-record-population-count': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:payor) &lt;= 1">payor: maximum cardinality of 'payor' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.meta</sch:title>
    <sch:rule context="f:Coverage/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.implicitRules</sch:title>
    <sch:rule context="f:Coverage/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.language</sch:title>
    <sch:rule context="f:Coverage/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.text</sch:title>
    <sch:rule context="f:Coverage/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.extension</sch:title>
    <sch:rule context="f:Coverage/f:extension">
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
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Coverage/f:extension</sch:title>
    <sch:rule context="f:Coverage/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.extension.extension</sch:title>
    <sch:rule context="f:Coverage/f:extension/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.extension.value[x] 1</sch:title>
    <sch:rule context="f:Coverage/f:extension/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.modifierExtension</sch:title>
    <sch:rule context="f:Coverage/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.identifier</sch:title>
    <sch:rule context="f:Coverage/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.status</sch:title>
    <sch:rule context="f:Coverage/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.type</sch:title>
    <sch:rule context="f:Coverage/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.policyHolder</sch:title>
    <sch:rule context="f:Coverage/f:policyHolder">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.subscriber</sch:title>
    <sch:rule context="f:Coverage/f:subscriber">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.subscriberId</sch:title>
    <sch:rule context="f:Coverage/f:subscriberId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.beneficiary</sch:title>
    <sch:rule context="f:Coverage/f:beneficiary">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.dependent</sch:title>
    <sch:rule context="f:Coverage/f:dependent">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.relationship</sch:title>
    <sch:rule context="f:Coverage/f:relationship">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.period</sch:title>
    <sch:rule context="f:Coverage/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.payor</sch:title>
    <sch:rule context="f:Coverage/f:payor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.class</sch:title>
    <sch:rule context="f:Coverage/f:class">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.class.extension</sch:title>
    <sch:rule context="f:Coverage/f:class/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.class.modifierExtension</sch:title>
    <sch:rule context="f:Coverage/f:class/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.class.type</sch:title>
    <sch:rule context="f:Coverage/f:class/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.class.value</sch:title>
    <sch:rule context="f:Coverage/f:class/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.class.name</sch:title>
    <sch:rule context="f:Coverage/f:class/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.order</sch:title>
    <sch:rule context="f:Coverage/f:order">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.network</sch:title>
    <sch:rule context="f:Coverage/f:network">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.extension</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.modifierExtension</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.type</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.value[x] 1</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.exception</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:exception">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.exception.extension</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:exception/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.exception.modifierExtension</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:exception/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.exception.type</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:exception/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.costToBeneficiary.exception.period</sch:title>
    <sch:rule context="f:Coverage/f:costToBeneficiary/f:exception/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.subrogation</sch:title>
    <sch:rule context="f:Coverage/f:subrogation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Coverage.contract</sch:title>
    <sch:rule context="f:Coverage/f:contract">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
