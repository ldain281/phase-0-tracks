#game spec file
require_relative 'game'

describe Game do
  let(:game) { Game.new("Garden") }

  it "has a readable answer word" do
    expect(game.ans_word).to eq "Garden"
  end

  it "has a readable guess word" do
    expect(game.guess_word).to eq "Tree"
  end

end