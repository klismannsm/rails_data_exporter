# DataExporter

This gem exports model data into different formats, such as CSV. To achieve so, it uses an export model that handles how the data will be shown.
<br>
Example:

```
class ExampleExportModel
  def initialize(example)
    @example = example
  end

  def export_header
    ['Code', 'Name', 'Random Number', 'Created At', 'Updated At']
  end

  def export
    [code, name, random_number, created_at, updated_at]
  end

  private

  def code
    @example.code
  end

  def name
    @example.name
  end

  def random_number
    @example.random_number
  end

  def created_at
    @example.created_at
  end

  def updated_at
    @example.updated_at
  end
end
```

Exporting the data:

```
DataExporter::Exporter.new(example, :csv).export
```

Exporting the data to a tempfile:

```
DataExporter::Exporter.new(example, :csv).export_to_tempfile
```

<br>
Version History:

```
0.1.0: Initial version, only CSV is supported
0.1.1: Change format in initializer to symbol instead of string
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_exporter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_exporter

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/data_exporter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

