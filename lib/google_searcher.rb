require 'watir'
require 'pry'
require 'launchy'

#saisie search
puts "google search"
name = gets.chomp
#test
    if name.empty? then
        puts "empty search!"
    else
        
        browser = Watir::Browser.new(:firefox)
        browser.goto 'google.com'  
        search_bar = browser.text_field(class: 'gsfi')
        search_bar.set(name)

#méthode de la barre d'entrée
#search_bar.send_keys(:enter)

    #méthode du clic
        submit_button = browser.button(type:"submit")
            submit_button.click
                browser.driver.manage.timeouts.implicit_wait = 3
            search_result_divs = browser.divs(class:"rc")
        search_result_divs.each { |div| p div.h3.text }
        p "Méfait accompli, fermeture du browser"
        browser.close
    end

