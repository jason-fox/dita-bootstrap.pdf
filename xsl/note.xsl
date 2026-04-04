<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
                version="2.0">

  <!-- Note Support (Styled as Bootstrap Alerts) -->
  <xsl:template match="*[contains(@class, ' topic/note ')]" priority="10">
    <fo:block xsl:use-attribute-sets="section">
      <xsl:call-template name="commonattributes"/>
      
      <!-- Map DITA Note Type or @color to Bootstrap Theme -->
      <xsl:variable name="theme">
        <xsl:choose>
          <xsl:when test="@color"><xsl:value-of select="@color"/></xsl:when>
          <xsl:otherwise>
            <xsl:variable name="type" select="(@type, 'note')[1]"/>
            <xsl:choose>
              <xsl:when test="$type = 'note' or $type = 'notice' or $type = 'remember'">info</xsl:when>
              <xsl:when test="$type = 'tip' or $type = 'fastpath'">success</xsl:when>
              <xsl:when test="$type = 'important'">primary</xsl:when>
              <xsl:when test="$type = 'warning' or $type = 'caution' or $type = 'restriction' or $type = 'trouble'">warning</xsl:when>
              <xsl:when test="$type = 'danger'">danger</xsl:when>
              <xsl:otherwise>secondary</xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      
      <!-- 1. Background (Subtle variant includes high-contrast text color) -->
      <xsl:call-template name="processBootstrapAttrSetReflection">
        <xsl:with-param name="attrSet" select="concat('__bg__', $theme, '-subtle')"/>
      </xsl:call-template>

      <!-- 3. Border Color (Main theme color) -->
      <xsl:call-template name="processBootstrapBorderColor">
        <xsl:with-param name="attrValue" select="$theme"/>
      </xsl:call-template>
      
      <!-- 4. Default Visibility & Rounding -->
      <xsl:attribute name="border-style">solid</xsl:attribute>
      <xsl:attribute name="border-width">1pt</xsl:attribute>
      <xsl:call-template name="processBootstrapRounded">
        <xsl:with-param name="attrValue" select="'yes'"/>
      </xsl:call-template>

      <!-- 5. Default Spacing -->
      <xsl:attribute name="padding">12pt</xsl:attribute>
      <xsl:attribute name="margin-top">10pt</xsl:attribute>
      <xsl:attribute name="margin-bottom">10pt</xsl:attribute>
      
      <!-- Ensure the note stays on one page -->
      <xsl:attribute name="keep-together.within-page">always</xsl:attribute>
      
      <!-- Apply Figure specific outputclass utilities if present -->
      <xsl:call-template name="processBootstrapOutputClass">
        <xsl:with-param name="attrValue" select="@outputclass"/>
      </xsl:call-template>
      
      <!-- Process specialized attributes if present -->
      <xsl:if test="@width">
        <xsl:call-template name="processBootstrapWidth">
          <xsl:with-param name="attrValue" select="@width"/>
        </xsl:call-template>
      </xsl:if>

      <xsl:call-template name="processBootstrapDirection"/>
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

</xsl:stylesheet>
