<%@ taglib prefix="mytld" uri="/WEB-INF/tld/myTLD.tld" %>
<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<wp:headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />
--%>
<mytld:moduli listName="resourceList" categoryCodes="categoryCodes" />
<%--
<c:set var="userFilterOptionsVar" value="${userFilterOptionsVar}" scope="request" />
<c:import url="/WEB-INF/aps/jsp/widgets/inc/userFilter-module.jsp" />
--%>

xxxxxxxxxxxxx
<c:out value="${resourceList}" />
xxxxxxxxxxxxx
<c:out value="${categoryCodes}" />
<c:forEach items="${categoryCodes}" var="cat">
    <br />
    xxxx -> <c:out value="${cat}" />
</c:forEach>
<%--
<c:choose>
<c:when test="${resourceList != null && !empty resourceList}">
	<wp:pager listName="contentList" objectName="groupContent" pagerIdFromFrame="true" advanced="true" offset="5">
		<c:set var="group" value="${groupContent}" scope="request" />
		<c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
		<c:forEach var="contentId" items="${contentList}" begin="${groupContent.begin}" end="${groupContent.end}">
			<jacms:content contentId="${contentId}" />
		</c:forEach>
		<c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />
	</wp:pager>
</c:when>
<c:otherwise>
	<c:if test="${not empty userFilterOptionsVar}">
		<p class="alert alert-info"><wp:i18n key="LIST_VIEWER_EMPTY" /></p>
	</c:if>
</c:otherwise>
</c:choose>
--%>
<div class="row">
    <div class="col-md-7 p-0  my-2">
        <h4 class="card-title">Sezione moduli</h4>
        <h6><wp:i18n key="CERCA_PER_TITOLO" /></h6>
        <div class="form-group">
            <input type="text" class="form-control" id="exampleInputText">
            <label for="exampleInputText"><wp:i18n key="SCEGLI_PER_TITOLO" /></label>
        </div>
            <c:forEach items="${categoryCodes}" var="cat">
                <mytld:categorieModuli var="childrens" root="${cat}" />
        <h6><wp:i18n key="CERCA_PER_${cat}" /></h6>
        <div class="input-group mb-3">
            <select name="modulo_cat_<c:out value="${cat}"/>" class="custom-select" id="dropdown2">
                <option value=""><wp:i18n key="SCEGLI_${cat}" /></option>
                <c:forEach items="${childrens}" var="singleItem">
                    <option value="<c:out value="${singleItem.key}" />"><c:out value="${singleItem.value}" /></option>
                </c:forEach>
            </select>
        </div>
            </c:forEach>
        <button type="submit" class="btn btn-secondary my-3"><wp:i18n key="BTN_FILTRA" /></button>
    </div>
    <div class="col-md-12 p-0">
        <c:choose>
            <c:when test="${resourceList != null && !empty resourceList}">
                <wp:pager listName="resourceList" objectName="groupResource" pagerIdFromFrame="XXXXX" advanced="true" offset="5">
                    <c:set var="group" value="${groupResource}" scope="request" />
                    <div class="card-box clearfix">
                        <table class="table">
                            <thead class="thead-blue">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col"><wp:i18n key="MODULO" /></th>
                                    <th scope="col"><wp:i18n key="UFFICIO" /></th>
                                    <th scope="col"><wp:i18n key="FILE_DWN" /></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="resourceId" items="${resourceList}" begin="${groupResource.begin}" end="${groupResource.end}">
                                <tr>
                                    <th scope="row">1</th>
                                    <td>DESCRIZIONE <c:out value="${resourceId}" /> </td>
                                    <td>CATEGORIE <c:out value="${resourceId}" /></td>
                                    <td>
                                        <a href="#" class="callout-more-download">
                                            <svg class="icon icon-primary">
                                            <use xlink:href="<wp:imgURL />sprite.svg#it-download"></use>
                                            </svg>
                                            <span class="sr-only">Nome file  </span>
                                            Nome file
                                        </a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
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
    </div>
</div>

