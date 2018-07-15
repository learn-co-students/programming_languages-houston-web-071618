require "pry"

def reformat_languages(languages)
  new_hash = {}
  asd = nil
  languages.each {|style, languages|
    languages.each {|language, data|
    
    if new_hash.include?(language)
      new_hash[language][:style] << style
      
      
      
    else
      data[:style] = [style]
      new_hash[language] = data
        
        
    end
      #binding.pry
    
    }
    
  }
new_hash

end
