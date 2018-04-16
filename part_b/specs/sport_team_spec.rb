require('minitest/autorun')
require('minitest/rg')

require_relative('../sport_team')

class TestSportTeam < Minitest::Test
  def test_team_name
    team = SportTeam.new("Rangers", ["Davina", "Juan", "Katy"], "Sandy", 0)
    assert_equal("Rangers", team.team_name())
  end

  def test_player
    team = SportTeam.new("Rangers", ["Davina", "Juan", "Katy"], "Sandy", 0)
    assert_equal(["Davina", "Juan", "Katy"], team.players_name())
  end

  def test_coach_name
    team = SportTeam.new("Rangers", ["Davina", "Juan", "Katy"], "Sandy", 0)
    assert_equal("Sandy", team.coach_name)
  end

  def test_set_coach_name
    team = SportTeam.new("Rangers", ["Davina", "Juan", "Katy"], "Sandy", 0)
    team.set_coach_name("Carl")
    assert_equal("Carl", team.coach_name())
  end

  def test_add_new_player
    team = SportTeam.new("Rangers", ["Davina", "Juan", "Katy"], "Sandy", 0)
    team.add_new_player("Mat")
    assert_equal(["Davina", "Juan", "Katy", "Mat"], team.players_name)
  end

  def test_check_player
    team = SportTeam.new("Rangers", ["Davina", "Juan", "Katy"], "Sandy", 0)
    team.check_player("Juan")
    assert_equal("Juan", team.check_player("Juan"))
  end

  def test_win_or_lose
    team = SportTeam.new("Rangers", ["Davina", "Juan", "Katy"], "Sandy", 0)
    team.result("win")
    assert_equal(2, team.result("win"))
  end

end
