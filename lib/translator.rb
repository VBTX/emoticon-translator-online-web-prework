require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  hash[:get_meaning] = {}
  hash [:get_emoticon] => {}
  emoticons.each do |k, v|
    hash[:get_meaning][v[1]] = k
    hash [:get_emoticon][v[0]] = hash[:get_meaning][v[1]]
  end
  hash
end

def get_japanese_emoticon(emoticons, emoticon)
  load_library(emoticons)
end

def get_english_meaning(emoticons, emoticon)
  load_library(emoticons)
end
