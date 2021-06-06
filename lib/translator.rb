# require modules here
require "yaml"

def load_library(lib_name)
  # code goes here
  hash = YAML.load_file(lib_name)
  new_hash = {}
  
  hash.each do |key, value|
    new_hash[key] = {
      :english => value[0],
      :japanese => value[1]
    }
  end
  new_hash
end

def get_japanese_emoticon(lib_name, emoji)
  # code goes here
  hash = load_library(lib_name)
  if hash == {}
    return "Sorry, that emoticon was not found"
  end
  
  hash.each do |key, value|
    if hash[key][:english] == emoji
      return hash[key][:japanese]
    end
  end
  emoji
end

def get_english_meaning
  # code goes here
  hash = load_library(lib_name)
  if hash == {}
    return "Sorry, that emoticon was not found"
  end
  
  hash.each do |key, value|
    if hash[key][:japanese] == emoji
      return hash[key][:english]
    end
  end
  emoji
end