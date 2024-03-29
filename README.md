# LinuxForHealth FHIR Implementation Guide

## Introduction


To build upon FHIR standards, this LinuxForHealth Common Data Model Implementation Guide supports LinuxForHealth data interoperability for a cross-section of healthcare use cases, and refers to the model defined by this implementation guide as the LinuxForHealth Common Data Model.

The Common Data Model extends the industry-standard, base FHIR specification to support the data model requirements needed by healthcare data platform base capabilities, for example, data lineage and resource matching. In addition, the Common Data Model adds elements to support higher-level value that can be driven by a healthcare data platform, including claims data enrichment, care gap analytics, and patient engagement.

Current version of the IG is hosted here:  [http://linuxforhealth.org/fhir/cdm/index.html](http://linuxforhealth.org/fhir/cdm/index.html).

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

Release notes are automatically generated by a node package called "gren" when release is created in github.  Normally there is nothing for developers to do, since these steps are automated by the github actions for this repo.

* Release notes are created automatically by a github action when a release is created
* The automated github release create action uses gren to update release notes, see [github-release-notes](https://github-tools.github.io/github-release-notes/concept.html)
* Issues are used to document changes included in the release notes for each release
* Issue labels pinned to the issues are used to categorize the issues
* Issues are attached to the release based on the timing of the release commits and closure of the issues

Occasionally, you may find you need to update release notes.  Perhaps you forgot to close an issue or you need to update the labels on the issues. For these use cases, there are three methods for updating the release notes.

1. Update the release notes manually using github release edit page
2. Delete the release and create a new one with the same label
3. Run gren locally, as described below
   
### Updating release notes locally
If you want to run gren locally, you can update release notes for a single release or for all releases.  

```console
# Install gren using npm
npm install github-release-notes -g

# Create an environmment variable containing a github token with access to the repo
export GREN_GITHUB_TOKEN=<YOUR TOKEN HERE>

# Run gren command to update the release notes for a single release
gren release --tags=v0.x.x --override

# OR update release notes fo all releases:
gren release --override
```

### Updating history locally
When the IG is released, a new history.md is generated based on closed issues.  The history is created using the same gren library that builds the release notes. The history.md is used by the sushi/publish process to add a history.html page to the IG. Normally there is nothing for developers to do, since these steps are built into the github automation for this project.

If you want to create a history.md page for IG testing, use gren as described below.

```console
# Install gren using npm
npm install github-release-notes -g

# Create an environment variable containing a github token with access to the repo
export GREN_GITHUB_TOKEN=<YOUR TOKEN HERE>

# Run gren command to generate the history.md file (data/ig-data/input/pagecontent/history.md).
gren changelog --override

# Build the IG site and view the history page locally
npm install
npm run sushi
npm run ig_init
open ./build/output/history.md
```

## Contribution Guide

Since we have not completely moved our development into the open yet, external contributions are limited. If you would like to make contributions, please create an issue detailing the change. We will work with you to review and merge it in.

You must have git configured for signed-by commmits.  See [CONTRIBUTING.md](CONTRIBUTING.md) for more details.

## License

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Release History

For release history of this IG, view the [release page](https://github.com/LinuxForHealth/alvearie-fhir-ig/releases). Each release includes:

- Full IG Site Specification (full-ig.zip)
- A snapshot jar file used to register the IG profiles on an LinuxForHealth FHIR® Server
- Tar archive containing all assets used by the FHIR Publisher to build the site (package.tgz)
- Zip fies containing definitions and examples in json, xml, and ttl (Turtle)

## Versioning IG Releases

IG versioning follows the semantic release pattern of MAJOR.MINOR.REVISION.  Please follow the guidelines listed below when making changes to this repo and labeling IG releases.

### When to change the version

IG releases and version numbers should be modified as follows:

1. **Bump MAJOR version (N.x.x) on breaking changes**
    - New required fields on existing profiles
    - Tighter cardinality restrictions on existing fields
    - Tighter data type or valueset binding constraints on existing profiles
    - Code changes to existing vocabularies
    - Url changes to existing profiles, vocabularies, etc.

2. **Bump MINOR version (x.N.x) on non-breaking IG profile changes**
    - New profiles or extensions
    - New codes, coding system, or vocabularies
    - Looser cardinality restrictions on existing fields
    - Looser data type or valueset binding constraints on existing profiles
    - New optional fields on existing profiles
  
3. **Bump REVISION number (x.x.N) on documentation changes that are reflected in the IG**
    - Changes to descriptions of profiles, extensions, or codes
    - Changes on IG pages that do not impact the profiles
  
4. **No version change to be made on other repo changes that do not affect the IG**
    - Build CI changes
    - Documentation in github pages only that are reflected in the IG (readme.md, etc)
    - Any other change not reflected in the IG web site or artifacts

### How to change the version
Changes must be made to the following files to version the IG. This will ensure the automated releases work correctly, and is displayed top of the IG web site after it is published.

- package.json (root folder)
- data/sushi-config.yaml
- data/package.json (obsolete, don't need to do this one anymore)
