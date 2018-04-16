class SportTeam

  attr_reader(:team_name, :players_name, :coach_name)
  attr_writer(:team_name, :players_name, :coach_name)

  def initialize(name, players, coach, point)
    @team_name = name
    @players_name = players
    @coach_name = coach
    @point = 0
  end

  # def get_team_name
  #   @team_name
  # end
  #
  # def get_players_team
  #   @players_name
  # end
  #
  # def get_couch_team
  #   @couch_name
  # end
  #

  def set_coach_name(new_coach)
    @coach_name = new_coach
  end

  def add_new_player(new_player)
    @players_name << new_player
  end

  def check_player(name)
    players = []
    for players in @players_name
      return players if players == name
    end
  end

  def result(score)
    @point = 0
    if score == "win"
      return @point += 2
    end
  end

end
