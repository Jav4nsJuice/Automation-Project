# When I press the button Iniciar con Google
When(/^I press the button Iniciar con Google$/) do
    xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/div[3]/div/button'
    find(:xpath, xpath).click
    sleep 1
end

# And I select the account registered with role Volunteer
When(/^I select the account registered with role Volunteer$/) do
    page.driver.browser.switch_to.alert.accept
end

# And I select the account registered with role Leader
When(/^I select the account registered with role Leader$/) do
    page.driver.browser.switch_to.alert.accept
end

# And I select the account registered with role CoreTeam
When(/^I select the account registered with role CoreTeam$/) do
    page.driver.browser.switch_to.alert.accept
end