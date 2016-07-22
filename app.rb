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
  @brand = Brand.find(params['id'])
  @stores = Store.all()
  @brands = Brand.all()
  erb(:brand)
end

get('/stores/:id') do
  @store = Store.find(params['id'])
  @stores = Store.all()
  @brands = Brand.all()
  erb(:store)
end

delete('/stores/:id') do
  Store.find(params['id']).destroy()
  redirect to ('/')
end

delete('/brands/:id') do
  Brand.find(params['id']).destroy()
  redirect to ('/')
end

patch('/stores/:id') do
  new_name = params['store_name']
  @this_store = Store.find(params['id']).update({:name => new_name})
  redirect to ('/stores/' + params['id'].to_s )
end

patch('/brands/:id') do
  new_name = params['brand_name']
  @this_brand = Brand.find(params['id']).update({:name => new_name})
  redirect to ('/brands/' + params['id'].to_s)
end

post('/brands/:brand_id/stores/:store_id') do
  @this_brand = Brand.find(params['brand_id'])
  @this_store = Store.find(params['store_id'])
  @this_brand.stores.push(@this_store)
  redirect to ('/brands/' + @this_brand.id.to_s)
end

post('/stores/:store_id/brands/:brand_id') do
  @this_brand = Brand.find(params['brand_id'])
  @this_store = Store.find(params['store_id'])
  @this_store.brands.push(@this_brand)
  redirect to ('/stores/' + @this_store.id.to_s)
end
