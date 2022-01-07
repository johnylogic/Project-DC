<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		
		<h1 style="text-align:center">User Details</h1>
		<table border="2" align="center">
		<tr bgcolor="cyan">
		<th>User ID</th>
		<th>Name</th>
		<th>Designation</th>
		<th>Age</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Users">
		<xsl:sort select="name"></xsl:sort>
		<tr>
		<td>
			<xsl:value-of select="uid"></xsl:value-of>
		</td>
		<td>
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
		<h1 style="text-align:center; color=blue">Questions Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Question ID</th>
		<th>Question Text</th>
		<th>Upvotes</th>
		<th>Downvotes</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Questions">
		<xsl:sort select="qid"></xsl:sort>
		<xsl:if test="qupvote &gt; 20">
		<tr>
			<td>
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
		<table border="2" align="center">
		<tr>
		<th>Answer ID</th>
		<th>Question ID</th>
		<th>Answers </th>
		<th>Upvotes</th>
		<th>Downvotes</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Answers">
		<xsl:sort select="aupvotes"></xsl:sort>
		<tr bgcolor="#9acd32">
			<td>
				<xsl:value-of select="aid"></xsl:value-of>
			</td>
			<td>
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
		<h1 style ="text-align:center; color=red">Replies</h1>
		<table border="5" align="center">
		<tr>
		<th>Reply ID</th>
		<th>Replies</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Replies">
		<xsl:sort select="aupvotes"></xsl:sort>
		<tr bgcolor="red">
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
		<h1 style ="text-align:left">Hashtags</h1>
		<table border="5" align="left">
		<tr bgcolor="magenta">
		<th>Tag ID</th>
		<th>Hashtag</th>
		</tr>
		<xsl:for-each select="Discussion-Cube/Hashtags">
		<xsl:sort select="hid"></xsl:sort>
		<tr>
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
		<h1 style ="text-align:center">Categories</h1>
		<table border="5" align="center">
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
		
		<h2>Employee Details</h2>
  		<xsl:apply-templates/>
		
		</body>
		</html>
	</xsl:template>
	<!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> <!--  --> <!--  --> <!--  --> <!--  -->  <!--  --> <!--  --> 
	
<xsl:template match="Users">
  <p>
  <xsl:apply-templates select="name"/>
  <xsl:apply-templates select="dsgn"/>
  </p>
</xsl:template>

<xsl:template match="name">
  User Name: <span style="color:Red">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="dsgn">
  Designation <span style="color:Blue">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>
	
</xsl:stylesheet>