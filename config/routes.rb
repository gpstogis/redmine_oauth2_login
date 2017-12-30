get 'admin/login', :to => 'account#admin_login', :as => 'adminsignin'
get 'oauth2/login', :to => 'account#oauth2_login'
get 'oauth2/login/failure', :to => 'account#oauth2_login_failure'
get 'oauth2/login/callback/:provider', :to => 'account#oauth2_login_callback', :as => 'oauth2_login_callback'