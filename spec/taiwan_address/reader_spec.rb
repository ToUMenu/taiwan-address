require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'Code 106' do
    let(:instance) do
      described_class.new(106, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Taipei City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Da An District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Taipei City Da An District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "台北市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "大安區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "台北市 大安區"
    end
  end

  describe 'Code 222' do
    let(:instance) do
      described_class.new(222, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "New Taipei City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Shenkeng District"
    end

    it 'should return address' do
      expect(instance.address).to eq "New Taipei City Shenkeng District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "新北市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "深坑區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "新北市 深坑區"
    end
  end

  describe 'Code 203' do
    let(:instance) do
      described_class.new(203, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Keelung City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Zhongshan District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Keelung City Zhongshan District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "基隆市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "中山區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "基隆市 中山區"
    end
  end

  describe 'Code 209' do
    let(:instance) do
      described_class.new(209, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Lienchiang County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Nangan Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Lienchiang County Nangan Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "連江縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "南竿鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "連江縣 南竿鄉"
    end
  end

  describe 'Code 267' do
    let(:instance) do
      described_class.new(267, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Yilan County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Datong Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Yilan County Datong Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "宜蘭縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "大同鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "宜蘭縣 大同鄉"
    end
  end

  describe 'Code 300' do
    let(:instance) do
      described_class.new(300, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Hsinchu City"
    end

    it 'should return district' do
      expect(instance.district).to eq nil
    end

    it 'should return address' do
      expect(instance.address).to eq "Hsinchu City"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "新竹市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq nil
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "新竹市"
    end
  end

  describe 'Code 313' do
    let(:instance) do
      described_class.new(313, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Hsinchu County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Jianshi Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Hsinchu County Jianshi Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "新竹縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "尖石鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "新竹縣 尖石鄉"
    end
  end

  describe 'Code 326' do
    let(:instance) do
      described_class.new(326, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Taoyuan City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Yangmei District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Taoyuan City Yangmei District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "桃園市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "楊梅區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "桃園市 楊梅區"
    end
  end

  describe 'Code 365' do
    let(:instance) do
      described_class.new(365, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Miaoli County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Tai An Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Miaoli County Tai An Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "苗栗縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "泰安鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "苗栗縣 泰安鄉"
    end
  end

  describe 'Code 423' do
    let(:instance) do
      described_class.new(423, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Taichung City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Dongshi District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Taichung City Dongshi District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "台中市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "東勢區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "台中市 東勢區"
    end
  end

  describe 'Code 510' do
    let(:instance) do
      described_class.new(510, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Changhua County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Yuanlin Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Changhua County Yuanlin Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "彰化縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "員林鎮"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "彰化縣 員林鎮"
    end
  end

  describe 'Code 555' do
    let(:instance) do
      described_class.new(555, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Nantou County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Yuchi Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Nantou County Yuchi Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "南投縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "魚池鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "南投縣 魚池鄉"
    end
  end

  describe 'Code 600' do
    let(:instance) do
      described_class.new(600, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Chiayi City"
    end

    it 'should return district' do
      expect(instance.district).to eq nil
    end

    it 'should return address' do
      expect(instance.address).to eq "Chiayi City"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "嘉義市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq nil
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "嘉義市"
    end
  end

  describe 'Code 605' do
    let(:instance) do
      described_class.new(605, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Chiayi County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Alishan Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Chiayi County Alishan Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "嘉義縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "阿里山鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "嘉義縣 阿里山鄉"
    end
  end

  describe 'Code 638' do
    let(:instance) do
      described_class.new(638, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Yunlin County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Mailiao Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Yunlin County Mailiao Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "雲林縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "麥寮鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "雲林縣 麥寮鄉"
    end
  end

  describe 'Code 724' do
    let(:instance) do
      described_class.new(724, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Tainan City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Qigu District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Tainan City Qigu District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "台南市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "七股區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "台南市 七股區"
    end
  end

  describe 'Code 815' do
    let(:instance) do
      described_class.new(815, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Kaohsiung City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Dashe District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Kaohsiung City Dashe District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "高雄市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "大社區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "高雄市 大社區"
    end
  end

  describe 'Code 883' do
    let(:instance) do
      described_class.new(883, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Penghu County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Qimei Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Penghu County Qimei Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "澎湖縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "七美鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "澎湖縣 七美鄉"
    end
  end

  describe 'Code 893' do
    let(:instance) do
      described_class.new(893, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Kinmen County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Jincheng Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Kinmen County Jincheng Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "金門縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "金城鎮"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "金門縣 金城鎮"
    end
  end

  describe 'Code 913' do
    let(:instance) do
      described_class.new(913, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Pingtung County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Wandan Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Pingtung County Wandan Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "屏東縣"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "萬丹鄉"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "屏東縣 萬丹鄉"
    end
  end
end
