<%@ taglib prefix="mytld" uri="/WEB-INF/tld/myTLD.tld" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<mytld:moduli listName="resourceList" categoryCodes="categoryCodes" inputValues="inputValues" />

<div class="row">
    <div class="col-md-7 p-0  my-2">
        <form action="<wp:url />" method="post">
            <h4 class="card-title">Sezione moduli</h4>
            <h6><wp:i18n key="CERCA_PER_TITOLO" /></h6>
            <div class="form-group">
                <input name="moduli_textFilter" value="<c:if test="${not empty inputValues['moduli_textFilter']}"><c:out value="${inputValues['moduli_textFilter']}" /></c:if>" type="text" class="form-control" id="exampleInputText">
                <label for="exampleInputText"><wp:i18n key="SCEGLI_PER_TITOLO" /></label>
            </div>
            <c:forEach items="${categoryCodes}" var="cat">
                <mytld:categorieModuli var="childrens" root="${cat}" />
                <h6><wp:i18n key="CERCA_PER_${cat}" /></h6>
                <div class="input-group mb-3">
                    <c:set var="catParamNameVar">moduli_catFilter_<c:out value="${cat}"/></c:set>
                    <select name="<c:out value="${catParamNameVar}"/>" class="custom-select" id="dropdown2">
                        <option value=""><wp:i18n key="SCEGLI_${cat}" /></option>
                        <c:forEach items="${childrens}" var="singleItem">
                            <option 
                                <c:if test="${inputValues[catParamNameVar] eq singleItem.key}"> selected </c:if>
                                value="<c:out value="${singleItem.key}" />"><c:out value="${singleItem.value}" /></option>
                        </c:forEach>
                    </select>
                </div>
            </c:forEach>
            <button type="submit" class="btn btn-secondary my-3"><wp:i18n key="BTN_FILTRA" /></button>
        </form>
    </div>
    <div class="col-md-12 p-0">
        <c:choose>
            <c:when test="${resourceList != null && !empty resourceList}">
                <wp:pager listName="resourceList" objectName="groupResource" max="10" pagerIdFromFrame="XXXXX" advanced="true" offset="5">
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
                                <c:forEach var="resourceId" items="${resourceList}" begin="${groupResource.begin}" end="${groupResource.end}" varStatus="varStatus">
                                    <mytld:resource resourceId="${resourceId}" var="resourceVar" />
                                    <tr>
                                        <th scope="row">
                                            <c:out value="${varStatus.count}" />
                                        </th>
                                        <td><c:out value="${resourceVar.descr}" /></td>
                                        <td>
                                            <c:forEach items="${resourceVar.categories}" var="resourceCategory">
                                                <c:out value="${resourceCategory.title}" />&nbsp;
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <a href="<c:out value="${resourceVar.documentPath}" />" class="callout-more-download">
                                                <svg class="icon icon-primary">
                                                <use xlink:href="<wp:imgURL />sprite.svg#it-download"></use>
                                                </svg>
                                                <span class="sr-only"><c:out value="${resourceVar.masterFileName}" /></span>
                                                <c:out value="${resourceVar.masterFileName}" />
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
