require 'player'

describe Player do
  subject (:tarun) { Player.new('Tarun') }
  subject (:big_sean) { Player.new('Big Sean') }
  
  describe '#name' do
    it 'returns the name' do
      expect(tarun.name).to eq 'Tarun'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(tarun.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(big_sean).to receive(:receive_damage)
      tarun.attack(big_sean)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { tarun.receive_damage }.to change { tarun.hit_points }.by(-10)
    end
  end

end