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

get "/stores/:id" do
  @store = Store.find(params[:id])
  erb(:stores)
end

patch "/stores/:id/edit" do
  @store = Store.find(params[:id])
  @store.update({name: params["name"]})
  redirect back
end

delete "/stores/:id/delete" do
  @store = Store.find(params[:id])
  @store.delete
  redirect "/"
end
