languages_hash = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do | key, data | 
    if key == :oo
    data.each do | lang_name, lang_type |
      new_hash[lang_name]
      new_hash[lang_name] = lang_type
      new_hash[lang_name][:style] = [:oo]
    end
    end 
    if key == :functional
    data.each do | lang_name, lang_type |
      new_hash[lang_name]
      new_hash[lang_name] = lang_type
      new_hash[lang_name][:style] = [:functional]
    end
    end   
    data.each do | lang_name, lang_type |
      if lang_name == :javascript
      new_hash[lang_name]
      new_hash[lang_name] = lang_type
      new_hash[lang_name][:style] = [:oo, :functional]
    end 
    end
  end
# return my new_hash
new_hash
end
reformat_languages(languages_hash)





