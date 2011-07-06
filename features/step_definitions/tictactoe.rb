Given /^Game hasn't start$/ do
end

When /^Game start$/ do
  @messenger = StringIO.new
  @game = TicTacToe::Game.new(@messenger)
  @game.start
end

Then /^Board is clear$/ do
  @game.isBoardClear?
  @messenger.string.split("\n").should include("true")
end

