require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @phrase = "#{params[:phrase]}\n"
    @phrase*@times
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]}", "#{params[:word2]}", "#{params[:word3]}", "#{params[:word4]}", "#{params[:word5]}."
    @sentence.join(" ")
  end

  get '/:operation/:number1/:number2'

end
