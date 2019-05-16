<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:info key="currentLang" var="currentLang" />

<script src="<wp:resourceURL />static/js/gijgo.min.js"></script>
<link rel="stylesheet" href="<wp:resourceURL />static/css/gijgo.min.css" rel="stylesheet">
<script src="<wp:resourceURL />static/js/messages.it-it.js"></script>

<div class="my-2">
    <h6 class="font-big" >
        <c:set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
        <wp:i18n key="${i18n_Attribute_Key}" />
    </h6>

    <c:set var="formFieldStartNameVar" value="${userFilterOptionVar.formFieldNames[0]}" />
    <label for="<c:out value="${formFieldStartNameVar}" />" class="control-label">
        <wp:i18n key="DATE_FROM" />
    </label>

    <input id="<c:out value="${formFieldStartNameVar}" />" name="<c:out value="${formFieldStartNameVar}" />" value="${userFilterOptionVar.formFieldValues[formFieldStartNameVar]}" type="text" data-isdate="true" class="filterDate" />

    <c:set var="formFieldEndNameVar" value="${userFilterOptionVar.formFieldNames[1]}" />
    <label for="<c:out value="${formFieldEndNameVar}" />" class="control-label">
        <wp:i18n key="DATE_TO" />
    </label>

    <input id="<c:out value="${formFieldEndNameVar}" />" name="<c:out value="${formFieldEndNameVar}" />" value="${userFilterOptionVar.formFieldValues[formFieldEndNameVar]}" type="text" data-isdate="true" class="filterDate2" />

</div>

<script>
    $(document).ready(function () {
        $('#date_dateEndFieldName_frame9').datepicker({
            format: 'dd/mm/yyyy',
            showOtherMonths: true,
            locale: 'it-it'
        });
        $('#date_dateStartFieldName_frame9').datepicker({
            format: 'dd/mm/yyyy',
            showOtherMonths: true,
            locale: 'it-it'
        });
    });
</script>


