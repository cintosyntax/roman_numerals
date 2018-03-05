RSpec.describe RomanNumerals::Integer do
  describe 'decorate Integer class' do
    it 'should be included on Integer class ancestors' do
      expect(Integer.ancestors).to include(RomanNumerals::Integer)
    end
  end

  describe '#to_roman_numeral' do
    subject { integer.to_roman_numeral }

    input_output_grid = {
      '1' => 'I',
      '27' => 'XXVII',
      '39' => 'XXXIX',
      '49' => 'XLIX',
      '76' => 'LXXVI',
      '80' => 'LXXX',
      '311' => 'CCCXI',
      '900' => 'CM',
      '1899' => 'MDCCCXCIX',
      '2800' => 'MMDCCC',
      '2888' => 'MMDCCCLXXXVIII',
      '2899' => 'MMDCCCXCIX'
    }

    input_output_grid.each do |val, rm|
      context "when the integer is #{val}" do
        it "should return #{rm}" do
          expect(val.to_i.to_roman_numeral).to eq(rm)
        end
      end
    end

    describe "given an unsupported integer" do

      context 'when given a integer equal to 0' do
        let(:integer) { 0 }
        it 'should raise an InvalidArgument error' do
          expect { subject }.to raise_error(RomanNumerals::Integer::InvalidArgument)
        end
      end

      context 'when given a integer less than 0' do
        let(:integer) { -1 }
        it 'should raise an InvalidArgument error' do
          expect { subject }.to raise_error(RomanNumerals::Integer::InvalidArgument)
        end
      end
    end


  end
end
