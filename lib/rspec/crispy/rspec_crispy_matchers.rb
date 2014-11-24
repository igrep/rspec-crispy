require 'crispy'

module RSpec
  module Crispy
    module RSpecCrispyMatchers

      def have_received method_name, *args, &block
      end

      def have_received_once method_name, *args, &block
      end

      class CrispyHaveReceived

        def matches?(subject, &block)
        end

      end

    end
  end
end
