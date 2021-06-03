module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'
    
    element  :myaccount, By.className("page-heading");
    element  :breadcrumb, By.id("slider_row");
    element  :input_create_account_email, By.id("email_create");
    element  :btn_create_an_account, By.id("SubmitCreate");
    element  :input_login_email, By.id("email");
    element  :input_login_password, By.id("passws");
    element  :link_forgot_password, By.className("lost_password form-group");
    element  :btn_sign_in, By.id("SubmitLogin");
    element  :alert_message_authentication_failed,
    By.className("alert alert-danger"();
  end
en//*[@id="center_column"]/div[1]