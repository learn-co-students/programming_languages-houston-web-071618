require"pry"
def reformat_languages(languages)
  # your code here
  new_hash={}
  languages.each do |type, hash|
    hash.each do |language, type_hash|
      type_hash.each do|key, value|

        if !new_hash.has_key?(language)
          new_hash[language]={}
        end

        if !new_hash[language].has_key?(key)
          new_hash[language][key] = value
          new_hash[language][:style] = []
        end

        if !new_hash[language][:style].include?(type)
          new_hash[language][:style].push(type)
        end
      end
    end
  end
  new_hash
end
