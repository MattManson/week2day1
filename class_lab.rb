class Students

  attr_accessor :name, :cohort, :statement, :favourite_language
  def initialize(name, cohort, statement, favourite_language)
    @name = name
    @cohort = cohort
    @statement = statement
    @favourite_language = favourite_language
  end

end

class Team
  attr_accessor :name, :players, :coach, :points
  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players << new_player
    return @players
  end

  def check_players(name)
    @players.include?(name)
  end

  def check_win_lose(win)
    @points += 1 if win == true
    return @points
  end

end
