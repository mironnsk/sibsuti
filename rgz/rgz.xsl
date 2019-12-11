<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
	<head>
		<title>РГЗ</title>
	</head>
	<body>
		<h2>РГЗ</h2>
		<h3>Выполнил:  Мирошников Дмитрий Юрьевич</h3>
		<h3>Группа: ИП-74</h3>
		<h3>Вариант: 1</h3>
		<hr/>
		<xsl:apply-templates/>
	</body>
</html>
</xsl:template>
<xsl:template match="hiblock">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="page">
	<hr/>
	<h2>Станица <xsl:value-of select="@num"/></h2>
	<hr/>
</xsl:template>

</xsl:stylesheet>
