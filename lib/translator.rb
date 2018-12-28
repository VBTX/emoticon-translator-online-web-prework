require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  hash = Hash.new
  emoticons.each do |k, v|
  hash["get_meaning"] = {"#{v[1]}" => k }
  hash["get_emoticon"] = {}
  hash
end

def get_japanese_emoticon(emoticons, emoticon)
  load_library(emoticons)
end

def get_english_meaning(emoticons, emoticon)
  load_library(emoticons)
end
