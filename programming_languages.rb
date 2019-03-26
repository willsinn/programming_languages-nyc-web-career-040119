def reformat_languages(languages)
  language_attributes={}
  languages.each do |oo_or_functional, language_hash|
      language_hash.each do |language, attribute_hash|
        attribute_hash.each do |attribute, str_value|
          if language_attributes[language].nil?
            language_attributes[language] = {}
          end
          language_attributes[language][:style] ||= []
          language_attributes[language][:style] << oo_or_functional
          if language_attributes[language][attribute].nil?
            language_attributes[language][attribute] = str_value
          end
        end
      end
    end
    language_attributes
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