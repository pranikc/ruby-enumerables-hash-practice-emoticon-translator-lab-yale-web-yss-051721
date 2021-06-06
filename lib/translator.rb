# require modules here
require "yaml"

def load_library(lib_name)
  # code goes here
  hash = YAML.load_file(lib_name)
  hash
end

def get_japanese_emoticon(lib_name, emoji)
  # code goes here
  hash = load_library(lib_name)
  if hash == {}
    return "Sorry, that emoticon was not found"
  end
  
  hash.each do |key, value|
    if hash[key][0] == emoji
      return hash[key][1]
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
  hash = load_library(lib_name)
  if hash == {}
    return "Sorry, that emoticon was not found"
  end
  
  hash.each do |key, value|
    if hash[key][1] == emoji
      return hash[key][0]
    end
  end
  "Sorry, that emoticon was not found"
end