<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="2" align="center" color="green" cellpadding="5">
		<tr bgcolor="red">
		<th>User ID</th>
		<th>Name</th>
		<th>Age</th>
		<th>Salary</th>
		<th>Email</th>
		<th>MobNum</th>
		<th>Designation</th>
		<th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<xsl:sort select="Emp-id"></xsl:sort>
		<tr align='center'>
		<td>
			<xsl:value-of select="Emp-id"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-name"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-age"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-salary"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-emailid"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-phonenum"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="Emp-designation"></xsl:value-of>
		</td>
		<xsl:if test="Emp-age &lt; 40">
            <td>Developer</td>
        </xsl:if>
        <xsl:if test="Emp-age &gt; 41">
            <td>Team Leader</td>
        </xsl:if>
        <xsl:if test="Emp-age &gt; 50">
            <td>Associate Project Manager</td>
        </xsl:if>

		</tr>
		</xsl:for-each>
		</table>
	
</body>
</html>
</xsl:template>
	
</xsl:stylesheet>