require("bundler/setup")
Bundler.require(:default)
require 'pry'


Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

post "/store" do
  name = params["name"]
  if !name.empty?
    @store = Store.new({name: name})
    @store.save
  end
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

post "/brand" do
  name = params["name"]
  if !name.empty?
    @brand = Brand.new({name: name})
    @brand.save
  end
  @brands = Brand.all
  @stores = Store.all
  redirect "/"
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
