<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128535152/12.1.7%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4243)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [EditFormContent.aspx](./CS/WebSite/EditFormContent.aspx) (VB: [EditFormContent.aspx](./VB/WebSite/EditFormContent.aspx))
* [EditFormContent.aspx.cs](./CS/WebSite/EditFormContent.aspx.cs) (VB: [EditFormContent.aspx.vb](./VB/WebSite/EditFormContent.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to print an edit form content
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4243/)**
<!-- run online end -->


<p>This example demonstrates how to print the ASPxGridView edit form content.</p><p>To accomplish this task, it is necessary to put the edit form content you want to print onto a separate page and put the <a href="http://www.w3schools.com/tags/tag_iframe.asp"><u>iframe</u></a> linked to the content page into the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewTemplates_EditFormtopic"><u>EditForm</u></a> template. Then you can print the iframe content by using the client-side <a href="http://www.w3schools.com/jsref/met_win_print.asp"><u>print</u></a> method. To pass values to the content page and back, I have used the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument8282"><u>ASPxHiddenField</u></a> control.</p>


<h3>Description</h3>

<p><br />
</p>

<br/>


