<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:currentPage param="code" var="currentViewCode" />

<div class="container py-4">
    <ol class="breadcrumb p-0 m-0">
        <c:set var="first" value="true" />
        <wp:nav spec="current.path" var="currentTarget">
            <c:set var="currentCode"><c:out value="${currentTarget.code}" /></c:set>
            <c:if test="${first != 'true'}"> <span class="divider">&nbsp;&nbsp;/&nbsp;&nbsp;</span> </c:if>
            <c:choose>
                <c:when test="${!currentTarget.voidPage}">
                    <c:choose>
                        <c:when test="${currentCode == currentViewCode}">
                            <li> <span class="active"><c:out value="${currentTarget.title}" /></span></li>
                            </c:when>
                            <c:otherwise>
                            <li><a href="<c:out value="${currentTarget.url}" />"><c:out value="${currentTarget.title}" /></a><span class="separator">&gt;</span></li>
                                </c:otherwise>
                            </c:choose>
                        </c:when>
                        <c:otherwise>
                            <c:out value="${currentTarget.title}" />
                        </c:otherwise>
                    </c:choose>
                    <c:set var="first" value="false" />
                </wp:nav>
    </ol>
</div>