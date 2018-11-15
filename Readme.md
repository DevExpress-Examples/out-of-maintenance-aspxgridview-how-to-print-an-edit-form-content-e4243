<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [EditFormContent.aspx](./CS/WebSite/EditFormContent.aspx) (VB: [EditFormContent.aspx](./VB/WebSite/EditFormContent.aspx))
* [EditFormContent.aspx.cs](./CS/WebSite/EditFormContent.aspx.cs) (VB: [EditFormContent.aspx](./VB/WebSite/EditFormContent.aspx))
<!-- default file list end -->
# ASPxGridView - How to print an edit form content


<p>This example demonstrates how to print the ASPxGridView edit form content.</p><p>To accomplish this task, it is necessary to put the edit form content you want to print onto a separate page and put the <a href="http://www.w3schools.com/tags/tag_iframe.asp"><u>iframe</u></a> linked to the content page into the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewTemplates_EditFormtopic"><u>EditForm</u></a> template. Then you can print the iframe content by using the client-side <a href="http://www.w3schools.com/jsref/met_win_print.asp"><u>print</u></a> method. To pass values to the content page and back, I have used the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument8282"><u>ASPxHiddenField</u></a> control.</p>

<br/>


