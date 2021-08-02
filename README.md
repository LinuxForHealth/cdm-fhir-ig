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

## How to Update Release Notes

Release notes are automatically generated by gren when release is created in github.  Normally there is nothing for developers to do, since these steps are built into the github automation for this project.

* Release notes are created automatically by a github action using gren, see [github-release-notes](https://github-tools.github.io/github-release-notes/concept.html)
* Issue labels are create the release notes on each release

Occasionally, you may find and edit you need to make to an issue or you may want to change the labels on an issue.  For these cases, there are three methods for updating the release notes. 

1. Update the release notes manually using github release edit page
2. Delete the release and create a new one with the same label
3. Run gren locally
   
### Updating release notes locally
If you choose to run gren locally, you can update release notes for a single release or for all releases.  

1. Install gren using npm

```console
npm install github-release-notes -g
```

2. Create and envinroment variable containing a github token with access to the repo

```console
export GREN_GITHUB_TOKEN=<YOUR TOKEN HERE>
```

3. Run gren command to update the release

To update a single release tag:
```console
gren releaste --tags=v0.x.x --override
```

To update all release notes:
```console
gren releaste --override
```

### Updating history locally
When the IG is released, a new history.md is generated based on closed issues.  The history is gerneated using the same gren library that builds the release notes. The history.md is used by the sushi/publish process to add a history.html page to the IG. Normally there is nothing for developers to do, since these steps are built into the github automation for this project.

If you wish to create a history.md page for IG generataion testing, use gren as described below.

1. Install gren using npm

```console
npm install github-release-notes -g
```

2. Create and envinroment variable containing a github token with access to the repo

```console
export GREN_GITHUB_TOKEN=<YOUR TOKEN HERE>
```

3. Run gren command to generate the history.md file (data/ig-data/input/pagecontent/history.md).

To update the history.md file locally:
```console
gren changelog --override
```

To build the IG site and view the history page locally:
```console
npm install
npm run sushi
npm run ig_init
open ./build/output/history.md
```

## Contribution Guide

Since we have not completely moved our development into the open yet, external contributions are limited. If you would like to make contributions, please create an issue detailing the change. We will work with you to get it merged in.

## License

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.
IBM and the IBM logo are trademarks of International Business Machines Corporation, registered in many jurisdictions worldwide. Other product and service names might be trademarks of IBM or other companies. A current list of IBM trademarks is available on [https://ibm.com/trademark](https://ibm.com/trademark).

## Release History

View the [Release][https://github.com/Alvearie/alvearie-fhir-ig/releases]. Each release includes the full IG specication. 
