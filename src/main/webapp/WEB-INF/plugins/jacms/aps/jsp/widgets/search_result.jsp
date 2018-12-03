<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jacms:searcher listName="result" />
<p><wp:i18n key="SEARCHED_FOR" />: <em><strong><c:out value="${search}" /></strong></em></p>
<c:choose>

    <c:when test="${empty result}">
        <p class="alert alert-info"><wp:i18n key="SEARCH_NOTHING_FOUND" /></p>
    </c:when>
    <c:otherwise>

        
        <wp:pager listName="result" objectName="groupContent" max="10" pagerIdFromFrame="true" advanced="true" offset="5">
            <c:set var="group" value="${groupContent}" scope="request" />
            <div class="card-wrapper">
                <div class="card border-0">
                    <div class="card-body p-3">
                        <p class="card-text"><em><wp:i18n key="SEARCH_RESULTS_INTRO" /> <!-- infamous whitespace hack -->
                                <c:out value="${groupContent.size}" /> <!-- infamous whitespace hack -->
                                <wp:i18n key="SEARCH_RESULTS_OUTRO" /> [<c:out value="${groupContent.begin + 1}" /> &ndash; <c:out value="${groupContent.end + 1}" />]:</em></p>
                    </div> 
                </div>
            </div>
            <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
            <div class="link-list-wrapper multiline">
                <ul class="link-list">
                    <c:forEach var="contentId" items="${result}" begin="${groupContent.begin}" end="${groupContent.end}">
                        <jacms:content contentId="${contentId}" modelId="list" />
                    </c:forEach>
                </ul>
            </div>
            <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />

        </wp:pager>

    </c:otherwise>
</c:choose>