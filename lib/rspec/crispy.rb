require 'rspec/crispy/crispy_hooks'
require 'rspec/crispy/crispy_matchers'
require 'rspec/crispy/version'

module RSpec
  module Crispy
    include ::Crispy
    include ::RSpec::Crispy::CrispyHooks
    include ::RSpec::Crispy::CrispyMatchers

    def self.framework_name
      :crispy
    end

    def self.configure_without_conflict config
      config.after(:each){ ::Crispy::CrispyWorld.reset }
    end

  end
end
