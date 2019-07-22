require'nokogiri'
require 'open-uri'
require 'pry'
#test si l'user à écrit un char <<< Abort
def check_if_user_gave_input
    abort("mkdir : missing input") if ARGV.empty?
end

#récuperaton du nom de dossier <<< each
def get_folder_name
    return folder_name = ARGV.first
end

#création de dossier 
def create_folder(name)
    Dir.mkdir(name)
end


    