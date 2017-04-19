<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" />
   <xsl:template match="/">
      [
      <xsl:for-each select="kadernictvi/kadernici/kadernik[hodnoceni_k >= 3]">
         <xsl:if test="vek_k = 25 or 28 ">
         {
			"Jméno": "<xsl:value-of select="kadernik_jm" />",
			"Příjmení": "<xsl:value-of select="kadernik_pr" />",
			"Pohlaví": "<xsl:value-of select="pohlavi_k" />",
			"Věk": "<xsl:value-of select="vek_k" />",
			"Osobní hodnocení": "<xsl:value-of select="hodnoceni_k" />",
			"Salon": "<xsl:value-of select="salon" />",
			"Místo": "<xsl:value-of select="@misto" />",
			"Doba provozovny": "<xsl:value-of select="dny" />",
			"Od": "<xsl:value-of select="od" />",
			"Od": "<xsl:value-of select="do" />",
			"Zákazník": "<xsl:value-of select="zakaznik" />",
			"Stříh pro": "<xsl:value-of select="strih_poh" />",
			"Osobní rozvrh": "<xsl:value-of select="os_roz" />",
			}
         <xsl:if test="position() != last()">,</xsl:if>
         </xsl:if>
      </xsl:for-each>
      ]
   </xsl:template>
</xsl:stylesheet>