require("sinatra/activerecord")
require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end

post('/brands') do
  @new_brand = Brand.create({:name => params['new_brand'] })
  redirect to ('/')
end

post('/stores') do
  @new_brand = Store.create({:name => params['new_store'] })
  redirect to ('/')
end

get('/brands/:id') do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:brands)
end

get('/stores/:id') do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:stores)
end
