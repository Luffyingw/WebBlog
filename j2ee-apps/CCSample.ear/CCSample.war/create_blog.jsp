<%@ taglib uri="/dspTaglib" prefix="dsp"%>
<dsp:importbean bean="/com/ctdc/training/ComponentA"/>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />

<dsp:page>

   <h2>Welcome</h2>
   <dsp:form action="index.jsp" method="POST">
            <td>Back to Mainpage</td><br/>
            FirstName: <dsp:valueof bean="ProfileFormHandler.value.lastname"/><br/>
            LastName: <dsp:valueof bean="ProfileFormHandler.value.firstname"/><br/>
            
            
            <td><dsp:a href="customFormHandler.jsp">create your new blog</dsp:a></td><br/>
            <td><dsp:a href="BlogDroplet.jsp">view your blogs</dsp:a></td>
            <table width="400" cellspacing="20">
            <tr>
           
			    
			    <td align="left"><dsp:input bean="ProfileFormHandler.logout"
						type="submit" value="Logout" /></td>
		   </tr>
		   </table>
		   
	</dsp:form>
</dsp:page>
