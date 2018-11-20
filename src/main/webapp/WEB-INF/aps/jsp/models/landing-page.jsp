<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">

<head>
  <title>
    <wp:currentPage param="title" /> - <wp:i18n key="PORTAL_TITLE" />
  </title>
  
  <jsp:include page="inc/header-inclusions.jsp" />
  
</head>

<body>
  <%-- 0. Untitled Frame I  --%>
    <wp:show frame="0" />
  <%-- 1. Untitled Frame II  --%>
    <wp:show frame="1" />
  <%-- 2. Untitled Frame III  --%>
    <wp:show frame="2" />
  <%-- 3. Untitled Frame IV  --%>
    <wp:show frame="3" />
  <%-- 4. Untitled Frame V  --%>
    <wp:show frame="4" />
  <%-- 5. Untitled Frame VI  --%>
    <wp:show frame="5" />
  <%-- 6. Untitled Frame VII  --%>
    <wp:show frame="6" />
  <%-- 7. Untitled Frame VIII  --%>
    <wp:show frame="7" />
  <%-- 8. Untitled Frame IX  --%>
    <wp:show frame="8" />
  <%-- 9. Untitled Frame X  --%>
    <wp:show frame="9" />
  <%-- 10. Untitled Frame XI  --%>
    <wp:show frame="10" />
  <%-- 11. Untitled Frame XII  --%>
    <wp:show frame="11" />
  <%-- 12. Untitled Frame XIII  --%>
    <wp:show frame="12" />
  <%-- 13. Untitled Frame XIV  --%>
    <wp:show frame="13" />
</body>

</html>