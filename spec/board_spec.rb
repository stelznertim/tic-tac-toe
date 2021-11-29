require_relative '../lib/board'

describe Board do
  let(:board) { Board.new }
  it 'updates board' do
    expect(board.update_board(1, 'O')).to eq('O')
    expect(board.update_board(2, 'X')).to eq('X')
    puts ''
  end

  context 'Check if board recognizes a winning option' do
    let(:board) { Board.new }

    it 'is a winning combination' do
      board.update_board(1, 'X')
      board.update_board(2, 'X')
      board.update_board(3, 'X')
      puts ''
      expect(board.check_board).to be true
    end

    it ' is not a winning combination' do
      board.update_board(1, 'O')
      expect(board.check_board).not_to be true
    end
  end
end
