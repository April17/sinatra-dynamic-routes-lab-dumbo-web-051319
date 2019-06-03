require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name_rev = params[:name].to_s.reverse
    "#{@name_rev}"
  end

  get '/square/:number' do
    @number_sqr = params[:number].to_i ** 2
    "#{@number_sqr}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase].to_s
    @number = params[:number].to_i
    "#{@phrase} " * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1].to_s
    w2 = params[:word2].to_s
    w3 = params[:word3].to_s
    w4 = params[:word4].to_s
    w5 = params[:word5].to_s
    @phrase = "#{w1} #{w2} #{w3} #{w4} #{w5}."
    "#{@phrase}"
  end
  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation].to_s
    if operation == "add"
      "#{number1 + number2}"
    elsif operation  == "subtract"
      "#{number1 - number2}"
    elsif operation  == "multiply"
      "#{number1 * number2}"
    elsif operation  == "divide"
      "#{number1 / number2}"
    end
  end

end
