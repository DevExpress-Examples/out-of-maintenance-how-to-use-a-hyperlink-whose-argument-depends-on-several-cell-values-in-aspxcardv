<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128530448/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T279017)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Default2.aspx](./CS/Default2.aspx) (VB: [Default2.aspx](./VB/Default2.aspx))
* [Default2.aspx.cs](./CS/Default2.aspx.cs) (VB: [Default2.aspx.vb](./VB/Default2.aspx.vb))
<!-- default file list end -->
# How to use a hyperlink whose argument depends on several cell values in ASPxCardView
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t279017/)**
<!-- run online end -->


It is a frequent situation when a developer must include several field values in a hyperlink shown in CardView column cells. The best solution to this problem is to use templates. The attached example shows how this can be done and suggests two similar approaches:<br /><br />1) In a simple case, the href parameter of the <a> element is defined by the KeyValue of the processed card.<br />2) In a complex case, the href parameter of the <a> element is defined in the server side GetCardValue method.


<h3>Description</h3>

&nbsp;

<br/>


