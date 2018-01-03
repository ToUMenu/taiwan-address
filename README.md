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
reader = TaiwanAddress::Reader.new(203, :"zh-TW")
reader.zone # => "基隆市"
reader.district # => "中山區"
reader.address # => "基隆市 中山區"

reader.locale = :en
reader.zone # => "Keelung City"
reader.district # => "Zhongshan District"
reader.address # => "Keelung City Zhongshan District"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

Details in [CONTRIBUTING](/CONTRIBUTING.md)

Feel free to send pull request!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
