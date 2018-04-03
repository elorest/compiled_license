# Compiled License

Compiles the licences of all shards used in project into binary.
This allows you to legally distribute binaries without having to package the licenses files from the shards.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  compiled_license:
    github: elorest/compiled_license
```

## Usage

```crystal
require "compiled_license"
```

Compile and run

```
$ crystal build src/testapp.cr
$ testapp --licenses
# Returns all licenses to stdout
```

## Contributing

1. Fork it ( https://github.com/elorest/compiled_license/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [elorest](https://github.com/elorest) Isaac Sloan - creator, maintainer
