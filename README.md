# InlineStylesheetTag

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/inline_stylesheet_tag`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inline_stylesheet_tag'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inline_stylesheet_tag

## Usage

Put something like the following in your application.html.erb:

```erb
<%= inline_stylesheet_tag 'https://fonts.googleapis.com/css?family=Gentium+Basic:400,400i,700,700i%7CRoboto:400,700,900' %>
```

The above stylesheet will get inlined. This currently does not work with CSS files in the asset pipeline.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/quintype/inline_stylesheet_tag.

