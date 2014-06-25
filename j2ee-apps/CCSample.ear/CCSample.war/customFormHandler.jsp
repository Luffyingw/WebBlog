<%@ taglib uri="/dspTaglib" prefix="dsp"%>
<dsp:page>
<HTML>
<HEAD>
<TITLE>Blog</TITLE>
</HEAD>
<dsp:importbean bean="/com/ctdc/training/customFormHandler"/>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" /> 
<BODY>
<dsp:form action="BlogDroplet.jsp">
    Name:<dsp:input bean="customFormHandler.name" size="25" type="text"/><br/>
    Url:<dsp:input bean="customFormHandler.url" size="25" type="text"/><br/>
    Category:<dsp:input bean="customFormHandler.category" size="25" type="text"/><br/>
    <%-- ID:<dsp:input bean="customFormHandler.blog_id" size="25" type="text"/><br/> --%>
    
      
<%--     Name:<dsp:valueof bean="customFormHandler.name"/><br/> --%>
<%--     Url:<dsp:valueof bean="customFormHandler.url"/><br/> --%>
<%--     Category:<dsp:valueof bean="customFormHandler.category"/> <br/> --%>

    <br/>
    <br/>
    
    PostName:<dsp:input bean="customFormHandler.postName" size="25" type="text"/><br/>
    Text:<dsp:input bean="customFormHandler.text" size="25" type="text"/><br/>
    <br/>
    email1:<dsp:input bean="customFormHandler.Comment_email" size="25" type="text"/><br/>
    comment1:<dsp:input bean="customFormHandler.Comment_text" size="25" type="text"/><br/>
    <%-- email2:<dsp:input bean="customFormHandler.Comment_email" size="25" type="text"/><br/>
    comment2:<dsp:input bean="customFormHandler.Comment_text" size="25" type="text"/><br/> --%>
    
    <br/>
    <br/>
    <br/>
    
    PostName2:<dsp:input bean="customFormHandler.postName" size="25" type="text"/><br/>
    Text2:<dsp:input bean="customFormHandler.text" size="25" type="text"/><br/>
    
    <br/>
    email1:<dsp:input bean="customFormHandler.Comment_email" size="25" type="text"/><br/>
    comment1:<dsp:input bean="customFormHandler.Comment_text" size="25" type="text"/><br/>
    <%-- email2:<dsp:input bean="customFormHandler.Comment_email" size="25" type="text"/><br/>
    comment2:<dsp:input bean="customFormHandler.Comment_text" size="25" type="text"/><br/> --%>
    <br/>
    
       <dsp:input type="hidden" bean="customFormHandler.successUrl" value="BlogDroplet.jsp"/>
       <dsp:input type="hidden" bean="customFormHandler.failureUrl" value="index.jsp"/>      
       
       <dsp:input bean="customFormHandler.create" type="submit" value="createItem"/> 
<%--        <dsp:input bean="customFormHandler.update" type="submit" value="updateItem"/> --%>
<%--        <dsp:input bean="customFormHandler.delete" type="submit" value="deleteItem"/> --%>
</dsp:form>

<dsp:form method="POST" action="index.jsp">
           <tr>    
			    <td align="left"><dsp:input bean="ProfileFormHandler.logout"
						type="submit" value="Logout" /></td>
		   </tr>
</dsp:form>

</BODY>
</HTML>
</dsp:page>
