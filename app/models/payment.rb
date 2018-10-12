class Payment
  def request
	req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
	req.body = body
	res = http.request(req)
  end

  def uri
  	URI('http://vso17.cariba.ee/payments.json')
  end

  def http
  	http = Net::HTTP.new(uri.host, uri.port)
  end

  def body
  	{
		"amount": "123",
		"token": "2899cfab862af6858bb8c2eb174da0fe",
        "sender_account": Time.now,
        "recipient_name": "liina",
        "recipient_account": "kdlajl",
        "description": Event.first.name
	}.to_json
  end

end