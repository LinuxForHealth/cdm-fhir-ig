package com.ibm.fhir.ig.cdm;

import com.ibm.fhir.registry.util.PackageRegistryResourceProvider;

public class CommonDataModelResourceProvider extends PackageRegistryResourceProvider {
    @Override
    public String getPackageId() {
        return "com.ibm.fhir.cdm";
    }
}