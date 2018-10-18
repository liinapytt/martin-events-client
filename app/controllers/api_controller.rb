class ApiController < ApplicationController
	skip_before_action :authenticate_user!
	skip_before_action :verify_authenticity_token
  def about
  	render json: {
  		name: 'liina',
  		date: Date.current,
  		time: Time.now.strftime("%H:%M"),
  		fruits: ['pineapple', 'apple', 'pear', 'grapefruit', 'watermelon']
  		}
  end

  def haiku
  	render json: {
  		haiku: reverse(haiku_params[:haiku]),
  		name: haiku_params[:name].upcase
  	}
  end

  def haiku_params 
  	params.permit(:haiku, :name)
	 
  end

  def reverse(haiku) 
  	haiku.split(' ').reverse.join(' ')  
  end
end
