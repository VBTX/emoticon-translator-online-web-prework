require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  hash = Hash.new
  hash[:get_meaning] = {}
  hash[:get_emoticon] = {}
  return hash
end

def get_japanese_emoticon(emoticons, emoticon)
  load_library(emoticons)
end

def get_english_meaning(emoticons, emoticon)
  load_library(emoticons)
end
