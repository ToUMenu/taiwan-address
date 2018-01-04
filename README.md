# TaiwanAddress

[![Build Status](https://travis-ci.org/ToUMenu/taiwan-address.svg?branch=master)](https://travis-ci.org/ToUMenu/taiwan-address)
[![Coverage Status](https://coveralls.io/repos/github/ToUMenu/taiwan-address/badge.svg?branch=master)](https://coveralls.io/github/ToUMenu/taiwan-address?branch=master)

## Installation

Install with application's Gemfile:

```ruby
gem 'taiwan_address'
```

Or install it yourself as:

```shell
$ gem install taiwan_address
```

## Usage

### Reader

```ruby
address = TaiwanAddress::Reader.new(203, :"zh-TW")
address.zone # => "基隆市"
address.district # => "中山區"
address.address # => "基隆市 中山區"

address.locale = :en
address.zone # => "Keelung City"
address.district # => "Zhongshan District"
address.address # => "Keelung City Zhongshan District"

address.code = 815
address.address # => "Kaohsiung City Dashe District"
address.is_city? # => true
address.is_county? # => false

address.is_district? # => true
address.is_township? # => false
address.is_islands? # => false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

Details in [CONTRIBUTING](/CONTRIBUTING.md)

Feel free to send pull request!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
