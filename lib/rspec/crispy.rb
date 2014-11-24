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

  end
end
