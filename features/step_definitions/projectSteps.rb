  # Given I am at the StartApp Home Page
  Given(/^I am at the StartApp Home Page$/) do
    page.driver.browser.manage.window.maximize
    visit ('/')
    fill_in 'email', :with => ENV['USER_V']
    fill_in 'password', :with => ENV['PSW']
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click
    sleep 2
  end

#   When I click in the projects tab 
  When(/^I click in the projects tab/) do
    xpath_base = '//*[@id="root"]/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath_base).click
   
  end
    
  Then(/^I see the categories list of projects/) do
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').text
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(2)').text
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(3)').text
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(4)').text
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(5)').text
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(6)').text
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(7)').text
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(8)').text
  end