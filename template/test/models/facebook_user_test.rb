require "test_helper"

describe FacebookUser do
  let(:facebook_user) { FacebookUser.new }

  it "must be valid" do
    value(facebook_user).must_be :valid?
  end
end
