module Saferent
  class Request

    def initialize
      #TBD
    end

    def send(client)
      raise ArgumentError unless client.kind_of? Saferent::Client
      full_response = client.class.post('/b2b/demits.aspx', :body => {:XMLPost => "--- xml string ---"})
      Saferent::Response.new(full_response["ApplicantScreening"]["Response"])
    end
  end
end
