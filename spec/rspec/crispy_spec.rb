require 'rspec/crispy'

RSpec.configure do|config|
  config.mock_with ::RSpec::Crispy
  config.include ::Crispy
end

class SomeClass

  SOME_CONSTANT = 'not stubbed'

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

    context 'when stubs' do
      before { stub_const 'SomeClass::SOME_CONSTANT', 'stubbed' }

      it 'mutates the value of constant' do
        expect(SomeClass::SOME_CONSTANT).to eq 'stubbed'
      end
    end

    context 'when not stubs' do
      it 'doesn\'t mutate the value of constant' do
        expect(SomeClass::SOME_CONSTANT).to eq 'not stubbed'
      end
    end

  end

end
