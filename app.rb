require("bundler/setup")
Bundler.require(:default)
require 'pry'


Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @stores = Store.all
  erb(:index)
end

post "/store" do
  name = params["name"]
  @store = Store.new({name: name})
  @store.save
  @stores = Store.all
  erb(:index)
end
