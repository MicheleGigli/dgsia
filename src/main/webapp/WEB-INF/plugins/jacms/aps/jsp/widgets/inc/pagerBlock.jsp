<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${group.size > group.max}">


    <nav class="pagination-wrapper justify-content-center" aria-label="Navigazione centrata">
        <ul class="pagination">
            <c:if test="${'1' != group.currItem}">
                <c:if test="${group.advanced}">
                    <%-- Back to start --%>
                    <li class="page-item">
                        <a class="page-link" 
                           href="<wp:url paramRepeat="true" ><wp:parameter name="${group.paramItemName}" >1</wp:parameter></wp:url>"  title="<wp:i18n key="PAGER_FIRST" />">
                            <span class="sr-only"><wp:i18n key="PAGER_FIRST1" /></span>
                        </a>
                    </li>
                    <%-- Back of ${group.offset} pages --%>
                    <c:if test="${1 != group.beginItemAnchor}">
                        <li class="page-item">
                            <a class="page-link" 
                               href="<wp:url paramRepeat="true" ><wp:parameter name="${group.paramItemName}" ><c:out value="${group.currItem - group.offset}" /></wp:parameter></wp:url>" title="<wp:i18n key="PAGER_STEP_BACKWARD"/>&#32;<c:out value="${group.offset}" />">

                                   </a>
                               </li>
                    </c:if>
                </c:if>
                <li class="page-item">
                    <a class="page-link"  href="<wp:url paramRepeat="true" >
                           <wp:parameter name="${group.paramItemName}" >
                               <c:out value="${group.prevItem}"/>
                           </wp:parameter>
                       </wp:url>">
                        <span class="sr-only"><wp:i18n key="PAGER_PREV" /></span>
                        <svg class="icon icon-primary">
                        <use xlink:href="<wp:imgURL />sprite.svg#it-chevron-left"></use>
                        </svg>
                    </a>
                    </a>
                </li>
            </c:if>
            <c:forEach var="item" items="${group.items}" begin="${group.beginItemAnchor-1}" end="${group.endItemAnchor-1}">
                <c:choose>
                    <c:when test="${item == group.currItem}">
                        <li class="page-item active">
                            <a class="page-link" href="#"  aria-current="" >
                                <c:out value="${item}"/>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item">
                            <a class="page-link"  href="<wp:url paramRepeat="true" ><wp:parameter name="${group.paramItemName}" ><c:out value="${item}"/></wp:parameter></wp:url>">
                                <c:out value="${item}"/>
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${group.maxItem != group.currItem}">
                <li class="page-item">
                    <a class="page-link" href="<wp:url paramRepeat="true" ><wp:parameter name="${group.paramItemName}" ><c:out value="${group.nextItem}"/></wp:parameter>
                       </wp:url>">
                        <span class="sr-only"><wp:i18n key="PAGER_NEXT" /></span>
                        <svg class="icon icon-primary">
                        <use xlink:href="<wp:imgURL />sprite.svg#it-chevron-right"></use>
                        </svg>
                    </a>
                </li>
                <c:if test="${group.advanced}">
                    <%-- Forward of ${group.offset} pages --%>
                    <c:if test="${group.maxItem != group.endItemAnchor}">
                        <li class="page-item">
                            <a class="page-link" href="<wp:url paramRepeat="true" ><wp:parameter name="${group.paramItemName}" ><c:out value="${group.currItem + group.offset}" /></wp:parameter></wp:url>" title="<wp:i18n key="PAGER_STEP_FORWARD" />&#32;<c:out value="${group.offset}" />">
                                        <i class="icon-step-forward"></i>
                                    </a>
                                </li>
                    </c:if>
                    <%-- Go to last page --%>
                    <li class="page-item">
                        <a class="page-link" href="<wp:url paramRepeat="true" ><wp:parameter name="${group.paramItemName}" ><c:out value="${group.maxItem}" /></wp:parameter></wp:url>" title="<wp:i18n key="PAGER_LAST" />">
                            <span class="sr-only"><wp:i18n key="PAGER_LAST1" /></span>
                        </a>
                    </li>
                </c:if>
            </c:if>
        </ul>
    </nav>

</c:if>