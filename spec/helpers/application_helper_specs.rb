require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

    describe '#string_calculator' do
        context 'validates string' do
            it 'returns 0 if string is empty' do 
                expect(string_calculator('')).to eq 0
            end

            context 'raises RuntimeError' do
                it 'string has negative number' do
                    expect{string_calculator('-1,2')}.to raise_error(RuntimeError)
                end

                it 'string has negative number with message with all negative numbers' do
                    expect{string_calculator('-1,2')}.to raise_error(RuntimeError, 'negative number not allowed [-1]')
                end
            end

            it 'allows \n next line char in the sting' do
                expect(string_calculator('1\n2,3')).to eq 6
            end
        end 

        context 'allows to change delimiter with // as starting string and \n before number' do
            it 'returns sum of integer seperated by ;' do
                expect(string_calculator('//;\n1;2;3')).to eq 6
            end

            it 'returns sum of integer seperated by :' do
                expect(string_calculator('//:\n3:5:9')).to eq 17
            end
        end

    end

end