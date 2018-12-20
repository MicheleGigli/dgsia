<%@ taglib prefix="mytld" uri="/WEB-INF/tld/myTLD.tld" %>
<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<wp:resourceURL />static/js/jquery.cookie.min.js"></script>
<%--<mytld:categories var="contentList" />--%>
<wp:currentWidget param="config" configParam="categoryRoot" var="categoryRootVar"/>

<mytld:comefareper listName="contentList" inputValues="inputValues" />
<%--
<c:out value="${contentList}" />
<br />
<c:out value="${inputValues}" /> 
--%>
<script>
    $(document).ready(function () {
        let placeholder = $('#resultPlaceholder');
        $(placeholder).hide();
        let dropdown = $('#dropdown1');
        $.ajax({
            url: "<wp:info key="systemParam" paramName="applicationBaseURL" />api/mycategories<c:if test="${not empty categoryRootVar}">?parentCode=<c:out value="${categoryRootVar}" /></c:if>",
                    }).then(function (data) {
                        //   dropdown.append($('<option>', {value: 1, text: 'TEST'}));
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
                        $.ajax({url: "<wp:info key="systemParam" paramName="applicationBaseURL" />api/mycategories",
                            data: dataString
                        }).then(function (data) {
                            dropdown2.empty();
                            dropdown2.append($('<option>', {value: "", text: 'Scegli...'}));
                            dropdown3.empty();
                            //   dropdown3.append($('<option>', {value: 1, text: 'Scegli...'}));
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
                                    dropdown3.append($('<option>', {value: "", text: 'Scegli...'}));
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
//                    var timeCookie = $.cookie("timeCookie"),
//                            selElem = $('select[name=macro_area]');
//
//                    console.log(" valore iniziale", timeCookie);
//
//                    selElem.on('change', function () {
//                        $.cookie("timeCookie", this.value);
//                    });
//
//                    if (timeCookie != undefined) {
//                        console.log("ha valore", timeCookie);
//                        selElem.val(timeCookie);
//
//                    } else {
//                        console.log("ha valore 2", timeCookie);
//                        $.cookie("timeCookie", selElem.val());
//                    }
//
//                    var timeCookie2 = $.cookie("timeCookie2"),
//                            selElem2 = $('select[name=subarea_1]');
//
//                    selElem2.on('change', function () {
//                        $.cookie("timeCookie2", this.value);
//                    });
//
//                    if (timeCookie2 != undefined) {
//                        console.log("ha valore", timeCookie2);
//                        selElem2.val(timeCookie2);
//
//                    } else {
//                        console.log("ha valore 2", timeCookie2);
//                        $.cookie("timeCookie2", selElem2.val());
//                    }
//                    var timeCookie3 = $.cookie("timeCookie3"),
//                            selElem3 = $('select[name=subarea_2]');
//
//                    selElem3.on('change', function () {
//                        $.cookie("timeCookie3", this.value);
//                    });
//
//                    if (timeCookie3 != undefined) {
//                        console.log("ha valore", timeCookie3);
//                        selElem3.val(timeCookie3);
//
//                    } else {
//                        console.log("ha valore 3", timeCookie3);
//                        $.cookie("timeCookie3", selElem3.val());
//                    }
                });
</script>

<div class="row">
    <div class="col-md-7 p-0  my-2 px-1">
        <form action="<wp:url />" method="post">
            <h4 class="card-title">Ricerca guidata</h4>

            <h6>Macro area</h6>
            <div class="input-group mb-3">
                <select name="macro_area" class="custom-select" id="dropdown1">
                    <option >Scegli...</option>
                </select>
            </div>

            <h6>Sotto area 1</h6>
            <div class="input-group mb-3">
                <select name="subarea_1" class="custom-select" id="dropdown2">
                    <option >Scegli...</option>
                </select>
            </div>

            <h6>Sotto area 2</h6>
            <div class="input-group mb-3">
                <select name="subarea_2" class="custom-select" id="dropdown3">
                    <option >Scegli...</option>
                </select>
            </div>
            <button type="submit" class="btn btn-secondary my-3"><wp:i18n key="BTN_FILTRA" /></button>
        </form>
    </div>

</div>


<c:choose>
    <c:when test="${contentList != null && !empty contentList}">
        <wp:pager listName="contentList" objectName="groupContent" pagerIdFromFrame="true" advanced="true" max="10" offset="5">
            <c:set var="group" value="${groupContent}" scope="request" />
            <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
            <h5><wp:i18n key="RISULTATO_RICERCA" /></h5>     
            <div class="it-list-wrapper mb-4">
                <ul class="it-list">
                    <c:forEach var="contentId" items="${contentList}" begin="${groupContent.begin}" end="${groupContent.end}">
                        <jacms:content contentId="${contentId}" modelId="list" />
                    </c:forEach>
                </ul>
            </div>
            <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
        </wp:pager>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${empty inputValues}" >
                <!--                <div class="alert alert-success alert-dismissible fade show" role="alert">
                <wp:i18n key="EFFETTUA_RICERCA" />
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>-->
            </c:when>
            <c:otherwise>
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <wp:i18n key="RISULTATO_NULLO" />
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>

<c:set var="contentList" value="${null}"  scope="request" />
