class GamesController < ApplicationController
  def new
    alphabet = ("a".."z").to_a
    @letters = []
    8.times do
      @letters << alphabet.sample
    end
  end

  def score
    @grid = params["grid"]
    @word = params["word"]
    @score = "le mot n'est pas inclus dans la liste !!!!"

    if @word.chars.all? { |letter| @word.count(letter) <= @grid.count(letter) }
      @score = "le mot est inclus dans la liste"
    end
  end
end

