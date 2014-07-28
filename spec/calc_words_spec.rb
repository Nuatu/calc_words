require 'rspec'
require 'calc_words'

describe('calc_words') do
  it("performs  addition") do
    calc_words('What is 5 plus 3?').should(eq("8.0"))
  end
  it("performs subtraction") do
    calc_words('What is 5 minus 3?').should(eq("2.0"))
  end
  it("performs multiplication") do
    calc_words('What is 2 times 2?').should(eq("4.0"))
  end
  it("performs division") do
    calc_words('What 6 divided by 2?').should(eq("3.0"))
  end
  it("performs powers") do
    calc_words('What is 2 to the power of 3').should(eq("8.0"))
  end
    it("takes multiple questions and returns multiple answers") do
    calc_words('What is 2 to the power of 3? What is 3 plus 3? what is 2 minus 3').should(eq('8.0 6.0 -1.0'))
  end
end
