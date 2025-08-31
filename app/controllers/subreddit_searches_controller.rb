class SubredditSearchesController < ApplicationController
  def show
    # This should make a request to Reddit API to show some info about the searched subreddit
    subreddit_to_search = params[:query]
    Rails.logger.info("User searched this subreddit #{subreddit_to_search}")
    respond_to do |format|
      format.turbo_stream
    end
  end
end
