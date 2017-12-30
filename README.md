## Redmine OAuth2 Login For Single Sign On

This plugin is used to authenticate Redmine users using OAuth2 provider ("Authorization Code" grant type).
It is primarily intended to work with [GitHub](https://developer.github.com/apps/building-oauth-apps/authorization-options-for-oauth-apps/).

Version of [Redmine](http://www.redmine.org/): 3.4.X (as of publish date, other versions should work as well)

### Features

+ login
+ logout

### Installation

1. Download the plugin and install required gems:

```console
cd /path/to/redmine
git clone -b master https://github.com/gpstogis/redmine_oauth2_login.git ./plugins/redmine_oauth2_login
rm -rf ./plugins/redmine_oauth2_login/.git ./plugins/redmine_oauth2_login/test
bundle install --without development test
```
2. Restart the app
```console
touch /path/to/redmine/tmp/restart.txt
```

### Configuration

* Login as a user with administrative privileges. 
* In top menu select "Administration".
* Click "Plugins"
* In plugins list, click "Configure" in the row for "Redmine OAuth2 Login plugin"
* Check the box near "OAuth2 Authentication"
* Enter OAuth2 Authentication provider URL
* Enter the Сlient ID & Client Secret (see more [here](https://help.github.com/articles/authorizing-oauth-apps/)).
* Click Apply. 

Users can now use their GitHub Account to log in to your instance of Redmine.

### Authentication Workflow

1. An unauthenticated user requests the URL to your Redmine instance.
2. User clicks the "Login via ..." buton.
3. The plugin redirects them to GitHub sign in page if they are not already signed in to their GitHub account.
4. GitHub redirects user back to Redmine, where the GitHub OAuth plugin's controller takes over.

### Additional info

This plugin overrides Redmine's autoregistration feature so user is created automatically if all required fields
are provided (login, firstname, lastname, email). Uniqueness of user is checked against login.
