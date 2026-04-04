<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
                exclude-result-prefixes="opentopic-func"
                version="2.0">

  <!-- Button Support -->
  <xsl:template match="*[contains(@class, ' bootstrap-d/button ')]" priority="10">
    <fo:basic-link xsl:use-attribute-sets="xref">
      <xsl:call-template name="commonattributes"/>
      
      <!-- Link Destination -->
      <xsl:choose>
        <xsl:when test="(@scope = 'external') or not(empty(@format) or @format = 'dita')">
          <xsl:attribute name="external-destination">url('<xsl:value-of select="@href"/>')</xsl:attribute>
        </xsl:when>
        <xsl:when test="@href">
          <xsl:attribute name="internal-destination">
             <xsl:value-of select="opentopic-func:getDestinationId(@href)"/>
          </xsl:attribute>
        </xsl:when>
      </xsl:choose>

      <!-- Specialized Bootstrap Styling -->
      <xsl:variable name="theme" select="(@color, 'primary')[1]"/>
      <xsl:variable name="size" select="(@size, 'default')[1]"/>
      
      <!-- 1. Background & Text Colors -->
      <xsl:call-template name="processBootstrapAttrSetReflection">
        <xsl:with-param name="attrSet" select="concat('__bg__', $theme)"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapAttrSetReflection">
        <xsl:with-param name="attrSet" select="concat('__color__', if ($theme = 'warning' or $theme = 'light') then 'black' else 'white')"/>
      </xsl:call-template>
      
      <!-- 2. Borders -->
      <xsl:attribute name="border-style">solid</xsl:attribute>
      <xsl:attribute name="border-width">1pt</xsl:attribute>
      <xsl:call-template name="processBootstrapBorderColor">
        <xsl:with-param name="attrValue" select="$theme"/>
      </xsl:call-template>
      <xsl:if test="@bordercolor">
        <xsl:call-template name="processBootstrapBorderColor">
          <xsl:with-param name="attrValue" select="@bordercolor"/>
        </xsl:call-template>
      </xsl:if>
      
      <!-- 3. Size-dependent Padding & Font Size -->
      <xsl:choose>
        <xsl:when test="$size = 'small'">
          <xsl:attribute name="font-size">9pt</xsl:attribute>
          <xsl:attribute name="padding">1.5pt 4pt</xsl:attribute>
        </xsl:when>
        <xsl:when test="$size = 'large'">
          <xsl:attribute name="font-size">14pt</xsl:attribute>
          <xsl:attribute name="padding">6pt 12pt</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="font-size">11pt</xsl:attribute>
          <xsl:attribute name="padding">3pt 8pt</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>

      <!-- Override padding if specified -->
      <xsl:if test="@padding">
        <xsl:call-template name="processBootstrapSpacing">
          <xsl:with-param name="attrValue" select="@padding"/>
          <xsl:with-param name="prefix" select="'p'"/>
        </xsl:call-template>
      </xsl:if>
      
      <!-- 4. Rounding (Default to '2' (4pt) instead of 'yes' (6pt)) -->
      <xsl:call-template name="processBootstrapRounded">
        <xsl:with-param name="attrValue" select="(@rounded, if ($size = 'small') then '1' else '2')[1]"/>
      </xsl:call-template>
      
      <!-- Legacy / Spacing utility support (MOVED UP) -->
      <xsl:call-template name="processBootstrapSpacing">
        <xsl:with-param name="attrValue" select="@margin"/>
        <xsl:with-param name="prefix" select="'m'"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapOutputClass">
        <xsl:with-param name="attrValue" select="@outputclass"/>
      </xsl:call-template>

      <!-- 5. Content handling - ensure we only process the intended label -->
      <fo:inline baseline-shift="0.5pt">
        <xsl:choose>
          <!-- If button has explicit child text or formatting elements, use those -->
          <xsl:when test="node()[not(self::processing-instruction('ditaot'))]">
            <xsl:apply-templates select="node()" mode="button-label"/>
          </xsl:when>
          <!-- Fallback: retrieve target title only (cleanly) -->
          <xsl:when test="@href">
             <xsl:variable name="dest" select="opentopic-func:getDestinationId(@href)"/>
             <xsl:variable name="target" select="key('key_anchor', $dest, $root)[1]"/>
             <xsl:choose>
                <xsl:when test="$target/*[contains(@class, ' topic/title ')]">
                   <xsl:apply-templates select="$target/*[contains(@class, ' topic/title ')]" mode="insert-text"/>
                </xsl:when>
                <xsl:otherwise>
                   <xsl:value-of select="@href"/>
                </xsl:otherwise>
             </xsl:choose>
          </xsl:when>
        </xsl:choose>
      </fo:inline>

    </fo:basic-link>
  </xsl:template>

  <!-- Dedicated mode for button labels to ensure no metadata leak -->
  <xsl:template match="text()" mode="button-label">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="*" mode="button-label">
    <xsl:apply-templates select="."/>
  </xsl:template>

  <!-- Explicitly suppress metadata elements in button labels -->
  <xsl:template match="*[contains(@class, ' topic/desc ') or contains(@class, ' topic/shortdesc ')]" mode="button-label" priority="100"/>

  <!-- Suppress any dita-ot internal processing instructions -->
  <xsl:template match="processing-instruction()" mode="button-label" priority="10"/>

</xsl:stylesheet>
