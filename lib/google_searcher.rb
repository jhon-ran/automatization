# Searches online what user enters after calling
# the Ruby file .rb
require 'watir'
require 'launchy'
require 'pry'

# check if user input is not empty
def check_if_user_gave_input()
  abort(" Missing input: it needs search terms after calling Ruby file .rb") if ARGV.empty?
end

# binding.pry 

# Turn search words into a string
def get_search()
  search = ARGV.map{|arg| Shellwords.escape arg}.join('+')
  return search
end

# creates webpage to search with keywords
def make_page(search)
  page = "https://www.google.com/search?q=#{search}"
  return page
end 

# Perform method
def perform 
check = check_if_user_gave_input 
search = get_search
page = make_page(search)
#puts get_search
#puts make_page(search)
Launchy.open(page)
end 

perform

# alias is not implemented
# alias search="ruby /lib/google_searcher.rb"

