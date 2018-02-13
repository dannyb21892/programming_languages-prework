def reformat_languages(input)
  out = {}
  input.each do |style, languages|
    languages.each do |language, info|
      out[language] = {:type => input[style][language][:type], :style => []}
    end
  end
  input.each do |style, languages|
    languages.each do |language, info|
      if out[language][:style].include?(style)
      else
        out[language][:style] << style
      end
    end
  end
  out
end
