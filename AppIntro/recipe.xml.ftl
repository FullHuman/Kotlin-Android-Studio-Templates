<?xml version="1.0"?>
<recipe>

    <#-- Instantiate the ftl file -->
    <instantiate from="root/src/app_package/AppIntroActivity.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="root/res/values/arrays.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/values/arrays.xml" />

    <#-- Open the activity file -->
    <open file="${escapeXmlAttribute(srcOut)}/${className}.kt" />
</recipe>
