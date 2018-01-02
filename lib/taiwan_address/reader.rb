module TaiwanAddress
  class Reader
    def initialize(code)
      @code = code
      @division_string = PostalCode::POSTAL_CODE_HASH[@code]
    end

    def zone
      code = @code
      case
      when code.between?(100, 116)
        "Taipei City"
      when code.between?(200, 206)
        "Keelung City"
      when code.between?(209, 212)
        "Lienchiang County"
      when code.between?(207, 253)
        "New Taipei City"
      when code.between?(260, 290)
        "Yilan County"
      when code == 300
        "Hsinchu City"
      when code.between?(302, 315)
        "Hsinchu County"
      when code.between?(320, 338)
        "Taoyuan City"
      when code.between?(350, 369)
        "Miaoli County"
      when code.between?(400, 439)
        "Taichung City"
      when code.between?(500, 530)
        "Changhua County"
      when code.between?(540, 558)
        "Nantou County"
      when code == 600
        "Chiayi City"
      when code.between?(602, 625)
        "Chiayi County"
      when code.between?(630, 655)
        "Yunlin County"
      when code.between?(700, 745)
        "Tainan City"
      when code.between?(800, 852)
        "Kaohsiung City"
      when code.between?(880, 885)
        "Penghu County"
      when code.between?(890, 896)
        "Kinmen County"
      when code.between?(900, 947)
        "Pingtung County"
      when code.between?(950, 966)
        "Taitung County"
      when code.between?(970, 983)
        "Hualien County"
      end
    end
  end
end
