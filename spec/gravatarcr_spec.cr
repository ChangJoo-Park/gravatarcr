require "./spec_helper"
require "../src/gravatarcr.cr"

include Gravatarcr

describe Gravatarcr do
  it "should return url includes hashed email and given size" do
    avatar_email = "pcjpcj2@gmail.com"
    avatar_size = 64
    url = gravatar_url(avatar_email, avatar_size)
    url.should eq("http://gravatar.com/avatar/f43ebcb0ae804b58eec3fd06c2473804.png?s=64")
  end

  it "should return 64 pixel gravatar when only user email passed" do
    avatar_email = "pcjpcj2@gmail.com"
    url = gravatar_url(avatar_email)
    url.should eq("http://gravatar.com/avatar/f43ebcb0ae804b58eec3fd06c2473804.png?s=64")
  end

  it "should return default avatar when empty arguments" do
    url = gravatar_url()
    url.should eq("http://www.gravatar.com/avatar")
  end

  it "should return default avatar when pass only one Number" do
    url = gravatar_url(64)
    url.should eq("http://www.gravatar.com/avatar")
  end
end
