 # And I press the button Proyectos
 When(/^I press the button Proyectos$/) do
  css = '#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(2)'
  find(:css, css).click
end

# And I press the button Crear Proyecto 
  When(/^I press the button Crear Proyecto$/) do
    xpath_base = '/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/button'
    find(:xpath, xpath_base).click
  end
  
  # And I fill the start date with 12 12 2022
  When(/^I fill the start date with 12 12 2022$/) do
    fill_in 'fecha_inicio', :with => '12122022'
  end

  # And I fill the end date with 21 12 2022
  When(/^I fill the end date with 21 12 2022$/) do
    fill_in 'fecha_inicio', :with => '21122022'
  end

  # And I fill the projects name with Prueba
  When(/^I fill the projects name with Prueba$/) do
    fill_in 'nombre', :with => 'Prueba'
  end

  # I fill the projects description with Es un evento para recaudar fondos
  When(/^I fill the projects description with Es un evento para recaudar fondos$/) do
    fill_in 'descripción', :with => 'Es un evento para recaudar fondos'
  end

  # I fill the projects objective with Se requiere recaudar 1000$ para una obra benéfica
  When(/^I fill the projects objective with Se requiere recaudar 1000$ para una obra benéfica$/) do
    fill_in 'objetivo', :with => 'Se requiere recaudar 1000$ para una obra benéfica'
  end

  # I choose the leader Inge
  When(/^I choose the leader Inge$/) do
    choose("líder del proyecto"), option: "Inge"
  end

  # I choose the category Trabajo Social
  When(/^I choose the category Trabajo Social$/) do
    choose("categoría"), option: "Trabajo Social"
  end

  # I choose the state en progreso
  When(/^I choose the state en progreso$/) do
    choose("estado"), option: "en progreso"
  end

  # I fill Additional Information Se donará el día 15 12 2022
  When(/^I fill Additional Information Se donará el día 15 12 2022$/) do
    fill_in 'información_adicional', :with => 'Se donará el día 15/12/2022'
  end

  # I fill the image by link https://st2.depositphotos.com/1173077/6982/v/950/depositphotos_69823657-stock-illustration-helping-each-other.jpg
  When(/^I fill the image by link$/) do
    fill_in 'link_imagen', :with => 'https://st2.depositphotos.com/1173077/6982/v/950/depositphotos_69823657-stock-illustration-helping-each-other.jpg'
  end

  # When I click in the Crear Proyecto button inside the form 
  When(/^I click in the submit Crear Proyecto button inside the form $/) do
    #Needs to change the css 
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click
    sleep 2
  end

  # I enter to the category of the created project Trabajo Social
  When(/^I enter to the category of the created project Trabajo Social$/) do
    #Needs to change the css 
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click
    sleep 2
  end

  # I click the Ver detalles button of the card with the created projects name Prueba
  When(/^I click the Ver detalles button of the card with the created projects name Prueba$/) do
    #Needs to change the css 
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click
    sleep 2
  end

  # I should see the project's name Prueba 
  Then(/^I should see the projects name Prueba /) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').text
  end

  # And I should see the start date that I selected 12/12/2022
  Then(/^I should see the start date that I selected 12-12-2022 /) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').select("12/12/2022")
  end

  # I should see the end date that I selected 21/12/2022
  Then(/^I should see the end date that I selected 21-12-2022/) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').select("21/12/2022")
  end

  # I should see the description I gave "Es un evento para recaudar fondos"
  Then(/^I should see the description I gave "Es un evento para recaudar fondos"/) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').select("Es un evento para recaudar fondos")
  end

  # I should see the objective I gave "Se requiere recaudar 1000$ para una obra benéfica"
  Then(/^I should see the objective I gave "Se requiere recaudar 1000$ para una obra benéfica"/) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').select("Se requiere recaudar 1000$ para una obra benéfica")
  end

  # I should see the leader I chose "Inge"
  Then(/^I should see the leader I chose "Inge"/) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').select("Inge")
  end

  # I should see the category I selected "Trabajo Social"
  Then(/^I should see the category I selected "Trabajo Social"/) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').select("Trabajo Social")
  end

  # I should see the state I selected "en progreso"
  Then(/^I should see the state I selected "en progreso""/) do
    #Needs to change the css 
    puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.MuiContainer-root.jss32.MuiContainer-maxWidthLg > div > div:nth-child(1)').select("en progreso")
  end

  # And I should see the description "Es un evento para recaudar fondos"

  When(/^I click in the submit Crear Proyecto button inside the form/) do
    xpath_base = '//*[@id="root"]/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath_base).click
   
  end