# Changes:
# Created Player base class.
# Created Game base class.
# Implemented concrete class for each game type.
# Moved stringifying player details to concrete player classes.
# Changed each game class to implement game base class.
# Each game class now takes in an array of player objects rather than array objects.
# Changed PlayGame class to take it a game object.
# Created arrays of player objects for each game to pass in.

class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "#{ player.name }"
  end
end

class Game
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def play_game()
    puts "Players in the game:"
    self.players.each { |player| puts player }
  end

  def get_results()
    "[pretend these are game results]"
  end
end

class PokerPlayer < Player
  attr_reader :hand

  def initialize(name, hand = nil)
    super(name)

    @hand = hand
  end

  def to_s
    "#{ self.name }: #{ self.hand }"
  end
end

class Poker < Game
  def play_game()
    puts "Players in the poker game:"
    self.players.each { |player| puts player }
    # [pretend there's code here]
  end

  def get_results()
    "[pretend these are poker results]"
  end
end

class ChessPlayer < Player
  attr_reader :color
  
  def initialize(name, color)
    super(name)

    @color = color
  end

  def to_s
    "#{ self.name }: #{ self.color }"
  end
end

class Chess < Game
  def play_game()
    puts "Players in the chess game:"
    self.players.each { |player| puts player }
    # [pretend there's code here]
  end

  def get_results()
    "[pretend these are chess results]"
  end
end

class GoPlayer < Player
  attr_reader :color

  def initialize(name, color)
    super(name)

    @color = color
  end

  def to_s
    "#{ self.name}: #{ self.color }"
  end
end

class Go < Game
  def play_game()
    puts "Players in the go game:"
    self.players.each { |player| puts player }
    # [pretend there's code here]
  end

  def get_results()
    "[pretend these are go results]"
  end
end

class PlayGames
  attr_reader :game
  def initialize(game)
    @game = game
  end

  def play()
    self.game.play_game
    puts self.game.get_results
  end
end

pokerPlayers = [
  PokerPlayer.new("alice"),
  PokerPlayer.new("bob"),
  PokerPlayer.new("chris"),
  PokerPlayer.new("dave")
]

chessPlayers = [
  ChessPlayer.new("alice", "white"),
  ChessPlayer.new("bob", "black")
]

goPlayers = [
  GoPlayer.new("alice", "white"),
  GoPlayer.new("bob", "black")
]

pg = PlayGames.new(Poker.new(pokerPlayers))
pg.play()

puts

pg = PlayGames.new(Chess.new(chessPlayers))
pg.play()

puts

pg = PlayGames.new(Go.new(goPlayers))
pg.play()
