        <div class="row">
            <div class="large-5 columns" style="text-align: right">
              <label for="user"><lang en="Username" fr="Nom d'utilisateur"/></label>
            </div>
            <div class="large-6 columns">
                <input name="user" id="user" type="text" value="<TMPL_VAR NAME="LOGIN">" tabindex="1" />
            </div>
            <div class="large-1 columns">&nbsp;</div>
            <div class="large-5 columns" style="text-align: right">
              <label for="password"><lang en="Password" fr="Mot de passe"/></label>
            </div>
            <div class="large-6 columns">
                <input name="password" id="password" type="password" tabindex="2" />
            </div>
            <div class="large-1 columns">&nbsp;</div>
        </div>

        <TMPL_IF NAME="CHECK_LOGINS">
        <div class="row">
            <div class="large-11 columns" style="text-align: right">
                <label for="checkLogins" style="font-weight: normal">
                    <input type="checkbox" id="checkLogins" name="checkLogins" <TMPL_IF NAME="ASK_LOGINS">checked</TMPL_IF>/>
                    <lang en="Check my last logins" fr="Voir mes dernières connexions"/>
                </label>
            </div>
            <div class="large-1 columns">&nbsp;</div>
        </div>
        </TMPL_IF>

        <br />
        <br />

        <div class="panel-buttons row">
          <div class="large-1 columns">&nbsp;</div>
          <div class="large-5 columns">
            <div class="btn-container center">
              <button type="reset" class="big button normal-font strong negative" tabindex="4">
                <lang en="Cancel" fr="Annuler" />
              </a>
            </div>
          </div>
          <div class="large-5 columns">
            <div class="btn-container center">
              <button type="submit" class="big green button normal-font strong positive" tabindex="3">
                <lang en="Connect" fr="Se connecter" />
              </a>
            </div>
          </div>
          <div class="large-1 columns">&nbsp;</div>
        </div>

      <TMPL_IF NAME="DISPLAY_RESETPASSWORD">
         <div class="row">
            <div class="large-11 columns large-centered" style="text-align: center">
                <a class="center" href="<TMPL_VAR NAME="MAIL_URL"><TMPL_IF NAME="key">?<TMPL_VAR NAME="CHOICE_PARAM">=<TMPL_VAR NAME="key"></TMPL_IF>"><lang en="Forgot your password ?" fr="Mot de passe oublié ?"/></a>
            </div>
         </div>
      </TMPL_IF>
