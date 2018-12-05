<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:info key="currentLang" var="currentLang" />


<div class="my-2">
    <h3 class="font-big" >
        <c:set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
        <wp:i18n key="${i18n_Attribute_Key}" />
    </h3>

    <div class="control-group">
        <c:set var="formFieldStartNameVar" value="${userFilterOptionVar.formFieldNames[0]}" />
        <label for="<c:out value="${formFieldStartNameVar}" />" class="control-label">
            <wp:i18n key="DATE_FROM" />
        </label>
        <div class="controls">
            <input id="<c:out value="${formFieldStartNameVar}" />" name="<c:out value="${formFieldStartNameVar}" />" value="${userFilterOptionVar.formFieldValues[formFieldStartNameVar]}" type="text" data-isdate="true" class="input-xlarge" />
        </div>
    </div>
    <div class="control-group">
        <c:set var="formFieldEndNameVar" value="${userFilterOptionVar.formFieldNames[1]}" />
        <label for="<c:out value="${formFieldEndNameVar}" />" class="control-label">
            <wp:i18n key="DATE_TO" />
        </label>
        <div class="controls">
            <input id="<c:out value="${formFieldEndNameVar}" />" name="<c:out value="${formFieldEndNameVar}" />" value="${userFilterOptionVar.formFieldValues[formFieldEndNameVar]}" type="text" data-isdate="true" class="input-xlarge" />
        </div>
    </div>
</div>


