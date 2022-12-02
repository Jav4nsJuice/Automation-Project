Before do
    @links = Links.new
end

# Given I am at the StartApp Login Page
Given(/^I am at the StartApp Login Page$/) do
  page.driver.browser.manage.window.maximize
  visit ('/')
end

# When I insert a valid username voluntario@gmail.com
When(/^I insert a valid username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# And I insert a valid password 123456
When(/^I insert a valid password$/) do
    fill_in 'password', :with => ENV['PSW']
    sleep 2
end

# And I insert a incorrect password 1234567
When(/^I insert a incorrect password ([^"]*)$/) do |password|
    fill_in 'password', :with => password
    sleep 2
end

# When I press the button Iniciar Sesión
When(/^I press the button Iniciar Sesión$/) do
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click
end

# When I insert a invalid volunteer username voluntariogmail.com
When(/^I insert a invalid username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# Then I can see the 'Proyectos' link
Then(/^I can see the ([^"]*) link$/) do |link|
    @links.link(link)
end

# Then an alert comes out Correo o contraseña inválidos.
Then(/^an alert comes out Correo o contraseña inválidos.$/) do
    # puts(page.driver.browser.switch_to.alert.text)
    alert = "Correo o contraseña inválidos."
    expect(page).to have_content(alert)
    sleep 1
end

# Then an alert comes out 'Correo no Válido'
Then(/^an alert comes out Correo no valido$/) do
    # puts(page.driver.browser.switch_to.alert.text)
    alert = "Correo no valido"
    expect(page).to have_content(alert)
    sleep 1
end

# And the Iniciar Sesión button is not enabled
Then(/^the Iniciar Sesión button is not enabled$/) do
    find(:xpath,'//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button').disabled?
end

# And I select an account already registered as a voluntario
When(/^I select an account already registered as a ([^"]*)$/) do
    page.driver.browser.switch_to.alert.accept
end