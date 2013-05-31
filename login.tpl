<TMPL_INCLUDE NAME="ynh-header.tpl">

  <div id="content">
    <div id="content-wrapper" class="stroked padded">

    <div class="row">
    <div class="large-7 large-centered columns">
    <TMPL_IF NAME="DISPLAY_FORM">

    <TMPL_IF NAME="LOGIN_INFO">
    <div data-alert class="alert-box">
      <strong>Info:</strong> <TMPL_VAR NAME="LOGIN_INFO">
    </div>
    </TMPL_IF>

    <div data-alert class="alert-box alert">
      <TMPL_VAR NAME="AUTH_ERROR">
    </div>
    <div class="spacer"></div>
    <form action="#" method="post" class="login">
      <TMPL_VAR NAME="HIDDEN_INPUTS">
      <input type="hidden" name="url" value="<TMPL_VAR NAME="AUTH_URL">" />
      <input type="hidden" name="timezone" />
      <TMPL_INCLUDE NAME="standardform.tpl">
    </form>

    </TMPL_IF>

    <TMPL_IF NAME="PORTAL_URL">
    <div id="content-all">
      <div data-alert class="alert-box">
        <strong>Info:</strong> <TMPL_VAR NAME="AUTH_ERROR">
      </div>
      <TMPL_IF NAME="MSG">
      <div id="content-all-info">
        <TMPL_VAR NAME="MSG">
      </div>
      </TMPL_IF>
      <p style="padding: 25px">
        <a href="<TMPL_VAR NAME="PORTAL_URL">" class="positive">&larr; <lang en="Sign in" fr="Connexion" /></a>
      </p>
    </div>
    </TMPL_IF>

    </div>
    </div>

    </div>
  </div>

<TMPL_INCLUDE NAME="footer.tpl">

