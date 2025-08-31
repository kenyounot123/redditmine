class RedditService
  def self.client
    @client ||= SimplyReddit::Client.new(
      client_id: Rails.application.credentials.dig(:reddit, :client_id),
      secret: Rails.application.credentials.dig(:reddit, :secret),
      username: Rails.application.credentials.dig(:reddit, :username),
      password: Rails.application.credentials.dig(:reddit, :password)
    )
  end
end
