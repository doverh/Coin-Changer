require 'sinatra'
require_relative 'coin_changer.rb' 
enable 'sessions'

get '/' do
	
	erb:change_input

end

 post '/result' do
 	 coin = params['coin_value']
	 session[:results] =  calc_change(coin.to_f)
	 # res =  calc_change(coin.to_f)
	 # session[:results] = res.assoc("quarters")		 
	 # teste = res.assoc("quarters")
	 erb:result, :locals => {:results=>session[:results]}

end


	

