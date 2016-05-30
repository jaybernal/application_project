require 'test_helper'

class FormInputTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Initial Test Should Always be True" do
    f = FormInput.new(logo: "http://www.starcitycodeschool.com/assets/logo-with-border.png?ae65cd2c", company_name: "Star City Code School", company_address: "Lincoln, NE", first_name: "Julio", middle_name: "Jay", last_name: "Bernal")
    assert(f.valid?, "This should be valid at setup")
  end

  test "Should be vaild with a Company Logo" do
    f = FormInput.new(logo: "http://www.starcitycodeschool.com/assets/logo-with-border.png?ae65cd2c", company_name: "Star City Code School", company_address: "Lincoln, NE", first_name: "Julio", middle_name: "Jay", last_name: "Bernal")
    f.logo = nil
    refute(f.valid?, "You need a Company Logo")
    assert(f.errors, [:logo])
  end

  test "Should be valid with Company Name" do
    f = FormInput.new(logo: "http://www.starcitycodeschool.com/assets/logo-with-border.png?ae65cd2c", company_name: "Star City Code School", company_address: "Lincoln, NE", first_name: "Julio", middle_name: "Jay", last_name: "Bernal")
    f.company_name =  nil
    refute(f.valid?, "You need a company name")
    assert(f.errors, [:company_name])
  end

  test "Should be valid with a Company address" do
    f = FormInput.new(logo: "http://www.starcitycodeschool.com/assets/logo-with-border.png?ae65cd2c", company_name: "Star City Code School", company_address: "Lincoln, NE", first_name: "Julio", middle_name: "Jay", last_name: "Bernal")
    f.company_address = nil
    refute(f.valid?, "You need a company address")
  assert(f.errors, [:company_address])
  end

  test "Should be valid with a First Name" do
    f = FormInput.new(logo: "http://www.starcitycodeschool.com/assets/logo-with-border.png?ae65cd2c", company_name: "Star City Code School", company_address: "Lincoln, NE", first_name: "Julio", middle_name: "Jay", last_name: "Bernal")
    f.first_name = nil
    refute(f.valid?, "You need a first name")
    assert(f.errors, [:first_name])
  end


  test "Should be valid with a Middel Name" do
    f = FormInput.new(logo: "http://www.starcitycodeschool.com/assets/logo-with-border.png?ae65cd2c", company_name: "Star City Code School", company_address: "Lincoln, NE", first_name: "Julio", middle_name: "Jay", last_name: "Bernal")
    f.middle_name = nil
    refute(f.valid?, "You need a Middle Name")
    assert(f.errors, [:middle_name])
  end


  test "Should be valid with a Last Name" do
    f = FormInput.new(logo: "http://www.starcitycodeschool.com/assets/logo-with-border.png?ae65cd2c", company_name: "Star City Code School", company_address: "Lincoln, NE", first_name: "Julio", middle_name: "Jay", last_name: "Bernal")
  f.last_name = nil
  refute(f.valid?, "Should be valid with last name")
  assert(f.errors, [:last_name])
  end

end
