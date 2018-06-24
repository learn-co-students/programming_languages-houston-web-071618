require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, comp_languages|
    comp_languages.each do |language, attributes|
      if new_hash[language.to_sym]
        new_hash[language.to_sym][:style] << style
      else
        new_hash[language.to_sym] = {
          :type => attributes[:type],
          :style => [style]
        }
      end
    end
  end

  new_hash
end
