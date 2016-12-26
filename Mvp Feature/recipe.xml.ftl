<?xml version="1.0"?>
<recipe>

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <#-- Create the directory -->
    <mkdir at="${escapeXmlAttribute(srcOut)}/${moduleName}" />

    <#-- Instantiate the ftl files -->
    <instantiate from="root/src/app_package/moduleActivity.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${moduleName}/${moduleName}Activity.kt" />
    <instantiate from="root/src/app_package/moduleContract.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${moduleName}/${moduleName}Contract.kt" />
    <instantiate from="root/src/app_package/moduleFragment.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${moduleName}/${moduleName}Fragment.kt" />
    <instantiate from="root/src/app_package/modulePresenter.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${moduleName}/${moduleName}Presenter.kt" />

    <#-- Open the activity file -->
    <open file="${escapeXmlAttribute(srcOut)}/${moduleName}/${moduleName}Activity.kt" />
</recipe>
