require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name'
    @reversed_name = params[:name].reverse!
    "#{@reversed_name}"
  end

end