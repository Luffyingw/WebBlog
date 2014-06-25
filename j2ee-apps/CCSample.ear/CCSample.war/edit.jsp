<%@ taglib uri="/dspTaglib" prefix="dsp"%>
<dsp:page>
<HTML>
<HEAD>
<TITLE>edit</TITLE>
</HEAD>
<BODY>

<dsp:importbean bean="/com/ctdc/training/customFormHandler"/>
<%-- <dsp:droplet name="/com/ccsample/droplet/BlogDroplet"> 
    <dsp:oparam name="ousername">
       <dsp:droplet name="/atg/dynamo/droplet/ForEach">
	<dsp:param name="array" param="items" />
  <dsp:param name="blogId" param="element.repositoryId" />
	 <dsp:oparam name="output">
	  
	 <dsp:form method="POST" action=""> --%>
<dsp:form action="BlogDroplet.jsp">
               
                   <%-- <dsp:getvalueof var="blogId" param="blogId" scope="request"/>
                   <c:out value="${blogId}"/> --%>
                <td>Blog Id:<dsp:valueof param="blogId"/><br/>
                <td>Blog Name:<dsp:valueof param="blogName"/><br/>
                <td>Blog Category:<dsp:valueof param="blogCategory"/><br/>
                <td>Blog Url:<dsp:valueof param="blogUrl"/><br/>
                  
                  <br/>
                  
                  <td>Blog Id:<dsp:input bean="customFormHandler.blogId" type="text" paramvalue="blogId"/><br/>
                  <td>Blog Name:<dsp:input bean="customFormHandler.name" type="text" paramvalue="blogName"/><br/>
                 <td> Blog Category:<dsp:input bean="customFormHandler.category" type="text" paramvalue="blogCategory"/><br/>
                  <td>Blog Url:<dsp:input bean="customFormHandler.url" type="text" paramvalue="blogUrl"/><br/>
                  
            
                  
                 <dsp:input bean="customFormHandler.update" type="submit" value="updateItem"/>

	             <%-- <dsp:valueof param="element.repositoryId"/>
		          <td><dsp:valueof param="element.name"/></td>	
                <td><dsp:valueof param="element.category"/></td>
	            <td><dsp:valueof param="element.url"/></td> --%>
	            


</dsp:form>
<%--   
     </dsp:form>
		    </dsp:oparam>
		</dsp:droplet>
      </dsp:oparam>
</dsp:droplet>
 --%>

</dsp:page>

