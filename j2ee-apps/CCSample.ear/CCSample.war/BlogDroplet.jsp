<%@ taglib uri="/dspTaglib" prefix="dsp"%>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />

<dsp:page>
<dsp:droplet name="/com/ccsample/droplet/BlogDroplet"> 
    <dsp:oparam name="ousername">
       <dsp:droplet name="/atg/dynamo/droplet/ForEach">
	<dsp:param name="array" param="items" />
	<dsp:oparam name="output">
	  
	  <dsp:form method="POST" action="">
	  <tr>
	            <td>Blog Id:<dsp:valueof param="element.repositoryId"/><br/></td>
                <td>Blog Name:<dsp:valueof param="element.name"/><br/></td>	
                <td>Blog Category:<dsp:valueof param="element.category"/><br/></td>
	            <td>Blog Url:<dsp:valueof param="element.url"/><br/></td> 
	             

	              <dsp:a href="edit.jsp">edit
                      <dsp:param name="blogId" param="element.repositoryId"/>
                      <td><dsp:param name="blogName" param="element.name"/></td>	
                      <td><dsp:param name="blogCategory" param="element.category"/></td>
	                  <td><dsp:param name="blogUrl" param="element.url"/></td>
                  </dsp:a>
                  <td>
	              </td>
	            <td><dsp:a href="delete.jsp">delete
	                  <dsp:param name="blogId" param="element.repositoryId"/>
                      <td><dsp:param name="blogName" param="element.name"/></td>	
                      <td><dsp:param name="blogCategory" param="element.category"/></td>
	                  <td><dsp:param name="blogUrl" param="element.url"/></td><br/>
	                  <br/>
	            </dsp:a></td>
	           
                 <td>
                 <dsp:droplet name="/atg/dynamo/droplet/ForEach">
		            <dsp:param name="array" param="element.Post_multi"/>
	                  <dsp:oparam name="output">
	                     Post ID:<dsp:valueof param="element.repositoryId"/><br/>
		                 Post Name:<dsp:valueof param="element.name"/><br/>
		                 Post text:<dsp:valueof param="element.text"/><br/>
		                 
		                 <br/>
                            
		                 <dsp:droplet name="/atg/dynamo/droplet/ForEach">
		                      <dsp:param name="array" param="element.Comment_multi"/>
	                              <dsp:oparam name="output">
	                              Comment ID:<dsp:valueof param="element.repositoryId"/><br/>
		                          Comment email:<dsp:valueof param="element.email"/><br/>
		                          Comment text:<dsp:valueof param="element.text"/><br/>
		                      
		                          <br/>
		                         </dsp:oparam>
		                 </dsp:droplet>
		                 
		                 <br/>
		                 <br/>
		                 
		            </dsp:oparam>
		        </dsp:droplet>
		        <br/>
		        <br/>
		        <br/>
                </td>
                
                
                   
               <%--  <dsp:input type="hidden" bean="customFormHandler.successUrl" value="BlogDroplet.jsp"/>
                <dsp:input type="hidden" bean="customFormHandler.failureUrl" value="index.jsp"/>  
                
                <dsp:input bean="customFormHandler.update" type="submit" value="updateItem"/> --%>
	</tr> 
	
	        
         </dsp:form>
       </dsp:oparam>
      </dsp:droplet>
   </dsp:oparam>
</dsp:droplet>

<dsp:form method="POST" action="index.jsp">
           <tr>    
			    <td align="left"><dsp:input bean="ProfileFormHandler.logout"
						type="submit" value="Logout" /></td>
		   </tr>
</dsp:form>


</dsp:page>
