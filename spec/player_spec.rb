require_relative '../lib/player'

describe Player do
  let(:player) { Player.new('O', 'Tim') }

  it 'introduces player with name and symbol' do
    expect(player.user_intro(1)).to eq('Hello Tim your Symbol is O and you are Player No.1')
  end

  it 'displays player name and symbol' do
    expect(player.turn_notification).to eq('Tim please enter the number where you  want to place your O: ')
  end
end
