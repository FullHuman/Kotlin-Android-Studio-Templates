<?xml version="1.0"?>
<recipe>

    <#-- Instantiate the ftl file -->
    <instantiate from="root/src/app_package/BottomBarActivity.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="root/res/values/strings.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <copy from="root/res/layout/bottom_bar_activity.xml"
            to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <copy from="root/res/drawable/"
            to="${escapeXmlAttribute(resOut)}/drawable/" />
    <copy from="root/res/menu/"
            to="${escapeXmlAttribute(resOut)}/menu/" />

    <#-- Open the activity file -->
    <open file="${escapeXmlAttribute(srcOut)}/${className}.kt" />
</recipe>
