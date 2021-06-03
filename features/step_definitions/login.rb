Dado("que eu esteja no site{string}")
	public void que_eu_esteja_no(String appUrl)  {
	metodos.abrirNavegador(appUrl);
	driver.manage().window().maximize();
 }
end

Quando("clicar em login") {
	metodos.click(element.btn_go_to_sign_in());
 }
end

E("preencher os campos de login") {  
	metodos.click(element.input_login_email();
	metodos.sendKeys("joaosusa@gmail.com") 
	metodos.click(element.input_login_password();
	metodos.sendKeys("6NqdjFAvFF!A6vR");

 }
end

E("clicar em efetuar login") {
	metodos.click(element.btn_sign_in)
 }
end

Então("validar login") {
	assert.AssertEquals("My account", element.myaccount.getText);
	metodos.fecharNavegador();
 }
end

Dado("que eu esteja no site{string}") {
	public void que_eu_esteja_no(String appUrl)  
	metodos.abrirNavegador(appUrl);
	driver.manage().window().maximize();
 }
end

Quando("clicar em login") {
	metodos.click(element.btn_go_to_sign_in());
 }
end

E("preencher os campos de login com senha errada") {  
	metodos.click(element.input_login_email();
	metodos.sendKeys("joaosusa@gmail.com") 
	metodos.click(element.input_login_password();
	metodos.sendKeys("6NqdjFAvFF!");
 }
end

E("clicar em efetuar login") {
	metodos.click(element.btn_sign_in)
 }
end

Então("validar falha de login") {

	assert.AssertEquals("Authentication failed.", element.alert_message_authentication_failed.getText);
	metodos.fecharNavegador();
 }
end

