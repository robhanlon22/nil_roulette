require "spec_helper"

describe "Nilroulette" do
  include CoreHelper

  it "should just fuckin call that 💩" do
    send_random_method
  end

  it "shouldn't be a 👼" do
    begin
      send_random_method
    rescue Exception => e
      error = e
    ensure
      error.should be_nil
    end
  end
end
