# Given I am at the StartApp Login Page
Given(/^I am at the StartApp Login Page$/) do
  page.driver.browser.manage.window.maximize
  visit ('/')
end

# When I insert a valid volunteer username voluntario@gmail.com
When(/^I insert a valid volunteer username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# When I insert a valid leader username leader@gmail.com
When(/^I insert a valid leader username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# When I insert a valid coreteam username coreteam@gmail.com
When(/^I insert a valid coreteam username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# And I insert a valid volunteer password 123456
When(/^I insert a valid volunteer password ([^"]*)$/) do |password|
    fill_in 'password', :with => password
    sleep 2
end

# And I insert a valid leader password 123456
When(/^I insert a valid leader password ([^"]*)$/) do |password|
    fill_in 'password', :with => password
    sleep 2
end

# And I insert a valid coreteam password 123456
When(/^I insert a valid coreteam password ([^"]*)$/) do |password|
    fill_in 'password', :with => password
    sleep 2
end

# And I insert a incorrect volunteer password 1234567
When(/^I insert a incorrect volunteer password ([^"]*)$/) do |password|
    fill_in 'password', :with => password
    sleep 2
end

# And I insert a incorrect leader password 1234567
When(/^I insert a incorrect leader password ([^"]*)$/) do |password|
    fill_in 'password', :with => password
    sleep 2
end

# And I insert a incorrect coreteam password 1234567
When(/^I insert a incorrect coreteam password ([^"]*)$/) do |password|
    fill_in 'password', :with => password
    sleep 2
end

# When I press the button Iniciar Sesión
When(/^I press the button Iniciar Sesión$/) do
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click
end

# When I insert a invalid volunteer username voluntariogmail.com
When(/^I insert a invalid volunteer username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# When I insert a invalid leader username lidergmail.com
When(/^I insert a invalid leader username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# When I insert a invalid coreteam username lidergmail.com
When(/^I insert a invalid coreteam username ([^"]*)$/) do |userName|
    fill_in 'email', :with => userName
    sleep 2
end

# Then I can see the 'Proyectos' field
Then(/^I can see the Proyectos field$/) do
    puts find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(2)').text
    # puts find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(2)').text
end

# Then I can see the 'Eventos' field
Then(/^I can see the Eventos field$/) do
    puts find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(3)').text
end

# Then I can see the 'Cuenta' field
Then(/^I can see the Cuenta field$/) do
    puts find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(4)').text
end

# Then I can see the 'icon' field
Then(/^I can see the Icon field$/) do
    puts find(:css,'#root > div:nth-child(2) > header > div.header-logo > div:nth-child(3) > div > div').text
end

# Then I can see the 'Home' field
Then(/^I can see the Home field$/) do
    puts find(:xpath,'//*[@id="root"]/div[2]/header/div[2]/div/button[1]').text
end

# Then I can see the 'Usuarios' field
Then(/^I can see the Usuarios field$/) do
    puts find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(5)').text
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

# And the Iniciar Sesión button doesn't show up
Then(/^the Iniciar Sesión button doesn't show up$/) do
    puts find(:xpath,'//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button').text
end