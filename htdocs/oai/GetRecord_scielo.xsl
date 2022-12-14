<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:include href="oai_scielo_common.xsl"/>
	
	<xsl:output method="xml" encoding="UTF-8" version="1.0" indent="yes" omit-xml-declaration="yes"/>
	
	<xsl:template match="ERROR">
		<error code="idDoesNotExist">No matching identifier</error>
	</xsl:template>

	<xsl:template match="ARTICLE">
		<GetRecord>
			<xsl:call-template name="format_article"/>
		</GetRecord>
	</xsl:template>
			
</xsl:stylesheet>
