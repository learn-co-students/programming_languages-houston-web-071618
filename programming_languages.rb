languages = {
  :oo => {
    :ruby => {
      :type => "interpreted",
    },
    :javascript => {
      :type => "interpreted",
    },
    :python => {
      :type => "interpreted",
    },
    :java => {
      :type => "compiled",
    },
  },
  :functional => {
    :clojure => {
      :type => "compiled",
    },
    :erlang => {
      :type => "compiled",
    },
    :scala => {
      :type => "compiled",
    },
    :javascript => {
      :type => "interpreted",
    },

  },
}

def reformat_languages(languages)
  # your code here
  reformat_languages = {}
  languages.each do |oo_or_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if reformat_languages[language].nil?
          reformat_languages[language] = {}
        end
        p reformat_languages[language][:style] ||= []

        reformat_languages[language][:style] << oo_or_functional
        if reformat_languages[language][attribute].nil?
          reformat_languages[language][attribute] = str_value
        end
      end
    end
  end
  reformat_languages
end

p reformat_languages(languages)
