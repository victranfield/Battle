require 'player'

describe Player do
  subject(:spiderman) { Player.new('Spiderman') }
  subject(:batman) { Player.new('Batman') }

  describe '#name' do
    it 'returns the name' do
      expect(spiderman.name).to eq 'Spiderman'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(spiderman.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { spiderman.receive_damage }.to change { spiderman.hit_points }.by(-10)
    end
  end
 end
end
