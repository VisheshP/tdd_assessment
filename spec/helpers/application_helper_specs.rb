require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

    describe '#string_calculator' do
        context 'validates string' do
            it 'returns 0 if string is empty' do 
                expect(string_calculator('')).to eq 0
            end

            it 'raises exception if string have is negative' do
               expect{string_calculator('-1,2')}.to raise_error(RuntimeError)
            end
        end 
    end

end