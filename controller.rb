require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry-byebug')
require_relative( './models/address')
require_relative( './models/word_formatter')
require( 'json' )

get '/' do 
  erb(:layout)
end

get '/address' do
  content_type(:json)
  address = Address.new(params[:address],params[:building],params[:postcode],params[:phone])
  word_formatter = WordFormatter.new(params[:postcode]).upcase
  results = {
    address: address.address(),
    building: address.building(),
    postcode: address.postcode(),
    phone: address.phone()
  }
  results.to_json
end