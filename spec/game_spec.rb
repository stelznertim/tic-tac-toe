require_relative '../lib/game'

describe Game do
  let(:game) { Game.new }
  context 'play a round' do
    it 'puts a error statement when number is already taken' do
      expect(game.play_round(is_taken_number: true)).to output("Invalid Number. Choose another one next time.\n")
    end
  end
end
