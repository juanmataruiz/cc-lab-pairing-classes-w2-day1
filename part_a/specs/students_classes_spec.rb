require('minitest/autorun')
require('minitest/rg')

require_relative('../students_classes')

class TestStudent < MiniTest::Test
  def test_student_name
    list = Student.new("Katy", 21,"I can talk","I love Ruby")
    assert_equal("Katy", list.get_name())
  end

  def test_student_cohort
    list = Student.new("Katy", 21, "I can talk","I love Ruby")
    assert_equal(21, list.get_cohort())
  end

  def test_set_student_name
    list = Student.new("Katy", 21, "I can talk","I love Ruby")
    list.set_name("Juan")
    assert_equal("Juan", list.get_name())
  end

  def test_set_student_cohort
    list = Student.new("Katy", 21, "I can talk","I love Ruby")
    list.set_cohort(22)
    assert_equal(22, list.get_cohort())
  end

  def test_get_student_talk
    text = Student.new("Katy", 21, "I can talk", "I love Ruby")
    assert_equal("I can talk", text.get_message())
  end

  def test_get_student_student_favourite_programme
    programme = Student.new("Katy", 21, "I can talk", "I love Ruby")
    assert_equal("I love Ruby", programme.get_favourite())

  end
end
