require 'rspec/crispy/rspec_crispy_hooks'
require 'rspec/crispy/rspec_crispy_matchers'
require 'rspec/crispy/version'

module RSpec
  module Crispy
    include ::RSpec::Crispy::RSpecCrispyHooks
    include ::RSpec::Crispy::RSpecCrispyMatchers

    def self.framework_name
      :crispy
    end

    def self.configure_without_conflict config
      config.after(:each){ ::Crispy::CrispyWorld.reset }
    end

  end
end
