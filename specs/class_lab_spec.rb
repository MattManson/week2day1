require("minitest/autorun")
require("minitest/rg")
require_relative"../class_lab.rb"

class TestStudents <MiniTest::Test

  def test_student_name
    student = Students.new("Matt", 17, "coding is awesome", "Ruby")
    assert_equal("Matt", student.name)
  end

  def test_cohort
    student = Students.new("Matt", 17, "coding is awesome", "Ruby")
    assert_equal(17, student.cohort)
  end

  def test_set_name
    student = Students.new("Matt", 17, "coding is awesome", "Ruby")
    student.name = "Bob"
    assert_equal("Bob", student.name)
  end

  def test_talk
    student = Students.new("Matt", 17, "coding is awesome", "Ruby")
    assert_equal("coding is awesome", student.statement)
  end

  def test_favourite_language
    student = Students.new("Matt", 17, "coding is awesome", "Ruby")
    assert_equal("Ruby",student.favourite_language)
  end
end

class TestTeam  <MiniTest::Test

  def setup()
    players = ["jim", "bobby", "sam", "hitler"]
    @team = Team.new("footballz", players,"stalin",0)

  end

  def test_team_name
    assert_equal("footballz", @team.name)
  end

  def test_players
    assert_equal(["jim", "bobby", "sam", "hitler"], @team.players)
  end

  def test_coach
    assert_equal("stalin", @team.coach)
  end

  def test_rename_coach
    @team.coach = "mao"
    assert_equal("mao", @team.coach)
  end

  def test_new_player
    result = @team.add_player("new guy")
    assert_equal(["jim", "bobby", "sam", "hitler", "new guy"], result)
  end

  def test_check_players_true
    result = @team.check_players("jim")
    assert_equal(true, result)
  end

  def test_check_players_false
    result = @team.check_players("satan")
    assert_equal(false, result)
  end

  def test_new_player
    @team.players << "new guy"
    assert_equal(["jim", "bobby", "sam", "hitler", "new guy"], @team.players)
  end

  def test_check_players
    result = @team.players.include?("jim")
    assert_equal(true, result)
  end

  def test_points_win
    result = @team.check_win_lose(true)
    assert_equal(1, result)
  end

  def test_points_lose
    result = @team.check_win_lose(false)
    assert_equal(0, result)
  end

end

class TestLibrary <MiniTest::Test

  def setup
    @books = [{
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      },
    },
     {
      title: "fight club",
      rental_details: {
        student_name: "Matt",
        date: "02/12/16"
      }
    },
     {
      title: "lord of the flies",
      rental_details: {
        student_name: "Ian",
        date: "03/12/16"
      }
    },
     {
      title: "battle royale",
      rental_details: {
        student_name: "Upul",
        date: "04/12/16"
      }

    }]


    @library = Library.new(@books)



  end

  def test_list_all_books
    result = @library.books
    assert_equal(@books, result)
  end

  def test_find_book_by_name()
    result = @library.find_book_by_name("lord_of_the_rings")
    assert_equal(result, @books[0])
  end
end
