require 'koala'

class Facebook
  def initialize(access_token)
    @access_token = access_token
    @graph = Koala::Facebook::API.new(@access_token)
  end

  def upload(file)
    @graph.put_video(file)
  end
end
