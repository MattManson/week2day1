require("minitest/autorun")
require("minitest/rg")
require_relative"../class_lab.rb"

# class TestStudents <MiniTest::Test
#
#   def test_student_name
#     student = Students.new("Matt", 17, "coding is awesome", "Ruby")
#     assert_equal("Matt", student.name)
#   end
#
#   def test_cohort
#     student = Students.new("Matt", 17, "coding is awesome", "Ruby")
#     assert_equal(17, student.cohort)
#   end
#
#   def test_set_name
#     student = Students.new("Matt", 17, "coding is awesome", "Ruby")
#     student.name = "Bob"
#     assert_equal("Bob", student.name)
#   end
#
#   def test_talk
#     student = Students.new("Matt", 17, "coding is awesome", "Ruby")
#     assert_equal("coding is awesome", student.statement)
#   end
#
#   def test_favourite_language
#     student = Students.new("Matt", 17, "coding is awesome", "Ruby")
#     assert_equal("Ruby",student.favourite_language)
#   end
# end

class TestTeam  <MiniTest::Test

  def test_team_name
    team = Team.new("footballz", ["jim", "bobby", "sam", "hitler"],"stalin")
    assert_equal("footballz", team.name)
  end

  def test_players
    team = Team.new("footballz", ["jim", "bobby", "sam", "hitler"],"stalin")
    assert_equal(["jim", "bobby", "sam", "hitler"], team.players)
  end

  def test_coach
    team = Team.new("footballz", ["jim", "bobby", "sam", "hitler"],"stalin")
    assert_equal("stalin", team.coach)
  end

  def test_rename_coach
    team = Team.new("footballz", ["jim", "bobby", "sam", "hitler"],"stalin")
    team.coach = "mao"
    assert_equal("mao", team.coach)
  end

  def test_new_player
    team = Team.new("footballz", ["jim", "bobby", "sam", "hitler"],"stalin")
    

end