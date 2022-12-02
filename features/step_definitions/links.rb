class Links
    def link(type)
      case type
          when "Home"
                  find(:xpath,'//*[@id="root"]/div[2]/header/div[2]/div/button[1]').text
                  end
          when "Proyectos"
                  find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(2)').text  
                  end
          when "Eventos"
                  find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(3)').text
                  end
          when "Cuenta"
                  find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(4)').text
                  end
          when "Icon"
                  find(:css,'#root > div:nth-child(2) > header > div.header-logo > div:nth-child(3) > div > div').text
                  end
          when "Usuarios"
                  find(:css,'#root > div:nth-child(2) > header > div.header-menu > div > button:nth-child(5)').text
                  end
      end
    end
  end