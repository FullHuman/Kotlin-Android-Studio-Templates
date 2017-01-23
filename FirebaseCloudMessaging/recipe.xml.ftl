<?xml version="1.0"?>
<recipe>

    <#-- Instantiate the ftl files -->
    <instantiate from="root/src/app_package/FirebaseInstanceId.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/FirebaseInstanceId.kt" />

    <instantiate from="root/src/app_package/FirebaseMessaging.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/FirebaseMessaging.kt" />

    <#-- Add Services to Android Manifest -->
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <#-- Open the FirebaseInstanceId file -->
    <open file="${escapeXmlAttribute(srcOut)}/FirebaseInstanceId.kt" />
</recipe>
