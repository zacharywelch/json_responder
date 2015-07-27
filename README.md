# json_responder

A rails responder for json.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'json_responder', git: 'git@cagit.careerbuilder.com:zwelch/json_responder.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install 'json_responder', git: 'git@cagit.careerbuilder.com:zwelch/json_responder.git'

## Usage

Add `Responders::JsonResponder` to your responder chain:

```ruby
class ApplicationResponder < ActionController::Responder
  include Responders::JsonResponder
end

class MyController < ApplicationController
  self.responder = ApplicationResponder
end
```

JsonResponder changes a few behaviors on [responders](https://github.com/plataformatec/responders):

- Put returns the resource with a status code of 200 instead of 204 No Content
- Resource errors are returned using the default json array instead of a hash with an errors key

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add tests for your feature.
4. Add your feature.
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create a new Pull Request
