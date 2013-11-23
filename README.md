# Freeman

A simple (experimental) test gem for Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'freeman'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freeman

## Usage

```ruby
require "freeman"
require "./core_exts"

test "A string is indeed a string" do
  'This is a string'.class.is String 
end

test "Numbers can be divisible by" do
  10.divisible_by(5).is true
end

test "True is false" do
  true.is false
end

# ./core_exts.rb
class Fixnum
  def divisible_by(num)
    self % num == 0
  end
end
```

Returns:

```shell
A string is indeed a string: true
Numbers can be divisible by: true
True is false: false
  from test.rb: 12
```

## Misc

I've been reading Metaprogramming Ruby and thought it'd be fun to try this. Turns out it only took a couple minutes to write, and it's fast, to boot! Normally I would just drop the single library file into a project to avoid running through Bundler as a dependency, but it only adds .1ms to my run-time as a gem. I can live with that.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
