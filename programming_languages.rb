require 'pry'
# hash = {}
# hash[:my_key] = "my_value"
#hash[:my_key] = {second_level_key: "second level value"}
#puts hash

def reformat_languages(languages)
  new_hash = {}
  languages.each do |first, language_data| 
      #:oo, {:ruby =>{..}}
    language_data.each do |lang, attribute_data| 
      #:ruby, {:type => ".."}
      attribute_data.each do |attribute, string_value| 
            #:type => ".."
        if new_hash[lang].nil?
          new_hash[lang] = {}
        end
        new_hash[lang][:style] ||= []
        new_hash[lang][:style] << first
        if new_hash[lang][attribute].nil?
          new_hash[attribute] = {}
          new_hash[lang][attribute] = string_value
        end
      end
    end
  end
  new_hash
end

