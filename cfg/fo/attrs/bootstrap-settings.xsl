<?xml version="1.0" encoding="UTF-8"?>
<!--
	This file is part of the DITA-OT Bootstrap Print Plug-in project.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <!-- Bootstrap Settings Map for Reflection -->
  <xsl:variable name="bootstrap-settings">
    <entry name="bootstrap-primary">#0d6efd</entry>
    <entry name="bootstrap-secondary">#6c757d</entry>
    <entry name="bootstrap-success">#198754</entry>
    <entry name="bootstrap-danger">#dc3545</entry>
    <entry name="bootstrap-warning">#ffc107</entry>
    <entry name="bootstrap-info">#0dcaf0</entry>
    <entry name="bootstrap-light">#f8f9fa</entry>
    <entry name="bootstrap-dark">#212529</entry>
    <entry name="bootstrap-link">#0d6efd</entry>

    <entry name="bootstrap-primary-subtle">#e0f2ff</entry>
    <entry name="bootstrap-primary-subtle-text">#084298</entry>
    <entry name="bootstrap-secondary-subtle">#e2e3e5</entry>
    <entry name="bootstrap-secondary-subtle-text">#41464b</entry>
    <entry name="bootstrap-success-subtle">#d1e7dd</entry>
    <entry name="bootstrap-success-subtle-text">#0f5132</entry>
    <entry name="bootstrap-danger-subtle">#f8d7da</entry>
    <entry name="bootstrap-danger-subtle-text">#842029</entry>
    <entry name="bootstrap-warning-subtle">#fff3cd</entry>
    <entry name="bootstrap-warning-subtle-text">#332701</entry>
    <entry name="bootstrap-info-subtle">#cff4fc</entry>
    <entry name="bootstrap-info-subtle-text">#032830</entry>
    <entry name="bootstrap-light-subtle">#fefefe</entry>
    <entry name="bootstrap-light-subtle-text">#141619</entry>
    <entry name="bootstrap-dark-subtle">#ced4da</entry>
    <entry name="bootstrap-dark-subtle-text">#141619</entry>

    <!-- Component-specific: Tables -->
    <entry name="bootstrap-table-primary-bg">#cfe2ff</entry>
    <entry name="bootstrap-table-primary-color">#052c65</entry>
    <entry name="bootstrap-table-secondary-bg">#e2e3e5</entry>
    <entry name="bootstrap-table-secondary-color">#41464b</entry>
    <entry name="bootstrap-table-success-bg">#d1e7dd</entry>
    <entry name="bootstrap-table-success-color">#0f5132</entry>
    <entry name="bootstrap-table-info-bg">#cff4fc</entry>
    <entry name="bootstrap-table-info-color">#032830</entry>
    <entry name="bootstrap-table-warning-bg">#fff3cd</entry>
    <entry name="bootstrap-table-warning-color">#332701</entry>
    <entry name="bootstrap-table-danger-bg">#f8d7da</entry>
    <entry name="bootstrap-table-danger-color">#842029</entry>
    <entry name="bootstrap-table-light-bg">#f8f9fa</entry>
    <entry name="bootstrap-table-light-color">#212529</entry>
    <entry name="bootstrap-table-dark-bg">#212529</entry>
    <entry name="bootstrap-table-dark-color">#ffffff</entry>

    <!-- Component-specific: Buttons -->
    <entry name="bootstrap-btn-primary-bg">#0d6efd</entry>
    <entry name="bootstrap-btn-primary-color">#ffffff</entry>
    <entry name="bootstrap-btn-secondary-bg">#6c757d</entry>
    <entry name="bootstrap-btn-secondary-color">#ffffff</entry>
    <entry name="bootstrap-btn-success-bg">#198754</entry>
    <entry name="bootstrap-btn-success-color">#ffffff</entry>
    <entry name="bootstrap-btn-info-bg">#0dcaf0</entry>
    <entry name="bootstrap-btn-info-color">#000000</entry>
    <entry name="bootstrap-btn-warning-bg">#ffc107</entry>
    <entry name="bootstrap-btn-warning-color">#000000</entry>
    <entry name="bootstrap-btn-danger-bg">#dc3545</entry>
    <entry name="bootstrap-btn-danger-color">#ffffff</entry>
    <entry name="bootstrap-btn-light-bg">#f8f9fa</entry>
    <entry name="bootstrap-btn-light-color">#000000</entry>
    <entry name="bootstrap-btn-dark-bg">#212529</entry>
    <entry name="bootstrap-btn-dark-color">#ffffff</entry>

    <!-- Component-specific: Badges (Defaults to solid) -->
    <entry name="bootstrap-badge-primary-bg">#0d6efd</entry>
    <entry name="bootstrap-badge-primary-color">#ffffff</entry>
    <entry name="bootstrap-badge-secondary-bg">#6c757d</entry>
    <entry name="bootstrap-badge-secondary-color">#ffffff</entry>
    <entry name="bootstrap-badge-success-bg">#198754</entry>
    <entry name="bootstrap-badge-success-color">#ffffff</entry>
    <entry name="bootstrap-badge-info-bg">#0dcaf0</entry>
    <entry name="bootstrap-badge-info-color">#000000</entry>
    <entry name="bootstrap-badge-warning-bg">#ffc107</entry>
    <entry name="bootstrap-badge-warning-color">#000000</entry>
    <entry name="bootstrap-badge-danger-bg">#dc3545</entry>
    <entry name="bootstrap-badge-danger-color">#ffffff</entry>
    <entry name="bootstrap-badge-light-bg">#f8f9fa</entry>
    <entry name="bootstrap-badge-light-color">#000000</entry>
    <entry name="bootstrap-badge-dark-bg">#212529</entry>
    <entry name="bootstrap-badge-dark-color">#ffffff</entry>

    <entry name="bootstrap-spacing-0">0</entry>
    <entry name="bootstrap-spacing-1">3pt</entry>
    <entry name="bootstrap-spacing-2">6pt</entry>
    <entry name="bootstrap-spacing-3">12pt</entry>
    <entry name="bootstrap-spacing-4">18pt</entry>
    <entry name="bootstrap-spacing-5">36pt</entry>

    <entry name="bootstrap-border-color">#dee2e6</entry>
    <entry name="bootstrap-border-width">1pt</entry>

    <entry name="bootstrap-rounded">6pt</entry>
    <entry name="bootstrap-rounded-0">0</entry>
    <entry name="bootstrap-rounded-1">3pt</entry>
    <entry name="bootstrap-rounded-2">4pt</entry>
    <entry name="bootstrap-rounded-3">5pt</entry>
    <entry name="bootstrap-rounded-4">8pt</entry>
    <entry name="bootstrap-rounded-5">16pt</entry>
    <entry name="bootstrap-rounded-circle">50%</entry>
    <entry name="bootstrap-rounded-pill">100pt</entry>

    <entry name="bootstrap-h1-font-size">28pt</entry>
    <entry name="bootstrap-h1-margin-top">12pt</entry>
    <entry name="bootstrap-h1-margin-bottom">6pt</entry>
    <entry name="bootstrap-h2-font-size">24pt</entry>
    <entry name="bootstrap-h2-margin-top">10pt</entry>
    <entry name="bootstrap-h2-margin-bottom">5pt</entry>
    <entry name="bootstrap-h3-font-size">18pt</entry>
    <entry name="bootstrap-h3-margin-top">10pt</entry>
    <entry name="bootstrap-h3-margin-bottom">5pt</entry>
    <entry name="bootstrap-h4-font-size">14pt</entry>
    <entry name="bootstrap-h4-margin-top">8pt</entry>
    <entry name="bootstrap-h4-margin-bottom">4pt</entry>
    <entry name="bootstrap-h5-font-size">12pt</entry>
    <entry name="bootstrap-h5-margin-top">8pt</entry>
    <entry name="bootstrap-h5-margin-bottom">4pt</entry>
    <entry name="bootstrap-h6-font-size">10pt</entry>
    <entry name="bootstrap-h6-margin-top">6pt</entry>
    <entry name="bootstrap-h6-margin-bottom">3pt</entry>

    <entry name="bootstrap-display-1-font-size">60pt</entry>
    <entry name="bootstrap-display-2-font-size">52pt</entry>
    <entry name="bootstrap-display-3-font-size">44pt</entry>
    <entry name="bootstrap-display-4-font-size">36pt</entry>
    <entry name="bootstrap-display-5-font-size">28pt</entry>
    <entry name="bootstrap-display-6-font-size">24pt</entry>
    <entry name="bootstrap-display-font-weight">300</entry>
    <entry name="bootstrap-display-line-height">1.2</entry>

    <entry name="bootstrap-table-striped-color">#f2f2f2</entry>
  </xsl:variable>

  <!-- Variables defined from map -->
  <xsl:variable name="bootstrap-primary" select="$bootstrap-settings/entry[@name='bootstrap-primary']"/>
  <xsl:variable name="bootstrap-secondary" select="$bootstrap-settings/entry[@name='bootstrap-secondary']"/>
  <xsl:variable name="bootstrap-success" select="$bootstrap-settings/entry[@name='bootstrap-success']"/>
  <xsl:variable name="bootstrap-danger" select="$bootstrap-settings/entry[@name='bootstrap-danger']"/>
  <xsl:variable name="bootstrap-warning" select="$bootstrap-settings/entry[@name='bootstrap-warning']"/>
  <xsl:variable name="bootstrap-info" select="$bootstrap-settings/entry[@name='bootstrap-info']"/>
  <xsl:variable name="bootstrap-light" select="$bootstrap-settings/entry[@name='bootstrap-light']"/>
  <xsl:variable name="bootstrap-dark" select="$bootstrap-settings/entry[@name='bootstrap-dark']"/>
  <xsl:variable name="bootstrap-link" select="$bootstrap-settings/entry[@name='bootstrap-link']"/>

  <xsl:variable name="bootstrap-primary-subtle" select="$bootstrap-settings/entry[@name='bootstrap-primary-subtle']"/>
  <xsl:variable
    name="bootstrap-primary-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-primary-subtle-text']"
  />
  <xsl:variable
    name="bootstrap-secondary-subtle"
    select="$bootstrap-settings/entry[@name='bootstrap-secondary-subtle']"
  />
  <xsl:variable
    name="bootstrap-secondary-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-secondary-subtle-text']"
  />
  <xsl:variable name="bootstrap-success-subtle" select="$bootstrap-settings/entry[@name='bootstrap-success-subtle']"/>
  <xsl:variable
    name="bootstrap-success-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-success-subtle-text']"
  />
  <xsl:variable name="bootstrap-danger-subtle" select="$bootstrap-settings/entry[@name='bootstrap-danger-subtle']"/>
  <xsl:variable
    name="bootstrap-danger-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-danger-subtle-text']"
  />
  <xsl:variable name="bootstrap-warning-subtle" select="$bootstrap-settings/entry[@name='bootstrap-warning-subtle']"/>
  <xsl:variable
    name="bootstrap-warning-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-warning-subtle-text']"
  />
  <xsl:variable name="bootstrap-info-subtle" select="$bootstrap-settings/entry[@name='bootstrap-info-subtle']"/>
  <xsl:variable
    name="bootstrap-info-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-info-subtle-text']"
  />
  <xsl:variable name="bootstrap-light-subtle" select="$bootstrap-settings/entry[@name='bootstrap-light-subtle']"/>
  <xsl:variable
    name="bootstrap-light-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-light-subtle-text']"
  />
  <xsl:variable name="bootstrap-dark-subtle" select="$bootstrap-settings/entry[@name='bootstrap-dark-subtle']"/>
  <xsl:variable
    name="bootstrap-dark-subtle-text"
    select="$bootstrap-settings/entry[@name='bootstrap-dark-subtle-text']"
  />

  <!-- Table Variables -->
  <xsl:variable
    name="bootstrap-table-primary-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-table-primary-bg']"
  />
  <xsl:variable
    name="bootstrap-table-primary-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-primary-color']"
  />
  <xsl:variable
    name="bootstrap-table-secondary-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-table-secondary-bg']"
  />
  <xsl:variable
    name="bootstrap-table-secondary-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-secondary-color']"
  />
  <xsl:variable
    name="bootstrap-table-success-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-table-success-bg']"
  />
  <xsl:variable
    name="bootstrap-table-success-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-success-color']"
  />
  <xsl:variable name="bootstrap-table-info-bg" select="$bootstrap-settings/entry[@name='bootstrap-table-info-bg']"/>
  <xsl:variable
    name="bootstrap-table-info-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-info-color']"
  />
  <xsl:variable
    name="bootstrap-table-warning-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-table-warning-bg']"
  />
  <xsl:variable
    name="bootstrap-table-warning-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-warning-color']"
  />
  <xsl:variable name="bootstrap-table-danger-bg" select="$bootstrap-settings/entry[@name='bootstrap-table-danger-bg']"/>
  <xsl:variable
    name="bootstrap-table-danger-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-danger-color']"
  />
  <xsl:variable name="bootstrap-table-light-bg" select="$bootstrap-settings/entry[@name='bootstrap-table-light-bg']"/>
  <xsl:variable
    name="bootstrap-table-light-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-light-color']"
  />
  <xsl:variable name="bootstrap-table-dark-bg" select="$bootstrap-settings/entry[@name='bootstrap-table-dark-bg']"/>
  <xsl:variable
    name="bootstrap-table-dark-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-dark-color']"
  />

  <!-- Button Variables -->
  <xsl:variable name="bootstrap-btn-primary-bg" select="$bootstrap-settings/entry[@name='bootstrap-btn-primary-bg']"/>
  <xsl:variable
    name="bootstrap-btn-primary-color"
    select="$bootstrap-settings/entry[@name='bootstrap-btn-primary-color']"
  />
  <xsl:variable
    name="bootstrap-btn-secondary-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-btn-secondary-bg']"
  />
  <xsl:variable
    name="bootstrap-btn-secondary-color"
    select="$bootstrap-settings/entry[@name='bootstrap-btn-secondary-color']"
  />
  <xsl:variable name="bootstrap-btn-success-bg" select="$bootstrap-settings/entry[@name='bootstrap-btn-success-bg']"/>
  <xsl:variable
    name="bootstrap-btn-success-color"
    select="$bootstrap-settings/entry[@name='bootstrap-btn-success-color']"
  />
  <xsl:variable name="bootstrap-btn-info-bg" select="$bootstrap-settings/entry[@name='bootstrap-btn-info-bg']"/>
  <xsl:variable name="bootstrap-btn-info-color" select="$bootstrap-settings/entry[@name='bootstrap-btn-info-color']"/>
  <xsl:variable name="bootstrap-btn-warning-bg" select="$bootstrap-settings/entry[@name='bootstrap-btn-warning-bg']"/>
  <xsl:variable
    name="bootstrap-btn-warning-color"
    select="$bootstrap-settings/entry[@name='bootstrap-btn-warning-color']"
  />
  <xsl:variable name="bootstrap-btn-danger-bg" select="$bootstrap-settings/entry[@name='bootstrap-btn-danger-bg']"/>
  <xsl:variable
    name="bootstrap-btn-danger-color"
    select="$bootstrap-settings/entry[@name='bootstrap-btn-danger-color']"
  />
  <xsl:variable name="bootstrap-btn-light-bg" select="$bootstrap-settings/entry[@name='bootstrap-btn-light-bg']"/>
  <xsl:variable name="bootstrap-btn-light-color" select="$bootstrap-settings/entry[@name='bootstrap-btn-light-color']"/>
  <xsl:variable name="bootstrap-btn-dark-bg" select="$bootstrap-settings/entry[@name='bootstrap-btn-dark-bg']"/>
  <xsl:variable name="bootstrap-btn-dark-color" select="$bootstrap-settings/entry[@name='bootstrap-btn-dark-color']"/>

  <!-- Badge Variables -->
  <xsl:variable
    name="bootstrap-badge-primary-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-primary-bg']"
  />
  <xsl:variable
    name="bootstrap-badge-primary-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-primary-color']"
  />
  <xsl:variable
    name="bootstrap-badge-secondary-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-secondary-bg']"
  />
  <xsl:variable
    name="bootstrap-badge-secondary-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-secondary-color']"
  />
  <xsl:variable
    name="bootstrap-badge-success-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-success-bg']"
  />
  <xsl:variable
    name="bootstrap-badge-success-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-success-color']"
  />
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-settings/entry[@name='bootstrap-badge-info-bg']"/>
  <xsl:variable
    name="bootstrap-badge-info-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-info-color']"
  />
  <xsl:variable
    name="bootstrap-badge-warning-bg"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-warning-bg']"
  />
  <xsl:variable
    name="bootstrap-badge-warning-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-warning-color']"
  />
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-settings/entry[@name='bootstrap-badge-danger-bg']"/>
  <xsl:variable
    name="bootstrap-badge-danger-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-danger-color']"
  />
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-settings/entry[@name='bootstrap-badge-light-bg']"/>
  <xsl:variable
    name="bootstrap-badge-light-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-light-color']"
  />
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-settings/entry[@name='bootstrap-badge-dark-bg']"/>
  <xsl:variable
    name="bootstrap-badge-dark-color"
    select="$bootstrap-settings/entry[@name='bootstrap-badge-dark-color']"
  />

  <xsl:variable name="bootstrap-spacing-0" select="$bootstrap-settings/entry[@name='bootstrap-spacing-0']"/>
  <xsl:variable name="bootstrap-spacing-1" select="$bootstrap-settings/entry[@name='bootstrap-spacing-1']"/>
  <xsl:variable name="bootstrap-spacing-2" select="$bootstrap-settings/entry[@name='bootstrap-spacing-2']"/>
  <xsl:variable name="bootstrap-spacing-3" select="$bootstrap-settings/entry[@name='bootstrap-spacing-3']"/>
  <xsl:variable name="bootstrap-spacing-4" select="$bootstrap-settings/entry[@name='bootstrap-spacing-4']"/>
  <xsl:variable name="bootstrap-spacing-5" select="$bootstrap-settings/entry[@name='bootstrap-spacing-5']"/>

  <xsl:variable name="bootstrap-border-color" select="$bootstrap-settings/entry[@name='bootstrap-border-color']"/>
  <xsl:variable name="bootstrap-border-width" select="$bootstrap-settings/entry[@name='bootstrap-border-width']"/>

  <xsl:variable name="bootstrap-rounded" select="$bootstrap-settings/entry[@name='bootstrap-rounded']"/>
  <xsl:variable name="bootstrap-rounded-0" select="$bootstrap-settings/entry[@name='bootstrap-rounded-0']"/>
  <xsl:variable name="bootstrap-rounded-1" select="$bootstrap-settings/entry[@name='bootstrap-rounded-1']"/>
  <xsl:variable name="bootstrap-rounded-2" select="$bootstrap-settings/entry[@name='bootstrap-rounded-2']"/>
  <xsl:variable name="bootstrap-rounded-3" select="$bootstrap-settings/entry[@name='bootstrap-rounded-3']"/>
  <xsl:variable name="bootstrap-rounded-4" select="$bootstrap-settings/entry[@name='bootstrap-rounded-4']"/>
  <xsl:variable name="bootstrap-rounded-5" select="$bootstrap-settings/entry[@name='bootstrap-rounded-5']"/>
  <xsl:variable name="bootstrap-rounded-circle" select="$bootstrap-settings/entry[@name='bootstrap-rounded-circle']"/>
  <xsl:variable name="bootstrap-rounded-pill" select="$bootstrap-settings/entry[@name='bootstrap-rounded-pill']"/>

  <xsl:variable name="bootstrap-h1-font-size" select="$bootstrap-settings/entry[@name='bootstrap-h1-font-size']"/>
  <xsl:variable name="bootstrap-h1-margin-top" select="$bootstrap-settings/entry[@name='bootstrap-h1-margin-top']"/>
  <xsl:variable
    name="bootstrap-h1-margin-bottom"
    select="$bootstrap-settings/entry[@name='bootstrap-h1-margin-bottom']"
  />
  <xsl:variable name="bootstrap-h2-font-size" select="$bootstrap-settings/entry[@name='bootstrap-h2-font-size']"/>
  <xsl:variable name="bootstrap-h2-margin-top" select="$bootstrap-settings/entry[@name='bootstrap-h2-margin-top']"/>
  <xsl:variable
    name="bootstrap-h2-margin-bottom"
    select="$bootstrap-settings/entry[@name='bootstrap-h2-margin-bottom']"
  />
  <xsl:variable name="bootstrap-h3-font-size" select="$bootstrap-settings/entry[@name='bootstrap-h3-font-size']"/>
  <xsl:variable name="bootstrap-h3-margin-top" select="$bootstrap-settings/entry[@name='bootstrap-h3-margin-top']"/>
  <xsl:variable
    name="bootstrap-h3-margin-bottom"
    select="$bootstrap-settings/entry[@name='bootstrap-h3-margin-bottom']"
  />
  <xsl:variable name="bootstrap-h4-font-size" select="$bootstrap-settings/entry[@name='bootstrap-h4-font-size']"/>
  <xsl:variable name="bootstrap-h4-margin-top" select="$bootstrap-settings/entry[@name='bootstrap-h4-margin-top']"/>
  <xsl:variable
    name="bootstrap-h4-margin-bottom"
    select="$bootstrap-settings/entry[@name='bootstrap-h4-margin-bottom']"
  />
  <xsl:variable name="bootstrap-h5-font-size" select="$bootstrap-settings/entry[@name='bootstrap-h5-font-size']"/>
  <xsl:variable name="bootstrap-h5-margin-top" select="$bootstrap-settings/entry[@name='bootstrap-h5-margin-top']"/>
  <xsl:variable
    name="bootstrap-h5-margin-bottom"
    select="$bootstrap-settings/entry[@name='bootstrap-h5-margin-bottom']"
  />
  <xsl:variable name="bootstrap-h6-font-size" select="$bootstrap-settings/entry[@name='bootstrap-h6-font-size']"/>
  <xsl:variable name="bootstrap-h6-margin-top" select="$bootstrap-settings/entry[@name='bootstrap-h6-margin-top']"/>
  <xsl:variable
    name="bootstrap-h6-margin-bottom"
    select="$bootstrap-settings/entry[@name='bootstrap-h6-margin-bottom']"
  />

  <xsl:variable
    name="bootstrap-display-1-font-size"
    select="$bootstrap-settings/entry[@name='bootstrap-display-1-font-size']"
  />
  <xsl:variable
    name="bootstrap-display-2-font-size"
    select="$bootstrap-settings/entry[@name='bootstrap-display-2-font-size']"
  />
  <xsl:variable
    name="bootstrap-display-3-font-size"
    select="$bootstrap-settings/entry[@name='bootstrap-display-3-font-size']"
  />
  <xsl:variable
    name="bootstrap-display-4-font-size"
    select="$bootstrap-settings/entry[@name='bootstrap-display-4-font-size']"
  />
  <xsl:variable
    name="bootstrap-display-5-font-size"
    select="$bootstrap-settings/entry[@name='bootstrap-display-5-font-size']"
  />
  <xsl:variable
    name="bootstrap-display-6-font-size"
    select="$bootstrap-settings/entry[@name='bootstrap-display-6-font-size']"
  />
  <xsl:variable
    name="bootstrap-display-font-weight"
    select="$bootstrap-settings/entry[@name='bootstrap-display-font-weight']"
  />
  <xsl:variable
    name="bootstrap-display-line-height"
    select="$bootstrap-settings/entry[@name='bootstrap-display-line-height']"
  />

  <xsl:variable
    name="bootstrap-table-striped-color"
    select="$bootstrap-settings/entry[@name='bootstrap-table-striped-color']"
  />

</xsl:stylesheet>
