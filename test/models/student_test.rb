require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  
  
  test 'titleが空のときsaveされないこと' do
student = Student.new
assert_not student.save
end
  # test "the truth" do
  #   assert true
  # end
end
