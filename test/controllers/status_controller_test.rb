require 'test_helper'

class StatusControllerTest < ActionDispatch::IntegrationTest
  test "GET /status" do
    get "/status"
    assert_response(:success)
    assert_equall({ status: "ok" }.to_json, @response.body)
    assert_equall("application/json", @response.media_type)
  end
end
