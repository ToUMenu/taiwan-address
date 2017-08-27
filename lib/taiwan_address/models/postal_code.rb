module TaiwanAddress
  class PostalCode
    # NOTE https://en.wikipedia.org/wiki/Postal_codes_in_Taiwan
    BASE_CODES = [
      100, 200, 300,
      400, 500, 600,
      700, 800, 900
    ]

    FIRST_DIGETS = BASE_CODES.map{|code| code / 100}
  end
end
