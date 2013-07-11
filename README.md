# Guard::EmberTools

Ember tools guard automatically rebuilds the Ember
application.js file when ember files are modified using
[ember tools](https://github.com/rpflorence/ember-tools).

## Installation

This guard is dependant on ember-tools so install that first:

```
$ npm install -g ember-tools
```

Add this line to your application's Gemfile:

``` ruby
group :development do
  gem 'guard-embertools'
end
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install guard-embertools
```

Add a default configuration to your guardfile:

```
$ guard init embertools
```

## Usage

See the [guard usage documentation](https://github.com/guard/guard#readme) for
more guard usage information.

## Guardfile

This sample guard will run ember build for any change in the javascripts directory,
excluding the three files that `ember build` uses to compile the application.
``` ruby
guard :embertools do
  watch(%r{^public\/javascripts\/(?!index\.js)(?!templates\.js)(?!application\.js).*})
end
```

This guard shows how to send in the command line arguments for `ember build`.  See
``` ruby
guard :embertools, debug: true, no_cleanup: true, out_file: 'my/custom/location.js'  do
  watch(%r{^public\/javascripts\/(?!index\.js)(?!templates\.js)(?!application\.js).*})
end
```

See [ember tools](https://github.com/rpflorence/ember-tools/blob/master/bin/ember#L21-L28)
for more information about the different build flags.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
