require "digest"

module CoreHelper
  def send_random_method
    nil.send(Digest::SHA1.hexdigest("#{Time.now.utc.to_i * rand(9001)}"))
  end
end
