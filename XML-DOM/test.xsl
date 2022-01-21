<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body bgcolor="#6ecce6">
		
		<h1 style="text-align:center"><u>Tables</u></h1>
		<table border="2" align="left" bgcolor="white" cellpadding="5">
		<caption><h1 style="text-align:left;">User Details</h1></caption>
		<tr bgcolor="RED" align="center">
		<th>User ID</th>
		<th>Name</th>
		<th>Designation</th>
		<th>Age</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Users">
		<xsl:sort select="name"></xsl:sort>
		<tr align="center">
		<td>
			<xsl:value-of select="uid"></xsl:value-of>
		</td>
		<td align="left">
			<xsl:value-of select="name"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="dsgn"></xsl:value-of>
		</td>
		<td>
			<xsl:value-of select="age"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
<!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> 
		<h1 style="text-align:center;">Questions Details</h1>
		<table border="2" align="center" cellpadding="5">
		<tr bgcolor="red">
		<th>Question ID</th>
		<th>Question Text</th>
		<th>Upvotes</th>
		<th>Downvotes</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Questions">
		<xsl:sort select="qid"></xsl:sort>
		<xsl:if test="qupvote &gt; 20">
		<tr bgcolor="violet">
			<td align="center">
				<xsl:value-of select="qid"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="qtext"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="qupvote"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="qdownvote"></xsl:value-of>
			</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		
<!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> 
		<h1 style="text-align:center">Answers Details</h1>	
		<table border="2" align="center" cellpadding="5">
		<tr bgcolor="red">
		<th>Answer ID</th>
		<th>Question ID</th>
		<th>Answers </th>
		<th>Upvotes</th>
		<th>Downvotes</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Answers">
		<xsl:sort select="aupvotes"></xsl:sort>
		<tr bgcolor="yellow">
			<td align="center">
				<xsl:value-of select="aid"></xsl:value-of>
			</td>
			<td align="center">
				<xsl:value-of select="qid"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="atext"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="aupvote"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="adownvote"></xsl:value-of>
			</td>
		</tr>
		</xsl:for-each>
		</table>

<!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> 
		<h1 style ="text-align:left">Hashtags</h1>
		<table border="5" align="left" cellpadding="5">
		<tr bgcolor="green">
		<th>Tag ID</th>
		<th>Hashtag</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Hashtags">
		<xsl:sort select="hid"></xsl:sort>
		<tr bgcolor="blue">
			<td>
				<xsl:value-of select="hid"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="htext"></xsl:value-of>
			</td>
		</tr>
		</xsl:for-each>
		</table>
<!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> 
		<h1 style ="text-align:center; color=red">Replies</h1>
		<table border="5" align="center" cellpadding="5">
		<tr  bgcolor="red">
		<th>Reply ID</th>
		<th>Replies</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Replies">
		<xsl:sort select="aupvotes"></xsl:sort>
		<tr bgcolor="orange">
			<td align="center">
				<xsl:value-of select="rid"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="rtext"></xsl:value-of>
			</td>
		</tr>
		</xsl:for-each>
		</table>
<!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> 
		<h1 style ="text-align:right">Categories</h1>
		<table border="5" align="right" cellpadding="5">
		<tr bgcolor="magenta">
		<th>Tag ID</th>
		<th>Hashtag</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Categories">
		<xsl:sort select="cid"></xsl:sort>
		<tr>
			<td>
				<xsl:value-of select="cid"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="ctext"></xsl:value-of>
			</td>
		</tr>
		</xsl:for-each>
		</table>
		
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>