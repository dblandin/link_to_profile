# link_to_profile

Easily generate profile links.

## Installation

Add this line to your application's Gemfile:

    gem 'link_to_profile'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install link_to_profile

## Usage

```` ruby
raw link_to_profile username: 'dblandin', network: :twitter
# <a href='http://twitter.com/dblandin'>twitter</a>
raw link_to_profile username: 'dblandin', network: :facebook
# <a href='http://facebook.com/dblandin'>facebook</a>
raw link_to_profile username: 'dblandin', network: :linkedin
# <a href='http://linkedin.com/in/dblandin'>linkedin</a>

raw url_to_profile username: 'dblandin', network: :twitter
# 'http://twitter.com/dblandin'
raw url_to_profile username: 'dblandin', network: :facebook
# 'http://facebook.com/dblandin'
raw url_to_profile username: 'dblandin', network: :linkedin
# 'http://linkedin.com/in/dblandin'
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
