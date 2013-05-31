<TMPL_INCLUDE NAME="ynh-header.tpl">

  <div id="content">
    <div id="content-wrapper" class="stroked">

    <TMPL_IF AUTH_LOOP>

    <!-- Authentication loop -->

    <TMPL_IF NAME="LOGIN_INFO">
    <div data-alert class="alert-box">
      <strong>Info:</strong> <TMPL_VAR NAME="LOGIN_INFO">
      <a href="#" class="close">&times;</a>
    </div>
    </TMPL_IF>

    <div id="content-right">

      <h3><lang en="Sign in" fr="Connexion" /></h3>
      <p><span class="text-error"><TMPL_VAR NAME="AUTH_ERROR"></span></p>

      <!-- tabs -->
      <div id="authMenu">
      <ul>
        <TMPL_LOOP NAME="AUTH_LOOP">
        <li title="<TMPL_VAR NAME="key">"><a href="#<TMPL_VAR NAME="key">"><TMPL_VAR NAME="name"></a></li>
        </TMPL_LOOP>
      </ul>
      </div>

      <!-- Forms -->
      <div class="row">
        <div class="large-6 large-centered">
      <TMPL_LOOP NAME="AUTH_LOOP">

      <div id="<TMPL_VAR NAME="key">">

      <form action="#" method="post" class="login">

      <!-- Hidden fields -->
      <TMPL_VAR NAME="HIDDEN_INPUTS">
      <input type="hidden" name="url" value="<TMPL_VAR NAME="AUTH_URL">" />
      <input type="hidden" name="timezone" />
      <input type="hidden" id="authKey" name="<TMPL_VAR NAME="CHOICE_PARAM">" value="<TMPL_VAR NAME="key">" />

      <TMPL_IF NAME="logo">

        <TMPL_IF NAME="module">
        <div class="authLogo">
        <img src="<TMPL_VAR NAME="SKIN_PATH">/common/<TMPL_VAR NAME="module">.png" />
        </div>
        </TMPL_IF>

        <TMPL_IF NAME="CHECK_LOGINS">
        <p>
        <label for="checkLogins">
            <input type="checkbox" id="checkLogins" name="checkLogins" <TMPL_IF NAME="ASK_LOGINS">checked</TMPL_IF>/>
            <lang en="Check my last logins" fr="Voir mes dernières connexions"/>
        </label>
        </p>
        </TMPL_IF>

        <div class="panel-buttons">
          <input class="big green button normal-font strong positive" type="submit" tabindex="3">
            <lang en="Sign in" fr="Connexion" />
          </input>
        </div>

      </TMPL_IF>

      </form>

      </div>

      </TMPL_LOOP>
      </div></div>

    </div>

      </TMPL_IF>

    <TMPL_IF NAME="DISPLAY_FORM">

    <TMPL_IF NAME="LOGIN_INFO">
    <div data-alert class="alert-box">
      <strong>Info:</strong> <TMPL_VAR NAME="LOGIN_INFO">
    </div>
    </TMPL_IF>

    <h4><lang en="Sign in" fr="Connexion" /></h4>
    <div data-alert class="alert-box alert">
      <TMPL_VAR NAME="AUTH_ERROR">
    </div>
    <form action="#" method="post" class="login">
      <TMPL_VAR NAME="HIDDEN_INPUTS">
      <input type="hidden" name="url" value="<TMPL_VAR NAME="AUTH_URL">" />
      <input type="hidden" name="timezone" />
      <TMPL_INCLUDE NAME="standardform.tpl">
    </form>

    </TMPL_IF>

    <TMPL_IF NAME="DISPLAY_PASSWORD">

      <div id="content-all">
      <div class="title">
        <img src="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/images/logo-info.png" />
        <lang en="Password change" fr="Changement de mot de passe" />
      </div>
      <hr class="solid" />
      <p class="text-error"><TMPL_VAR NAME="AUTH_ERROR"></p>
      <TMPL_INCLUDE NAME="password.tpl">
      </div>

    </TMPL_IF>

    <TMPL_IF NAME="PORTAL_URL">
    <div id="content-all">
      <div class="title">
        <img src="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/images/logo-info.png" />
        <lang en="SSO session inactive" fr="Session SSO inactive" />
      </div>
      <hr class="solid" />
      <p class="text-error"><TMPL_VAR NAME="AUTH_ERROR"></p>
      <TMPL_IF NAME="MSG">
      <div id="content-all-info">
        <TMPL_VAR NAME="MSG">
      </div>
      </TMPL_IF>
      <p>
        <img src="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/images/arrow.png" /><a href="<TMPL_VAR NAME="PORTAL_URL">" class="positive"><lang en="Go to portal" fr="Aller au portail" /></a>
      </p>
    </div>
    </TMPL_IF>

    <TMPL_IF NAME="LOGOUT_URL">
    <div id="content-all">
      <div class="title">
        <img src="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/images/logo-info.png" />
        <lang en="Close your SSO session" fr="Fermer votre Session SSO" />
      </div>
      <hr class="solid" />
      <p class="text-error"><TMPL_VAR NAME="AUTH_ERROR"></p>
      <p>
        <img src="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/images/arrow.png" /><a href="<TMPL_VAR NAME="LOGOUT_URL">" class="negative"><lang en="Logout" fr="Se d&eacute;connecter"/></a>
      </p>
    </div>
    </TMPL_IF>

    </div>
  </div>

<TMPL_INCLUDE NAME="footer.tpl">

