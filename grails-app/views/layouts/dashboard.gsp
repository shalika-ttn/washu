<%@ page import="com.washu.dashboard.constants.DashBoardConstant" %>
<g:set var="currentUser" value="${applicationContext.springSecurityService.currentUser}"/>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>

    <asset:javascript src="application.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:stylesheet src="admin.css"/>
    <asset:stylesheet src="bootstrap-fixtaglib.css"/>
    <asset:stylesheet src="backTop.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-responsive.css"/>
    <asset:stylesheet src="bootstrap-responsive.min.css"/>
    <asset:stylesheet src="chosen.css"/>
    <asset:stylesheet src="colpick.css"/>

    <sec:ifAllGranted roles="${DashBoardConstant.ROLE_ADMIN}">
    <asset:javascript src="admin.js"/>
    </sec:ifAllGranted>
    <asset:javascript src="colpick.js"/>
    <asset:javascript src="jquery.backTop.js"/>
    <asset:javascript src="prism.js"/>
    <asset:javascript src="readmore.js"/>
    <asset:javascript src="chosen.jquery.js"/>
    <g:layoutHead/>
    <style>
    body {
        margin-bottom: 50px;
    }
    </style>
</head>
<body>
%{--<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>--}%

<nav class="navbar navbar-fixed-top">

    <div class="navbar-inner">
        <div class="container container-fluid ">

            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>


            <div class="nav-collapse collapse navbar-responsive-collapse">
                <ul class="nav">
                    <li>
                        %{--<a class="brand" href="${createLink(uri: '/')}">--}%
                            %{--<img src="${resource(dir: '/images', file: '211countslogo.png')}" alt="DashBoard" height="200px"--}%
                                 %{--width="100px"/>--}%
                            %{--<><>--}%
                        %{--</a>--}%
                       <a class="brand" href="${createLink(uri: '/')}"> <asset:image src="211countslogo.png" height="200px" width="100px">
                            </a>
                        </asset:image>

                    </li>
                </ul>
            </div>

            <div class="nav-collapse collapse navbar-responsive-collapse">
                <ul class="nav pull-right">
                    <li class="divider-vertical" style="margin: 0"></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"
                           data-displayname="${currentUser?.username}">
                            <label id="user-name">

                                ${currentUser?.username}
                                %{--<img src="${resource(dir: '/grails-app/assets/images', file: 'profile.png')}"--}%
                                         %{--alt="${currentUser?.username}"--}%
                                     %{--title="${currentUser?.username}"/>--}%
                                    <asset:image src="profile.png" />
                                <b class="caret"></b>
                            </label>
                        </a>

                        <ul class="dropdown-menu">
                            <sec:ifAllGranted roles="${DashBoardConstant.ROLE_ADMIN}">

                                <li>
                                    <a href="${createLink(controller: 'user', action: 'edit', params: [id: currentUser?.id])}">
                                       %{--<a href="#"> Profile</a>--}%
                                        Profile
                                    </a>
                                </li>

                                <li>
                                    <a href="${createLink(controller: 'admin')}">
                                    Home</a>
                                </li>
                                <li class="menu-item dropdown dropdown-submenu">
                                    <a href="#">Admin</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${createLink(controller: 'location' )}">Location</a></li>


                                        <li class="menu-item dropdown dropdown-submenu">
                                            <a href="#">Centers</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="${createLink(controller: 'center')}">Center</a></li>
                                                <li><a href="${createLink(controller: 'associatedCenter')}">Aggregated Center</a></li>
                                            </ul>
                                        </li>

                                        <li class="menu-item dropdown dropdown-submenu">
                                            <a href="#">Geometric Regions</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="${createLink(controller: 'region')}">Region</a></li>
                                                <li><a href="${createLink(controller: 'zipCode')}">ZipCode</a></li>
                                                <li><a href="${createLink(controller: 'upperStateLegislativeDistrict')}">Upper State Legislative District</a></li>
                                                <li><a href="${createLink(controller: 'lowerStateLegislativeDistrict')}">Lower State Legislative District</a></li>
                                                <li><a href="${createLink(controller: 'congressionalDistrict')}">Congressional District</a></li>
                                                <li><a href="${createLink(controller: 'county')}">County</a></li>

                                            </ul>
                                        </li>


                                        <li><a href="${createLink(controller: 'category')}">Category</a></li>
                                        <li><a href="${createLink(controller: 'subCategory')}">SubCategory</a></li>
                                        <li><a href="${createLink(controller: 'TCode')}">TCode</a></li>
                                        <li><a href="${createLink(controller: 'dataRecord')}">DataRecord</a></li>
                                        <li><a href="${createLink(controller: 'serviceDataRecord')}">Data Record Service</a>
                                        </li>
                                        <li><a href="${createLink(controller: 'upload')}">Upload CSV</a></li>
                                        <li><a href="${createLink(controller: 'upload',action: 'allApiCenters')}">Trigger Api Center</a></li>
                                        <li><a href="${createLink(controller: 'timeInterval')}">Time Interval</a></li>
                                        <li><a href="${createLink(controller: 'user')}">User</a></li>
                                        <li><a href="${createLink(controller: 'recordClick')}">Record Click</a></li>
                                        <li><a href="${createLink(controller: 'shareRequest')}">Share Request</a></li>

                                        <li class="menu-item dropdown dropdown-submenu">
                                            <a href="#">Refresh Cached Geometries</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="${createLink(controller: 'centerWiseTopoJsonGeometries')}">Center</a></li>
                                                <li><a href="${createLink(controller: 'locationWiseTopoJsonGeometries')}">Location</a></li>
                                            </ul>
                                        </li>

                                    </ul>
                                </li>
                            </sec:ifAllGranted>

                            <li>
                                <a href="${createLink(controller: 'logout', action: 'index')}">
                                    Logout
                            </a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </div>

</nav>


<div class="container container-fluid mainBodyDiv">

<g:layoutBody/>

</div>

<div>
    <footer class="container navbar navbar-fixed-bottom navbar-inverse">

        <p>&copy; 211counts.org</p>
    </footer>
</div>
<script type="text/javascript">
    var config = {
        '.chosen-select': {},
        '.chosen-select-deselect': {allow_single_deselect: true},
        '.chosen-select-no-single': {disable_search_threshold: 10},
        '.chosen-select-no-results': {no_results_text: 'Oops, nothing found!'},
        '.chosen-select-width': {width: "43%"}
    };
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }
</script>
<script>
    $('.moreRegion').readmore();
    $('.moresubCategory').readmore();

    $(document).ready(function(){
        $('.picker').colpick({
            layout:'hex',
            submit:0,
            colorScheme:'dark',
            onChange:function(hsb,hex,rgb,el,bySetColor) {
                $(el).css('border-color','#'+hex);
                // Fill the text box just if the color was set using the picker, and not the colpickSetColor function.
                if(!bySetColor) $(el).val(hex);
            }
        }).keyup(function(){
            $(this).colpickSetColor(this.value);
        });
//        CKEDITOR.replace( 'footerHtml' );
        $('.picker').click(function(){
            $(this).colpickSetColor(this.value)
        });

        $('#backTop').backTop();
    });
</script>
<script src="https://cdn.ckeditor.com/4.4.7/full/ckeditor.js"></script>


%{--<div class="footer" role="contentinfo"></div>--}%
%{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>--}%
</body>
</html>
