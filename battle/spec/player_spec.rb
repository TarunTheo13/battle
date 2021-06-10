require 'player'

describe Player do
  subject (:tarun) { Player.new('Tarun') }
  
  describe '#name' do
    it 'returns the name' do
      expect(tarun.name).to eq 'Tarun'
    end
  end

end