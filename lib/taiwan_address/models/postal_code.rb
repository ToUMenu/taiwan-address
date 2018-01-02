module TaiwanAddress
  class PostalCode
    # NOTE https://en.wikipedia.org/wiki/Postal_codes_in_Taiwan
    BASE_CODES = [
      100, 200, 300,
      400, 500, 600,
      700, 800, 900
    ]

    FIRST_DIGETS = BASE_CODES.map{ |code| code / 100 }

    POSTAL_CODE_HASH = {
      # Taipei City
      100 => "zhongzheng",
      103 => "datong",
      104 => "zhongshan",
      105 => "songshan ",
      106 => "daan",
      108 => "wanhua",
      110 => "xinyi",
      111 => "shilin",
      112 => "beitou",
      114 => "neihu",
      115 => "nangang",
      116 => "wenshan",
      # Keelung City
      200 => "renai",
      201 => "xinyi",
      202 => "zhongzheng",
      203 => "zhongshan",
      204 => "anle",
      205 => "nuannuan",
      206 => "qidu",
      # Lienchiang County
      209 => "nangan",
      210 => "beigan",
      211 => "Juguang",
      212 => "",
      # New Taipei City
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
      212 => "",
    }

    def all

    end
  end
end
