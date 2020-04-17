# Opens a browser and looks for term in line 9
# It scraps the h3 of the search title
require 'watir'
require 'launchy'
  
require 'watir'
browser = Watir::Browser.new
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Veracruz")

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



# Launchy.open("http://stackoverflow.com")