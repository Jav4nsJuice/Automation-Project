# When I press the button Iniciar con Google
When(/^I press the button Iniciar con Google$/) do
    xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/div[3]/div/button'
    find(:xpath, xpath).click
end