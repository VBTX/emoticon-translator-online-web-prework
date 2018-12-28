require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  hash = Hash.new
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
