require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get task_index_url
    assert_response :success
  end

end
