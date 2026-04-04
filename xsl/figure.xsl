<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
                version="2.0">

  <!-- Figure Component Handling -->
  <!-- Aggressive priority="100" to override any other plugin or base templates. -->
  <xsl:template match="*[contains(@class, ' topic/fig ')]" priority="100">
    <fo:block xsl:use-attribute-sets="fig">
      <xsl:call-template name="commonattributes"/>
      
      <!-- Standard Bootstrap-like Figure spacing (approx 1rem / 16pt) -->
      <xsl:attribute name="margin-top">16pt</xsl:attribute>
      <xsl:attribute name="margin-bottom">16pt</xsl:attribute>
      
      <!-- Apply Figure specific outputclass utilities if present -->
      <xsl:call-template name="processBootstrapOutputClass">
        <xsl:with-param name="attrValue" select="@outputclass"/>
      </xsl:call-template>
      
      <xsl:call-template name="processBootstrapWidth">
        <xsl:with-param name="attrValue" select="@width"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapBorder">
        <xsl:with-param name="attrValue" select="@border"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapFrame">
        <xsl:with-param name="attrValue" select="@frame"/>
      </xsl:call-template>
      
      <!-- Layout order: Image/Content first, Title (caption) below -->
      <xsl:apply-templates select="node() except *[contains(@class, ' topic/title ')]"/>
      <xsl:apply-templates select="*[contains(@class, ' topic/title ')]"/>
    </fo:block>
  </xsl:template>

  <!-- Force Scalefit for Images within Figures -->
  <xsl:template match="*[contains(@class, ' topic/fig ')]//*[contains(@class, ' topic/image ')]" priority="100">
    <fo:block text-align="center">
      <fo:external-graphic src="url({@href})" content-width="scale-to-fit" width="100%" height="auto" scaling="uniform">
        <xsl:call-template name="commonattributes"/>
        <xsl:if test="@width">
          <xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute>
        </xsl:if>
        <xsl:if test="@height">
          <xsl:attribute name="height"><xsl:value-of select="@height"/></xsl:attribute>
        </xsl:if>
      </fo:external-graphic>
    </fo:block>
  </xsl:template>

  <!-- Figure Title (Caption) -->
  <xsl:template match="*[contains(@class, ' topic/fig ')]/*[contains(@class, ' topic/title ')]" priority="100">
    <fo:block xsl:use-attribute-sets="fig.title">
      <xsl:call-template name="commonattributes"/>
      <!-- Standard Bootstrap Figure Caption styling -->
      <xsl:attribute name="font-size">0.9em</xsl:attribute>
      <xsl:attribute name="color">#6c757d</xsl:attribute>
      <xsl:attribute name="margin-top">8pt</xsl:attribute>
      
      <!-- Alignment: Default left, custom right via text-end -->
      <xsl:attribute name="text-align">
        <xsl:choose>
          <xsl:when test="contains(@outputclass, 'text-end')">right</xsl:when>
          <xsl:when test="contains(@outputclass, 'text-center')">center</xsl:when>
          <xsl:otherwise>left</xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>

      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

</xsl:stylesheet>
