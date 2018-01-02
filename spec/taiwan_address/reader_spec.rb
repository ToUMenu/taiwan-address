require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'it should check alphabet?' do
    it 'should return true on alphabet' do
      expect(described_class.new(222).zone).to eq "New Taipei City"
    end
  end
end
