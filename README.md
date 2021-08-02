# alvearie-fhir-ig

## Introduction


To build upon FHIR standards, IBM® Watson Health has developed IBM® Health Data Connect. This Common Data Model Implementation Guide supports Health Data Connect data interoperability for a cross-section of healthcare use cases, and refers to the model defined by this implementation guide as the IBM Health Data Connect Common Data Model.

The Common Data Model extends the industry-standard, base FHIR specification to support the data model requirements needed by healthcare data platform base capabilities, for example, data lineage and resource matching. In addition, the Common Data Model adds elements to support higher-level value that can be driven by a healthcare data platform, including claims data enrichment, care gap analytics, and patient engagement.

Current version of the IG is hosted here:  [https://alvearie.io/alvearie-fhir-ig/index.html](https://alvearie.io/alvearie-fhir-ig/index.html).

## How to Build the Implementation Guide

  Github actions will automatically build the IG at main push/merge.
  
  To manually build the IG several NPM commands are available from package.json based on your environment:

    npm run all           Mac and Linux version
	npm run all_win_bash  Windows bash version 
	npm run all_win_cmd   Windows command version (limited support)

The commands include steps to perform the following:
* Step 1
    * Compile FHIR Shorthand (fsh) - SUSHI (aka "SUSHI Unshortens Short Hand Inputs")
    * Build the local IG - ig_init or ig
* Step 2
    * Mvn clean install to run tests and create snapshot jar
* Step 3
    * Add snapshot.jar to downloads. Normally, this is part of the CI automation steps only.

## Contribution Guide

Since we have not completely moved our development into the open yet, external contributions are limited. If you would like to make contributions, please create an issue detailing the change. We will work with you to get it merged in.

## License

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.
IBM and the IBM logo are trademarks of International Business Machines Corporation, registered in many jurisdictions worldwide. Other product and service names might be trademarks of IBM or other companies. A current list of IBM trademarks is available on [https://ibm.com/trademark](https://ibm.com/trademark).

## Release History

View the [Release][https://github.com/Alvearie/alvearie-fhir-ig/releases]. Each release includes the full IG specication. 
