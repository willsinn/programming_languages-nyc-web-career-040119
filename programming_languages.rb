def reformat_languages(languages)
  languages.each do |oo_or_functional, language_hash|
      language_hash.each do |language, attribute_hash|
        attribute_hash.each do |attribute, str_value|
          if language_attributes[language].nil?
            language_attributes[language] = {}
          end
end

def languages 
languages = {
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
end