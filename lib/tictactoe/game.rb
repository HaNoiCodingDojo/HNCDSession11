module TicTacToe
    class Game

      def initialize(messenger)
	@messenger = messenger
      end

      def start
      end

      def isBoardClear?
	@messenger.puts "true"
      end

    end
end
