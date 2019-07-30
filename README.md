# CLABE validator

## Installation

- Add `gem "clabe"` to your application's Gemfile and then execute `bundle`.
- Or install it yourself as: `gem install clabe`

## Usage

#### Validate and serialize

Successfully validation
```ruby
CLABE = '002115016003269411'
Clabe.validate(CLABE)
# returns { is_valid: true, bank_tag: 'BANAMEX', city: 'San Luis de la Paz' }
```

Invalid validation
```ruby
CLABE = '002010077777777779'
Clabe.validate(CLABE)
# returns { is_valid: false, error: 'Must have a valid control digit' }
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Contributing

Bug reports and pull requests are welcome on GitHub at [yellowme/clabe](https://github.com/yellowme/clabe).

## Development

After checking out the repo. run `rake spec` to run the tests.

## Extra

Strongly based on this JS version [center-key/clabe-validator](https://github.com/center-key/clabe-validator)

