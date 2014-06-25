<%@ taglib uri="/dspTaglib" prefix="dsp"%>

<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />

<dsp:page>

<dsp:form action="index.jsp" method="POST">
        <dsp:input bean="ProfileFormHandler.changePasswordSuccessURL" type="hidden"
			value="index.jsp" />
		<dsp:input bean="ProfileFormHandler.changePasswordErrorURL" type="hidden"
			value="passwordReset.jsp" />
		

   Old Password<dsp:input bean="ProfileFormHandler.value.oldpassword" maxsize="35" size="35"
        type="password"/><br/>
   New Password<dsp:input bean="ProfileFormHandler.value.password" maxsize="35" size="35"
         type="password"/><br/>
   Confirm New Password<dsp:input bean="ProfileFormHandler.value.confirmpassword" maxsize="35" size="35"
       type="password"/><br/>
   <dsp:input bean="ProfileFormHandler.changePassword" type="submit" value="Save New
            Password"/>
            
            </dsp:form>
</dsp:page>