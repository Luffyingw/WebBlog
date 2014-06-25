<%@ taglib uri="/dspTaglib" prefix="dsp"%>
<dsp:importbean bean="/com/ctdc/training/ComponentA"/>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />

<dsp:page>

<h2>Welcome to Citrisys ATG Training Application!!!</h2>

<dsp:form action="create_blog.jsp" method="POST">
		<dsp:input bean="ProfileFormHandler.loginSuccessURL" type="hidden"
			value="create_blog.jsp" />
		<dsp:input bean="ProfileFormHandler.loginErrorURL" type="hidden"
			value="login_failed.jsp" />
		
<%-- Component A FirstName: <dsp:valueof bean="ComponentA.firstName"/> <br/>
Component A LastName: <dsp:valueof bean="ComponentA.lastName"/> <br/> --%>

Login: <br/>
User Name:<dsp:input bean="ProfileFormHandler.value.login" size="25" type="text"/><br/>
<%-- LastName: <dsp:input bean="ProfileFormHandler.value.firstname" size="25" type="text"/><br/> --%>
password: <dsp:input bean="ProfileFormHandler.value.password" size="25" type="password"/><br/>
 <tr>
	 <td align="right"><dsp:input bean="ProfileFormHandler.login"
						type="submit" value="Login" /></td>
<tr/> <br/>  
    
     <dsp:a href="register.jsp">register</dsp:a><br/>
     <dsp:a href="passwordReset.jsp">forget your password</dsp:a>
     

</dsp:form>
</dsp:page>

