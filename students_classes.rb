class Student

  def initialize(name, cohort, message, favourite)
    @name = name
    @cohort = cohort
    @message = message
    @tv_programme = favourite
  end

  def get_name()
    @name
  end

  def get_cohort()
    @cohort
  end

  def set_name(new_name)
    return @name = new_name
  end

  def set_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def get_message
    return @message
  end

  def get_favourite
    return @tv_programme
  end



end
