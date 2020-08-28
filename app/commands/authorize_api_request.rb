class AuthorizeApiRequest
  prepend SimpleCommand

  def initialize(headers = {})
    @headers = headers
  end

  def call
    api_user
  end

  private

  attr_reader :headers

  def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    else
      errors.add(:token, "Missing token")
    end
    nil
  end

  def decoded_auth_token
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  end

  def api_user
    @api_user ||= User.find(decoded_auth_token[:user_id]) if decoded_auth_token
    return @api_user if @api_user
    errors.add(:token, "Invalid token")
    nil
  end

end
