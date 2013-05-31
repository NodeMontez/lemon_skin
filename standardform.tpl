        <div class="row">
            <div class="large-4 columns" style="text-align: right">
              <label for="user"><lang en="Username" fr="Nom d'utilisateur"/></label>
            </div>
            <div class="large-8 columns" style="text-align: left">
                <input name="user" type="text" value="<TMPL_VAR NAME="LOGIN">" tabindex="1" />
            </div>
            <div class="large-4 columns" style="text-align: right">
              <label for="password"><lang en="Password" fr="Mot de passe"/></label>
            </div>
            <div class="large-8 columns" style="text-align: left">
                <input name="password" type="password" tabindex="2" />
            </div>
        </div>

        <TMPL_IF NAME="CHECK_LOGINS">
        <p>
        <label for="checkLogins">
            <input type="checkbox" id="checkLogins" name="checkLogins" <TMPL_IF NAME="ASK_LOGINS">checked</TMPL_IF>/>
            <lang en="Check my last logins" fr="Voir mes dernières connexions"/>
        </label>
        </p>
        </TMPL_IF>

        <hr class="solid" />
        <div class="panel-buttons">
          <button type="reset" class="negative" tabindex="4">
            <lang en="Cancel" fr="Annuler" />
          </button>
          <button type="submit" class="positive" tabindex="3">
            <lang en="Connect" fr="Se connecter" />
          </button>
        </div>

      <TMPL_IF NAME="DISPLAY_RESETPASSWORD">
      <p>
        <img src="<TMPL_VAR NAME="SKIN_PATH">/<TMPL_VAR NAME="SKIN">/images/arrow.png" /><a href="<TMPL_VAR NAME="MAIL_URL"><TMPL_IF NAME="key">?<TMPL_VAR NAME="CHOICE_PARAM">=<TMPL_VAR NAME="key"></TMPL_IF>"><lang en="Reset my password" fr="R&eacute;initialiser mon mot de passe"/></a>
      </p>
      </TMPL_IF>

      <div class="clear"></div>
