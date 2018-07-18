require_relative './dog_walker'

RSpec.describe DogWalker do
  describe '#walk' do
    let(:dog) { double('dog').as_null_object }
    let(:walker) { DogWalker.new }

    it 'sets walk to completed during walk' do
      allow(walker).to receive(:walk).with(dog).and_return('completed')
      expect(walker.walk(dog)).to eq('completed')
    end

    it 'walks dog' do
      allow(dog).to receive(:current_state)
      walker.walk(dog)

      expect(dog).to have_received(:current_state).with('walking')
    end

    it 'walks and feeds dog' do
      expect(dog).to receive(:current_state).twice
      walker.package_deal(dog)
    end
  end

  describe '#speak' do
    let(:dog) { instance_double("Dog") }

    it 'gets a string from input' do
      allow(dog).to receive(:speak).and_return('Hello world!')

      expect(dog.speak).to eq('Hello world!')
    end
  end
end
