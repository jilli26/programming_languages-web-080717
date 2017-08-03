require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_name|
    language_name.each do |language_name, type|
      type.each do |type, value|
        new_hash[language_name] = {type: value, style: [style]}
        if language_name == :javascript
          new_hash[language_name] = {type: value, style: [:oo, :functional]}
        end
      end
    end
  end
  new_hash
end
