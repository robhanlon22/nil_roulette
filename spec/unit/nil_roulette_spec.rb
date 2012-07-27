require "spec_helper"
require "nil_roulette"
require "digest"

describe "Nilroulette" do
  it "should just fuckin call that shit" do
    nil.send(Digest::SHA1.hexdigest("#{Time.now.utc.to_i * rand(9001)}"))
  end

  it "shouldn't be a little bitch" do
    begin
      nil.send(Digest::SHA1.hexdigest("#{Time.now.utc.to_i * rand(9001)}"))
    rescue Exception => e
      error = e
    ensure
      error.should be_nil
    end
  end
end
