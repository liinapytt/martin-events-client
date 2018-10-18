class ApiController < ApplicationController
  def about
  	render json: {
  		name: 'liina',
  		date: Date.current,
  		time: Time.now.strftime("%H:%M"),
  		fruits: ['pineapple', 'apple', 'pear', 'grapefruit', 'watermelon']
  		}
  end
end
