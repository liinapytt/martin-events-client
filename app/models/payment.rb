class Payment
  def request
	req.body = body
	res = http.request(req)
  end

  def uri
  	URI('http://vso17.cariba.ee/payments.json')
  end

  def http
  	Net::HTTP.new(uri.host, uri.port)
  end

  def net_http
  	Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
  end


  def body
  	{
		"amount": "123",
		"token": "2899cfab862af6858bb8c2eb174da0fe",
        "sender_account": Time.now,
        "recipient_name": "Liina Püttsepp",
        "recipient_account": "kdlajl",
        "description": Event.first.name
	}.to_json
  end

end