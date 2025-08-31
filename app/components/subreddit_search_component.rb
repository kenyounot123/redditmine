# frozen_string_literal: true

class SubredditSearchComponent < ViewComponent::Base
  def initialize(query: nil)
    @current_query = query
  end
end
