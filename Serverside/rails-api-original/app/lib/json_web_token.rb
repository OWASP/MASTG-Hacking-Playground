class JsonWebToken
  # secret to encode and decode token
  #HMAC_SECRET = Rails.application.secrets.secret_key_base
  KEY = "12341234"


  def self.encode(payload, exp = 24.hours.from_now)
    # set expiry to 24 hours from creation time
    payload[:exp] = exp.to_i
    # sign token with application secret
    JWT.encode(payload, KEY)
  end

  def self.decode(token)
    # get payload; first index in decoded Array
    body = JWT.decode(token, KEY)[0]
    HashWithIndifferentAccess.new body
    # rescue from expiry exception
  rescue JWT::ExpiredSignature, JWT::VerificationError => e
    # raise custom error to be handled by custom handler
    raise ExceptionHandler::ExpiredSignature, e.message
  end
end
