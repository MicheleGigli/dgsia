<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="liClass" value=' class=""' />
<c:set var="homeIcon" value='' />
<c:set var="caret" value="" />
<c:set var="ulClass" value=' class="link-list"' />
<c:set var="aClassAndData" value=' class="list-item"' />
<c:set var="aURL" value="${previousPage.url}" />

<c:if test="${previousPage.voidPage}">
    <c:set var="aURL" value='#' />
</c:if>

<c:if test="${fn:containsIgnoreCase(previousPage.code, 'homepage')}">
    <c:set var="homeIcon"><i class="icon-home"></i>&#32;</c:set>
</c:if>

<c:if test="${previousPage.code == currentPageCode}">
    <c:set var="liClass" value=' class="active "' />
</c:if>

<c:if test="${previousLevel < level}">
    <c:set var="liClass" value=' class="nav-item dropdown "' />
    <c:if test="${previousPage.code == currentPageCode}">
        <c:set var="liClass" value=' class=" active"' />
    </c:if>
    <c:if test="${previousPage.voidPage}">
        <c:set var="liClass" value=' class="nav-item dropdown"' />
    </c:if>

    <c:if test="${previousLevel > 0}">
        <c:set var="liClass" value=' class="nav-item dropdown "' />
        <c:if test="${previousPage.code == currentPageCode}">
            <c:set var="liClass" value=' class=" nav-item dropdown  active"' />
        </c:if>

        <c:set var="ulClass" value='' />
    </c:if>

    <c:set var="aClassAndData" value='  onmouseover="this.style.textDecoration=\'underline\';" 
    onmouseout="this.style.textDecoration=\'none\';" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" ' />
    <c:if test="${previousLevel == 0}">
        <c:set var="caret"><svg class="icon-expand icon icon-sm icon-light">
            <use xlink:href="<wp:imgURL />sprite.svg#it-expand"></use>
            </svg>
        </c:set>
    </c:if>
</c:if>

<li<c:out value="${liClass}" escapeXml="false" />>
     <a href="<c:out value="${aURL}" escapeXml="false" />"<c:out value="${aClassAndData}" escapeXml="false" />><!-- [ <c:out value="${previousLevel}" /> ] --><c:out value="${homeIcon}" escapeXml="false" />
        <span><c:out value="${previousPage.title}" /></span>
        <c:out value="${caret}" escapeXml="false" />
    </a>
    <c:if test="${previousLevel == level}">
    </li>
</c:if>
<c:if test="${previousLevel < level}">
    <div class="dropdown-menu">
        <div class="link-list-wrapper">
            <ul<c:out value="${ulClass}" escapeXml="false" />></c:if>
            <c:if test="${previousLevel > level}">
                <c:forEach begin="${1}" end="${previousLevel - level}">
                    </li>
                </ul>
            </div>
        </div>
    </c:forEach>
</li>
</c:if>