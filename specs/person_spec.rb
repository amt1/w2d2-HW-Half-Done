require("minitest/autorun")
require("minitest/rg")

require_relative("../person")


class PersonTest < MiniTest::Test

  def setup
    @person = Person.new('Stanley', 16)
  end

  def test_person_get_name
    assert_equal('Stanley', @person.name)
  end

  def test_person_get_age
    assert_equal(16, @person.age)
  end


end
