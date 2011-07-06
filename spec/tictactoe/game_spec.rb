require File.join(File.dirname(__FILE__), '../spec_helper.rb')

module TicTacToe

  describe Game do
    context /game start/ do
      it /the board should be clear when the game is started/ do
	@messenger = mock("messenger")
	game = Game.new(@messenger)
	game.start
	@messenger.should_receive(:puts).with("true")
	game.isBoardClear?
      end
      end
  end

end
