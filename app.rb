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

 post '/submit_answer_app' do
  
  #email = JSON.parse(params[:email])
  # input_answer =  params[:input_answer].to_i
  # tokens = params["tokens"].to_i - 1
  # question_id = params["question_id"]
  # date = Time.now.strftime("%d/%m/%Y %H:%M:%S")
  #  db = connection()
  #   db.exec("INSERT INTO answers (user_name, answer, date, question_id) VALUES ('#{email}', '#{answer}', '#{date}', '#{question_id}')")
  #   db.exec("UPDATE user_accounts SET tokens='#{tokens}' WHERE email = '#{email}'")
  # db.close
  #session[:question_id] = ''
  #redirect '/start_game'
  "Post successful - thanks for the info!"  # feedback for Xcode console (successful POST)
end


	

