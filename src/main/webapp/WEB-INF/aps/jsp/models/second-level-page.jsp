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
</body>

</html>