# aha-rb

Ruby wrapper around the [AHA!](http://www.aha.io/) API.

Very alpha.

## Usage

Install the gem:

`gem install aha-rb`

or add it to your Gemfile:

`gem 'aha-rb'`

and then:

```ruby
require 'aha-rb'

aha = Aha.new("USERNAME", "PASSWORD", "SUBDOMAIN")

aha.releases # => JSON array of all releases
aha.release(id) # => JSON containing specified release
```