# RSpec::Crispy

[![Build Status](https://travis-ci.org/igrep/rspec-crispy.svg?branch=master)](https://travis-ci.org/igrep/rspec-crispy)
[![Test Coverage](https://codeclimate.com/github/igrep/rspec-crispy/badges/coverage.svg)](https://codeclimate.com/github/igrep/rspec-crispy)
[![Code Climate](https://codeclimate.com/github/igrep/rspec-crispy/badges/gpa.svg)](https://codeclimate.com/github/igrep/rspec-crispy)

Custom matchers for RSpec to call [Crispy](https://github.com/igrep/crispy)'s API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-crispy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-crispy

## Usage

### Use with rspec-mocks

Add `::RSpec::Crispy.configure_without_conflict config` in your `spec_helper.rb`.

```ruby
RSpec.configure do|config|
  config.mock_with(:rspec)
  ::RSpec::Crispy.configure_without_conflict config
end
```

Then, `include ::RSpec::Crispy::CrispyFeatures` in a context where you want to use the features.

```ruby
RSpec.describe YourClass do

  subject { YourClass }

  context 'use crispy' do
    include ::RSpec::Crispy::CrispyFeatures

    before do
      spy_into subject
      subject.new.hoge
    end

    it { is_expected.to have_received(:foo) }
  end

  context 'use rspec-mocks' do
    it 'calls foo' do
      expect(subject).to have_receive(:foo)
      subject.new.hoge
    end
  end

end
```

### Use only rspec-crispy (without rspec-mocks)

TODO: Write usage instructions here

### Available Crispy API

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/igrep/rspec-crispy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

### NOTE

- You must use `rake test` to run `rspec spec/rspec/crispy/configure_without_conflict_spec.rb` and `rspec spec/rspec/crispy/mock_with_rspec_crispy_spec.rb` separately. Do NOT run all specs at once by `rspec spec`.  
