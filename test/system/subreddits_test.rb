require "application_system_test_case"

class SubredditsTest < ApplicationSystemTestCase
  setup do
    @subreddit = subreddits(:one)
  end

  test "visiting the index" do
    visit subreddits_url
    assert_selector "h1", text: "Subreddits"
  end
end
