<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/students">
    <html>
      <head>
        <title>Student Directory</title>
        <style>
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
          th { background-color: #f2f2f2; }
          .highlight { background-color: yellow; }
        </style>
      </head>
      <body>
        <h2>Student Directory</h2>
        <table>
          <tr>
            <th>NAME</th>
            <th>AGE</th>
            <th>YEAR LVL</th>
            <th>COURSE</th>
          </tr>

          <xsl:for-each select="student[year != '']">
            <xsl:sort select="name" />
            <tr>
              <xsl:if test="year = ''">
                <xsl:attribute name="class">highlight</xsl:attribute>
              </xsl:if>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="age"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="course"/></td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
