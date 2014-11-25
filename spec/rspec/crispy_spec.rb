require 'rspec/crispy'

RSpec.configure do|config|
  config.mock_with ::RSpec::Crispy
  config.include ::Crispy
end

RSpec.describe ::RSpec::Crispy do

  describe '#spy' do
  end

  describe '#double' do
  end

  describe '#have_received' do
  end

  describe '#have_received_once' do
  end

  describe '#stub_const' do
  end

end
