def calc_words(input)
  p sentences = input.split('?')
  words = []
  output = []

  sentences.each do |sentence|
    words.push(sentence.split) #Pushes in an array of words during each cycle of sentences.each
  end

  p words

  dictionary = { "0" => "0" , "plus" => "+" , "minus" => "-", "times" => "*", "divided" => "/", "power" => "**" }

  words.each do |sentence|
    temp = ""
    sentence.each do |word|
      dictionary.each do |operator, symbol|
        if word.to_i > 0
          temp += word.to_f.to_s
          break
        end
        if word == operator
          temp+=(symbol)
        end
      end
    end
    temp
    output.push(temp)
  end

  result = ""

  output.each do |string|
    if result != ""
      result += " " + eval(string).to_s
    else
      result += eval(string).to_s
    end
  end

  result
end

p calc_words('What is 2 to the power of 3')
