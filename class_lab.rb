# class Students
#
#   attr_accessor :name, :cohort, :statement, :favourite_language
#   def initialize(name, cohort, statement, favourite_language)
#     @name = name
#     @cohort = cohort
#     @statement = statement
#     @favourite_language = favourite_language
#   end
#
# end

class Team
  attr_accessor :name, :players, :coach
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

end
