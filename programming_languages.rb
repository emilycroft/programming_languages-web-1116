def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language|
    language.each do |language2, type_name|
      type_name.each do |type_name2, value|
        new_hash[language2] = { type_name2 => value, :style => [type] }
      end
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
