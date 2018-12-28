require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  library = emoticons
  hash = Hash.new
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  library.each do |k, arr|
    hash["get_meaning"][arr[1]] = k
  hash
end

def get_japanese_emoticon(emoticons, emoticon)
  load_library(emoticons)
end

def get_english_meaning(emoticons, emoticon)
  load_library(emoticons)
end
