def reformat_languages(languages)
  if languages[:oo]
    languages[:oo].values.each do |v|
      v.merge!(:style => [:oo])
    end
    languages[:oo]
  else
    languages[:functional].values.each do |v|
      v.merge!(:style => [:functional])
    end
    languages[:functional]
  end
end
