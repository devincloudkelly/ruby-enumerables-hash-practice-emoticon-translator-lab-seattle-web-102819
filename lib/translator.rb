# require modules here

require 'pry'

def load_library(file_path)
  # code goes here
  require 'yaml'
  emoticons = YAML.load_file(file_path)
  library = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emoticons.each do |key, value|
       library[:get_meaning][value[1]] = key
       library[:get_emoticon][value[0]] = value[1]
    end
      library
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library_hash = load_library(file_path)
    if library_hash[:get_emoticon][emoticon]
      library_hash[:get_emoticon][emoticon]
    if !library_hash[:get_emoticon][emoticon]
      p "Sorry, that isn't an emoticon."
    end
  end
end

def get_english_meaning
  # code goes here
end