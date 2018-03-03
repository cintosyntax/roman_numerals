require 'roman_numerals/version'
require 'roman_numerals/integer'

module RomanNumerals
  # Order matters for Bases & Symbols!
  BASES = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1].freeze
  SYMBOLS = %w[M CM D CD C XC L XL X IX V IV I].freeze
end

class Integer
  # Decorate Integer class with roman numeral methods
  include RomanNumerals::Integer
end
