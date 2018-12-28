require "yaml"

def load_library(emoticons)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  hash = Hash.new
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  emoticons.each do |k, arr|
    hash["get_meaning"][arr[1]] = k
    hash["get_emoticon"][arr[0]] = arr[1]
  end
  hash
end

def get_japanese_emoticon(emoticons, emoticon)
  load_library(emoticons)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each do |k, arr|
     if arr[1] == emoticon
       return arr[0]
     else
      return "Sorry, that emoticon was not found"
    end
  end
end

def get_english_meaning(emoticons, emoticon)
  load_library(emoticons)
end
