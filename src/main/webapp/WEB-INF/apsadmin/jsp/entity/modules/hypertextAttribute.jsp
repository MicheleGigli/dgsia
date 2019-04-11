<%@ taglib prefix="s" uri="/struts-tags" %>
<s:textarea cols="50" rows="3" id="%{#attributeTracer.getFormFieldName(#attribute)}"
	name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}" cssClass="form-control" data-toggle="entando-hypertext" />