<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <style>
        body {
            margin-left:250px;
           
          }
        h1{
            border: 1px solid black;
            text-align: center;
            width: 70%;
            background-color: black;
            color:white;
        }
        table {
            border: 1px solid black;
          border-collapse: collapse;
          width: 70%;
         
        }
        th, td {
        
          border: 1px solid black;
          padding: 12px;
          text-align:centre;
        }
        tr:nth-child(odd) {
            background-color: lightgray;
          }
          tr:nth-child(even) {
            background-color: white;
          }
      </style>
    </head>
    <body>
        
      
      <table>
        <h1>Stationary Products</h1>
        <tr>
           
          <th style="text-align:center">Product ID</th>
          <th style="text-align:center">Product Name</th>
          <th style="text-align:center">Quality</th>
          <th style="text-align:center">Price per Unit</th>
          <th style="text-align:center">Price per Dozen</th>
          <th style="text-align:center">In Stock</th>
        </tr>
        
        <xsl:apply-templates select="html/stationary"/>
      </table>
    </body>
   
  </html>
</xsl:template>

<xsl:template match="stationary">
  <tr>
    <td style="text-align:center"><xsl:value-of  select="productid"/></td>
    <td style="text-align:center"><xsl:value-of select="productname"/></td>
    <td style="text-align:center"><xsl:value-of select="quality"/></td>
    <td style="text-align:center"><xsl:value-of select="priceunit"/></td>
    <td style="text-align:center"><xsl:value-of select="priceperdozen"/></td>
    <td style="text-align:center"><xsl:value-of select="instock"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
