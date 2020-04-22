require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  
  get '/reversename/:name' do
    @eman = params[:name].reverse
    @eman
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    @a = @num * @num
    @a.to_s
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @p = params[:phrase]
    x = 0 
    while x < @num
    puts @p 
    x += 1
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @a = params[:word1]
    @b = params[:word2]
    @c = params[:word3]
    @d = params[:word4]
    @e = params[:word5]
    @ans = "#{@a} #{@b} #{@c} #{@d} #{@e}."
    @ans 
  end
  
  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @oper == "add"
      @a = @num1 + @num2
    elsif @oper == "subtract"
      @a = @num1 - @num2
    elsif @oper == "multiply"
      @a = @num1 * @num2 
    elsif @oper == "divide"
      @a = @num1 / @num2
    else 
      nil 
    end
    @a.to_s
  end
      

end