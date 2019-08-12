require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse!
    "#{@reversed_name}"
  end
  
  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    @squared.to_s
  end
  
  get '/say/:number/:phrase' do
    @say = params[:number].times do
      params[:phrase]
    end
    @say.to_s
  end

end