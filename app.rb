require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    params[:name].reverse
  end 

  get '/square/:number' do 
    @square = params[:number].to_i ** 2
    @square.to_s
    # @square.map {|num| num ** 2}
  end 

  get '/say/:number/:phrase' do 
    result = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times {result += "#{@phrase}"}
    result
    # @num.times {"#{@phrase}"}
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get '/:operation/:number1/:number2' do 
    @operations = params[:operation]
    @add = params[:number1].to_i + params[:number2].to_i
    @subtract = params[:number1].to_i - params[:number2].to_i
    @multiply = params[:number1].to_i * params[:number2].to_i
    @divide = params[:number1].to_i / params[:number2].to_i
    if @operations == "add"
    "#{@add}"
    elsif @operations == "subtract"
      "#{@subtract}"
      elsif @operations == "multiply"
        "#{@multiply}"
      elsif @operations == "divide"
        "#{@divide}"
    end 
  
  end 
end