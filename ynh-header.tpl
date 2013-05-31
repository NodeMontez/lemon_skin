<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title><lang en="YunoHost | Authentication" fr="YunoHost | Authentification"/></title>
        <meta http-equiv="Content-Script-Type" content="text/javascript" />
    	<meta http-equiv="cache-control" content="no-cache" />
        <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/stylesheets/app.css" />
        <link href="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/favicon.ico" rel="icon" type="image/x-icon" />
        <link href="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/favicon.ico" rel="shortcut icon" />
        <TMPL_IF NAME="PROVIDERURI">
        <link rel="openid.server" href="<TMPL_VAR NAME="PROVIDERURI">" />
        <link rel="openid2.provider" href="<TMPL_VAR NAME="PROVIDERURI">" />
        </TMPL_IF>
        <script type="text/javascript" src="<TMPL_VAR NAME="SKIN_PATH">/common/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="<TMPL_VAR NAME="SKIN_PATH">/common/jquery-ui-1.8.5.custom.min.js"></script>
        <script type="text/javascript" src="<TMPL_VAR NAME="SKIN_PATH">/common/jquery.base64.js"></script>
        <script type="text/javascript" src="<TMPL_VAR NAME="SKIN_PATH">/common/jquery.cookie.js"></script>
        <script type="text/javascript">//<![CDATA[
            var displaytab='<TMPL_VAR NAME="DISPLAY_TAB">';
            var choicetab='<TMPL_VAR NAME="CHOICE_VALUE">';
            var autocomplete='<TMPL_VAR NAME="AUTOCOMPLETE">';
            var login='<TMPL_VAR NAME="LOGIN">';
            var newwindow='<TMPL_VAR NAME="NEWWINDOW">';
            var antiframe='<TMPL_VAR NAME="ANTIFRAME">';
            var appslistorder='<TMPL_VAR NAME="APPSLIST_ORDER">';
        //]]></script>
        <script type="text/javascript" src="<TMPL_VAR NAME="SKIN_PATH">/common/portal.js"></script>
        <TMPL_INCLUDE NAME="customhead.tpl">
</head>
<body>

<nav class="tool-bar">
  <div class="tool-bar-wrapper">
    <ul class="left">
      <li class="name">
          <h1><a class="brand" href="/"><span class="logo-white">YUNOHOST</span></a></h1>
      </li>
    </ul>
  </div>
</nav>
<div id="container" class="row small-fix">
