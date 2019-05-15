<%@page contentType="text/html"%>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
    <head>
        <title><wp:currentPage param="title" /></title>
    </head>
    <body>
        <h1><wp:currentPage param="title" /></h1>

        <a href="<wp:url page="homepage" />" >Home</a><br>
        <div><wp:show frame="0" /></div>
    </body>
</html>


<#assign wp=JspTaglibs["/aps-core"]>
<#if (Session.currentUser != "guest")>


<button class="btn btn-login btn-sm" type="button" data-toggle="modal" data-target="#modal-login">
    ${Session.currentUser}
</button>


<!-- Modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="modal-login">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Acceso amministrazione Entando 
                </h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <svg class="icon">
                        <use xlink:href="<@wp.imgURL />sprite.svg#it-close"></use>
                    </svg>
                </button>
            </div>
            <div class="modal-body">

                <div class="link-list-wrapper">
                    <ul class="link-list">
                        <li>
                            <@wp.ifauthorized permission="enterBackend">
                            <a class="list-item" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />">
                               <@wp.i18n key="ESLF_ADMINISTRATION" />
                        </a>
                        </@wp.ifauthorized>
                    </li>
                    <li>
                        <a class="list-item" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action">
                           <@wp.i18n key="ESLF_SIGNOUT" />
                    </a>
                </li>
                <li>
                    <@wp.pageWithWidget var="editProfilePageVar" widgetTypeCode="userprofile_editCurrentUser" />
                    <#if (editProfilePageVar??) >
                    <a class="list-item" href="<@wp.url page="${editProfilePageVar.code}" />" >
                    <@wp.i18n key="ESLF_PROFILE_CONFIGURATION" />
                    </a>
                    </#if>
                </li>
            </ul>
        </div>

    </div>
    <div class="modal-footer">
        <button class="btn btn-default btn-sm" data-dismiss="modal" type="button">Chiudi</button>
    </div>
</div>
</div>
</div>

<#else>

<button class="btn btn-login btn-sm" type="button" data-toggle="modal" data-target="#modal-login">
    <@wp.i18n key="ESLF_SIGNIN" /> 
</button>


<!-- Modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="modal-login">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Accesso Utente
                </h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <svg class="icon">
                        <use xlink:href="<@wp.imgURL />sprite.svg#it-close"></use>
                    </svg>
                </button>
            </div>
            <div class="modal-body">

                <div class="link-list-wrapper">
                    <form  method="POST">
                        <#if (accountExpired?? && accountExpired == true)>
                        <div class="alert alert-error">
                            <button class="close" data-dismiss="alert">x</button>
                            <@wp.i18n key="ESLF_USER_STATUS_EXPIRED" />
                        </div>
                        </#if>
                        <#if (wrongAccountCredential?? && wrongAccountCredential == true)>
                        <div class="alert alert-error">
                            <button class="close" data-dismiss="alert">x</button>
                            <@wp.i18n key="ESLF_USER_STATUS_CREDENTIALS_INVALID" />
                        </div>
                        </#if>


                        <div class="form-group">
                            <!--<label for="formGroupExampleInput2"><@wp.i18n key="ESLF_USERNAME" /></label>-->
                            <input type="text" name="username" class="form-control" id="formusername"  aria-labelledby="infoUser" placeholder="<@wp.i18n key="ESLF_USERNAME" />">
                        </div>

                        <div class="form-group">
                            <!--<label for="exampleInputPassword"><@wp.i18n key="ESLF_PASSWORD" /></label>-->
                            <input type="password" name="password" class="form-control" id="formpassword" aria-labelledby="infoPassword" placeholder="<@wp.i18n key="ESLF_PASSWORD" />">
                        </div>

                        <div class="col-sm-12">
                            <input type="submit" class="btn btn-primary float-right mx-2 my-3" value="<@wp.i18n key="ESLF_SIGNIN" />"  />
                                   <button class="btn btn-default btn-sm" data-dismiss="modal" type="button">
                                Chiudi
                            </button>
                        </div>
                </div>

                </form>

            </div>

        </div>

        <div class="modal-footer">
            <button class="btn btn-default btn-sm" data-dismiss="modal" type="button">Chiudi</button>
        </div>
    </div>
</div>
</div>

</#if>