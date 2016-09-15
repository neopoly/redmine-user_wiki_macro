[github]: https://github.com/neopoly/redmine-user_wiki_macro
[doc]: http://rubydoc.info/github/neopoly/redmine-user_wiki_macro/master/file/README.md
[gem]: https://rubygems.org/gems/redmine-user_wiki_macro
[gem-badge]: https://img.shields.io/gem/v/redmine-user_wiki_macro.svg
[inchpages]: https://inch-ci.org/github/neopoly/redmine-user_wiki_macro
[inchpages-badge]: https://inch-ci.org/github/neopoly/redmine-user_wiki_macro.svg?branch=master&style=flat

# redmine-user_wiki_macro

[![Gem Version][gem-badge]][gem]
[![Inline docs][inchpages-badge]][inchpages]

[Gem][gem] |
[Source][github] |
[Documentation][doc]

Adds a `{{user(login_name)}}` macro to the Redmine's wiki engine.

![Screenshot](http://neopoly.github.io/redmine-user_wiki_macro/images/screenshot.png)

## Installation

Ensure you have a `Gemfile.local` file in your Redmine installation. Add to your `Gemfile.local`:

```ruby
gem "redmine-user_wiki_macro"
```

And then execute:

```
$ bundle
```

Restart the Redmine application

## Usage

This macros works best with enabled user avatars. Enable the Gravatar images via
the administration settings:

    Administration > Settings > Display -> Use Gravatar user icons

## Testing

No automatic tests, sir! But this Redmine plugin is used in production.

## TODO

* Find a way to test this Redmine plugin

## Contributing

1. Fork it ( https://github.com/neopoly/redmine-user_wiki_macro/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
