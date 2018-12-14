<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>

<c:set var="formFieldNameVar" value="${userFilterOptionVar.formFieldNames[0]}" />
<div class="my-2">
    <div class="control-group">
        <h6 class="font-big" for="<c:out value="${formFieldNameVar}" />"><wp:i18n key="FULL_TEXT_SEARCH" /></h6>
        <div class="controls">
            <input name="<c:out value="${formFieldNameVar}" />" id="<c:out value="${formFieldNameVar}" />" value="${userFilterOptionVar.formFieldValues[formFieldNameVar]}" type="text" class="input-xlarge inputCustom"/>
        </div>
    </div>
</div>
