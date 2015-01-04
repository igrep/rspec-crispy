require 'rspec/crispy'

RSpec.configure do|config|
  ::RSpec::Crispy.configure_without_conflict config
end

RSpec.describe ::RSpec::Crispy do

  context 'when including' do
    include ::RSpec::Crispy

    describe '#spy' do
    end

    describe '#double' do
    end

    describe '#have_received' do
    end

    describe '#have_received_once' do
    end
  end

  context 'when not including' do

    describe '#spy' do
    end

    describe '#double' do
    end

    describe '#have_received' do
    end

  end

end
