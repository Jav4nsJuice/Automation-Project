  # Given I am at the StartApp Home Page
  Given(/^I am at the StartApp Home Page$/) do
    page.driver.browser.manage.window.maximize
    visit ('/')
    fill_in 'email', :with => ENV['USER_V']
    fill_in 'password', :with => ENV['PSW']
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click
  end