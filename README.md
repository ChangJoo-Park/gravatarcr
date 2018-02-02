# Gravatar crystal

Get gravatar url using crystal! 🔮

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  gravatarcr:
    github: changjoo-park/gravatarcr
```

## Usage

```crystal
require "gravatarcr"
include Gravatarcr

gravatar_url("pcjpcj2@gmail", 128) # return my gavatar, size 128
gravatar_url("pcjpcj2@gmail")      # return my gravatar image, size 64
gravatar_url(128)                  # return default gravatar image, size 128
gravatar_url()                     # return default gravatar image, size 64
```

## Development

:construction: WIP

## Contributing

1. Fork it ( https://github.com/changjoo-park/gravatarcr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [changjoo-park](https://github.com/changjoo-park) ChangJoo Park - creator, maintainer
