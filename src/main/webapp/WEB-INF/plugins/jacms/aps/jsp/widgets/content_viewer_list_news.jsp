<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jacms:contentList 
    listName="contentList" 
    titleVar="titleVar"
    pageLinkVar="pageLinkVar"
    pageLinkDescriptionVar="pageLinkDescriptionVar"
    userFilterOptionsVar="userFilterOptionsVar"
    />

<c:if test="${null != titleVar}">
    <h1><c:out value="${titleVar}" /></h1> 
</c:if>

<c:set var="userFilterOptionsVar" value="${userFilterOptionsVar}" scope="request" />

<div class="row">
    <div class="col-7">
        <c:choose>
            <c:when test="${contentList != null && !empty contentList}">
                <wp:pager listName="contentList" objectName="groupContent" pagerIdFromFrame="true" advanced="true" offset="5">
                    <c:set var="group" value="${groupContent}" scope="request" />
                    <div class="card-box clearfix">
                        <c:forEach var="contentId" items="${contentList}" begin="${groupContent.begin}" end="${groupContent.end}">
                            <jacms:content contentId="${contentId}" />
                        </c:forEach>
                    </div>
                    <div class="card-box">
                        <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
                    </div>
                </wp:pager>
            </c:when>
            <c:otherwise>
                <c:if test="${not empty userFilterOptionsVar}">
                    <p class="alert alert-info"><wp:i18n key="LIST_VIEWER_EMPTY" /></p>
                </c:if>
            </c:otherwise>
        </c:choose>

        <c:if test="${null != pageLinkVar && null != pageLinkDescriptionVar}">
            <p class="text-right">
                <a class="btn btn-primary" href="<wp:url page="${pageLinkVar}"/>"><c:out value="${pageLinkDescriptionVar}" /></a>
            </p>
        </c:if>

    </div>
    <div class="col-1">
    </div>

    <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module.jsp" />

</div>
<%-- Important: reset variables --%>
<c:set var="userFilterOptionsVar" value="${null}" scope="request" />
<c:set var="contentList" value="${null}"  scope="request" />
<c:set var="group" value="${null}"  scope="request" />