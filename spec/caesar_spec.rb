# frozen_string_literal: true

require './caesar.rb'

describe '#caesar_cipher' do
  it 'works with the string "hello" and a shift of 5' do
    expect(caesar_cipher('hello', 5)).to eql('mjqqt')
  end

  it 'works with capital letters' do
    expect(caesar_cipher('hElLO', 5)).to eql('mJqQT')
  end

  it 'works with spaces and punctuation' do
    expect(caesar_cipher('hello world!', 1)).to eql('ifmmp xpsme!')
  end

  it 'works with negative shifts' do
    expect(caesar_cipher('wxyz', -4)).to eql('stuv')
  end

  it 'underflows and overflows properly' do
    expect(caesar_cipher('wxyz', 2)).to eql('yzab')
    expect(caesar_cipher('abcd', -2)).to eql('yzab')
  end

  it 'works with shifts greater than 26' do
    expect(caesar_cipher('abcde', 56)).to eql('efghi')
  end
end
