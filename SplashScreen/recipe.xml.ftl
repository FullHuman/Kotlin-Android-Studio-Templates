<?xml version="1.0"?>
<recipe>

    <#-- Instantiate the ftl file -->
    <instantiate from="root/src/app_package/SplashScreenActivity.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="root/res/values/styles.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <copy from="root/res/drawable/bg_splash_screen.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/bg_splash_screen.xml" />

    <#-- Open the activity file -->
    <open file="${escapeXmlAttribute(srcOut)}/${className}.kt" />
</recipe>
