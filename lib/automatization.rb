# Creates a folder with a word enter after .rb
require 'watir'
require 'launchy'
require 'pry'

def check_if_user_gave_input
  abort('mkdir: missing input') if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.first
end

def create_folder(folder_name)
  Dir.mkdir(folder_name)
end


check = check_if_user_gave_input 

name = get_folder_name

folder = create_folder(name)