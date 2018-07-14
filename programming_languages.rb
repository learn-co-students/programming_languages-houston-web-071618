def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |language, type_hash|
      type_hash.each do |sym, str|
        if new_hash.include?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {:type => str, :style => [style]}
        end
      end
    end
  end
  return new_hash
end