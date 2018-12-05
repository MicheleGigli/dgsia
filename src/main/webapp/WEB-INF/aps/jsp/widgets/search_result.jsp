<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card-wrapper">
    <div class="card border-0">
        <div class="card-body p-3">
            <h3 class="card-title"><wp:i18n key="SEARCH_RESULTS" /></h3>
            <jacms:searcher listName="result" />
            <p><wp:i18n key="SEARCHED_FOR" />: <em>
                    <strong><c:out value="${search}" /></strong></em>
            </p>
            <c:choose>

                <c:when test="${empty result}">
                    <p class="alert alert-info"><wp:i18n key="SEARCH_NOTHING_FOUND" /></p>
                </c:when>
                <c:otherwise>

                    <wp:pager listName="result" objectName="groupContent" max="10" pagerIdFromFrame="true" advanced="true" offset="5">
                        <c:set var="group" value="${groupContent}" scope="request" />

                        <p>
                            <em><wp:i18n key="SEARCH_RESULTS_INTRO" /> <!-- infamous whitespace hack -->
                                <c:out value="${groupContent.size}" /> <!-- infamous whitespace hack -->
                                <wp:i18n key="SEARCH_RESULTS_OUTRO" /> [<c:out value="${groupContent.begin + 1}" /> &ndash; <c:out value="${groupContent.end + 1}" />]:</em>
                        </p>

                        <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
                        <c:forEach var="contentId" items="${result}" begin="${groupContent.begin}" end="${groupContent.end}">
                            <jacms:content contentId="${contentId}" modelId="list" />
                        </c:forEach>
                        <c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />

                    </wp:pager>

                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>


<div class="it-single-slide-wrapper">

    <a href="#">

        <div class="img-responsive-wrapper">

            <div class="img-responsive">

                <div class="img-wrapper">

                    <img src="$content.img.getImagePath('0')" title="img title" alt="imagealt">

                </div>

            </div>

        </div>

    </a>

    <div class="it-text-slider-wrapper-outside">

        <div class="card-wrapper">

            <div class="card">

                <div class="card-body">

                    <div class="category-top">

                        <!-- category heading-->

                        <a class="category" href="#">Category</a>

                        <!-- category data-->

                        <span class="data">$content.date.getFormattedDate("dd/MM/yyyy")</span>

                    </div>

                    <h5 class="card-title big-heading">$content.title.text</h5>

                    <p class="card-text">$content.abstract.text</p>

                    <span class="card-signature">di Pippo Baudo</span>

                    <a class="read-more" href="#">

                        <span class="text">Leggi di più</span>

                        <svg class="icon">

                        <use xlink:href="$content.link.destination"/>

                        </svg>

                    </a>

                </div>

            </div>

        </div>

    </div>

</div>