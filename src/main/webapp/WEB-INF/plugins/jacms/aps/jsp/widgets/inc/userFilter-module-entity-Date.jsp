<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:info key="currentLang" var="currentLang" />

<script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<script src="https://unpkg.com/gijgo@1.9.11/js/messages/messages.it-it.js" type="text/javascript"></script>




<div class="my-2">
    <h6 class="font-big" >
        <c:set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
        <wp:i18n key="${i18n_Attribute_Key}" />
    </h6>

    <!--<div class="control-group">-->
    <c:set var="formFieldStartNameVar" value="${userFilterOptionVar.formFieldNames[0]}" />
    <label for="<c:out value="${formFieldStartNameVar}" />" class="control-label">
        <wp:i18n key="DATE_FROM" />
    </label>
    <!--<div class="controls">-->
    <input id="<c:out value="${formFieldStartNameVar}" />" name="<c:out value="${formFieldStartNameVar}" />" value="${userFilterOptionVar.formFieldValues[formFieldStartNameVar]}" type="text" data-isdate="true" class="filterDate" />
    <!--</div>-->
    <!--</div>-->
    <!--<div class="control-group">-->
    <c:set var="formFieldEndNameVar" value="${userFilterOptionVar.formFieldNames[1]}" />
    <label for="<c:out value="${formFieldEndNameVar}" />" class="control-label">
        <wp:i18n key="DATE_TO" />
    </label>
    <!--<div class="controls">-->
    <input id="<c:out value="${formFieldEndNameVar}" />" name="<c:out value="${formFieldEndNameVar}" />" value="${userFilterOptionVar.formFieldValues[formFieldEndNameVar]}" type="text" data-isdate="true" class="filterDate2" />
    <!--</div>-->
    <!--</div>-->
</div>

<script>
    $(document).ready(function () {
        $('#date_dateEndFieldName_frame9').datepicker({
            showOtherMonths: true,
            locale: 'it-it'
        });
        $('#date_dateStartFieldName_frame9').datepicker({
            showOtherMonths: true,
            locale: 'it-it'
        });
    });
</script>
