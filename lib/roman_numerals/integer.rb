module RomanNumerals
  module Integer
    class InvalidArgument < StandardError; end

    def to_roman_numeral
      raise InvalidArgument if self > 3000 || self <= 0
      convert_to_roman_numeral(self)
    end

    private

    def convert_to_roman_numeral(val)
      return '' if val.zero?
      base_idx = RomanNumerals::BASES.find_index { |base| val / base >= 1 }
      base = RomanNumerals::BASES[base_idx]
      RomanNumerals::SYMBOLS[base_idx] + convert_to_roman_numeral(val - base)
    end
  end
end
