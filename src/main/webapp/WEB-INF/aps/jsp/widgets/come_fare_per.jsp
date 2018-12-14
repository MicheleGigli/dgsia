<%@ taglib prefix="mytld" uri="/WEB-INF/tld/myTLD.tld" %>
<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<mytld:categories var="contentList" />--%>
<wp:currentWidget param="config" configParam="categoryRoot" var="categoryRootVar"/>

<script>
    $(document).ready(function () {
        let placeholder = $('#resultPlaceholder');
        $(placeholder).hide();
        let dropdown = $('#dropdown1');
        $.ajax({
            url: "<wp:info key="systemParam" paramName="applicationBaseURL" />api/mycategories<c:if test="${not empty categoryRootVar}">?parentCode=<c:out value="${categoryRootVar}" /></c:if>",
        }).then(function (data) {
            dropdown.empty();
            $.each(data, function (key, entry) {
                $.each(entry, function (key1, entry1) {
                    dropdown.append($('<option></option>').attr('value', entry1.code).text(entry1.titles.it));
                });
            });
        });

        $("#dropdown1").change(function ()
        {
            let dropdown3 = $('#dropdown3');
            let dropdown2 = $('#dropdown2');
            let dropdown1 = $('#dropdown1');
            let placeholder = $('#resultPlaceholder');

            var dataString = 'parentCode=' + dropdown1.val();
            $.ajax({
                url: "<wp:info key="systemParam" paramName="applicationBaseURL" />api/mycategories",
                data: dataString
            }).then(function (data) {
                dropdown2.empty();
                dropdown3.empty();
                $(placeholder).hide();
                $.each(data, function (key, entry) {
                    if (key === 'payload') {
                        $.each(entry, function (key1, entry1) {
                            dropdown2.append($('<option></option>').attr('value', entry1.code).text(entry1.titles.it));
                        });
                    }
                });

                $("#dropdown2").change(function ()
                {
                    let dropdown2 = $('#dropdown2');
                    let dropdown3 = $('#dropdown3');
                    let placeholder = $('#resultPlaceholder');
                    var dataString = 'parentCode=' + dropdown2.val();
                    $.ajax({
                        url: "<wp:info key="systemParam" paramName="applicationBaseURL" />api/mycategories",
                        data: dataString
                    }).then(function (data) {
                        dropdown3.empty();
                        $(placeholder).hide();
                        $.each(data, function (key, entry) {
                            if (key === 'payload') {
                                $.each(entry, function (key1, entry1) {
                                    if (entry1.titles.it)
                                        dropdown3.append($('<option></option>').attr('value', entry1.code).text(entry1.titles.it));
                                });
                            }
                        });
                    });
                    $("#dropdown3").change(function ()
                    {
                        let placeholder = $('#resultPlaceholder');
                        $(placeholder).show();
                    });

                });

            });
        });

    });
</script>

<div class="row">
    <div class="col-md-7 p-0  my-2">
        <form action="<wp:url />" method="post">
        <h4 class="card-title">Ricerca guidata</h4>

        <h6>Macro area</h6>
        <div class="input-group mb-3">
            <select name="macro_area" class="custom-select" id="dropdown1">
                <option selected>Scegli...</option>
            </select>
        </div>

        <h6>Sotto area 1</h6>
        <div class="input-group mb-3">
            <select name="subarea_1" class="custom-select" id="dropdown2">
                <option selected>Scegli...</option>
            </select>
        </div>

        <h6>Sotto area 2</h6>
        <div class="input-group mb-3">
            <select name="subarea_2" class="custom-select" id="dropdown3">
                <option selected>Scegli...</option>
            </select>
        </div>
        <button type="submit" class="btn btn-secondary my-3"><wp:i18n key="BTN_FILTRA" /></button>
        </form>
    </div>

</div>

    <jacms:contentList listName="contentList" contentType="PRC" />
<c:choose>
    <c:when test="${contentList != null && !empty contentList}">
        <wp:pager listName="contentList" objectName="groupContent" pagerIdFromFrame="true" advanced="true" max="10" offset="5">
            <c:set var="group" value="${groupContent}" scope="request" />
            <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
            <c:forEach var="contentId" items="${contentList}" begin="${groupContent.begin}" end="${groupContent.end}">
                <jacms:content contentId="${contentId}" modelId="list" />
            </c:forEach>
            <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
        </wp:pager>
    </c:when>
    <c:otherwise>

    </c:otherwise>
</c:choose>

<c:set var="contentList" value="${null}"  scope="request" />

