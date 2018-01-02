require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'Code 222	Shenkeng District	深坑區' do
    it 'should return zone' do
      expect(described_class.new(222).zone).to eq "New Taipei City"
    end
  end
end
