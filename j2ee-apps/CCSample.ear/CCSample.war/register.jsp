<%@taglib uri="/dspTaglib" prefix="dsp"%>

<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />

<dsp:page>

	<dsp:form action="create_blog.jsp" method="POST">
		<dsp:input bean="ProfileFormHandler.createSuccessURL" type="hidden"
			value="create_blog.jsp" />
		<dsp:input bean="ProfileFormHandler.createErrorURL" type="hidden"
			value="register.jsp" />
		<dsp:input bean="ProfileFormHandler.cancelURL" type="hidden"
			value="register.jsp" />


		<table width="400" cellspacing="20">
			<tr>
				<td>First Name</td>
				<td align="right"><dsp:input
						bean="ProfileFormHandler.value.firstname" type="text" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td align="right"><dsp:input
						bean="ProfileFormHandler.value.lastname" type="text" /></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td align="right"><dsp:input
						bean="ProfileFormHandler.value.login" type="text" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td align="right"><dsp:input
						bean="ProfileFormHandler.value.password" type="password" /></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td align="right"><dsp:input
						bean="ProfileFormHandler.value.confirmpassword" type="password" /></td>
			</tr>
			<tr>
				<td>Email Address</td>
				<td align="right"><dsp:input
						bean="ProfileFormHandler.value.email" type="text" /></td>
			</tr>
			<tr>
			    <%-- <td align="right"><dsp:input bean="ProfileFormHandler.logout"
						type="submit" value="Logout" /></td>
				<td align="right"><dsp:input bean="ProfileFormHandler.cancel"
						type="submit" value="Cancel" /></td> --%>
				<td align="left"><dsp:input bean="ProfileFormHandler.create"
						type="submit" value="Register" /></td>
			</tr>
		</table>
	</dsp:form>

</dsp:page>
