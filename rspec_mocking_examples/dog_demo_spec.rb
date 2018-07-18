require_relative './dog_walker'

RSpec.describe DogWalker do
  describe '#walk' do
    let(:dog) { double('dog').as_null_object }
    let(:walker) { DogWalker.new }

    it 'sets walk to completed during walk' do
      allow(walker).to receive(:walk).and_return('completed')
      expect(walker.walk(dog)).to eq('completed')
    end

    it 'walks dog' do
      allow(dog).to receive(:current_state)
      walker.walk(dog)

      expect(dog).to have_received(:current_state)
    end

    it 'walks and feeds dog' do
      allow(dog).to receive(:current_state)

      expect(dog).to receive(:current_state).twice
      walker.package_deal(dog)
    end
  end

  describe '#speak' do
    let(:dog) { instance_double("Dog") }

    xit 'gets a string from input' do
      # CREATE STUB HERE
    end
  end
end
