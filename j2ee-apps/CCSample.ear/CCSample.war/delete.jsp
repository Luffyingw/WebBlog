<%@ taglib uri="/dspTaglib" prefix="dsp"%>
<dsp:page>
<HTML>
<HEAD>
<TITLE>delete</TITLE>
</HEAD>
<BODY>
<dsp:importbean bean="/com/ctdc/training/customFormHandler"/>
               <dsp:form action="BlogDroplet.jsp">
                  <td>Blog Id:<dsp:valueof param="blogId"/><br/> 
                  <td>Blog Name:<dsp:valueof param="blogName"/><br/>
                  <td>Blog Category:<dsp:valueof param="blogCategory"/><br/>
                  <td>Blog Url:<dsp:valueof param="blogUrl"/><br/>
                  
                  Blog Id:<dsp:input bean="customFormHandler.blogId" type="text" paramvalue="blogId"/>
                  <br/>
                  <dsp:input bean="customFormHandler.delete" type="submit" value="deleteItem"/>
               </dsp:form>
               
 </dsp:page>