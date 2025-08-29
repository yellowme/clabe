# CLABE validator

## Installation

Add to your application’s Gemfile:

```rb
gem "clabe_mx", require: "clabe"
```

And execute `bundle`.

## Usage

#### Validate

Successful validation:

```ruby
validation = Clabe.validate("002114016003269412")
validation.is_valid? # => true
validation.bank_tag # => "BANAMEX"
validation.bank_name # => "Banco Nacional de México, S.A."
validation.bank_code # => "002"
validation.city # => "Huixtla"
```

Invalid validation:

```ruby
validation = Clabe.validate("002010077777777779")
validation.is_valid? # => false
validation.errors # => ["must have a valid control digit"]
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Contributing

Bug reports and pull requests are welcome on GitHub at [yellowme/clabe](https://github.com/yellowme/clabe).

## Development

After checking out the repo. run `rake spec` to run the tests.

## Extra

Strongly based on this JS version [center-key/clabe-validator](https://github.com/center-key/clabe-validator)

