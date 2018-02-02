require "digest"
require "./gravatarcr/*"

module Gravatarcr
  DEFAULT_SIZE = 64

  def gravatar_url(email : String = "", size : Int32 = DEFAULT_SIZE)
    if (email.size > 0 && size)
      gravatar = Digest::MD5.hexdigest(email).downcase
      url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
    else
      "http://www.gravatar.com/avatar"
    end
  end

  def gravatar_url(size : Int32 = DEFAULT_SIZE)
    "http://www.gravatar.com/avatar"
  end
end
