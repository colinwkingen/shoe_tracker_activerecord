require('spec_helper')

describe(Store) do
  it "can contain multiple brands of shoe" do
    shoeland = Store.create({:name => "Ultimate Shoe Land"})
    shoebrand1 = Brand.create({:name => "Super Boot"})
    shoebrand2 = Brand.create({:name => "Disposable Work Booties"})
    shoeland.brands.push(shoebrand1, shoebrand2)
    expect(shoeland.brands).to(eq([shoebrand1, shoebrand2]))
  end
  it "should not allow creation of a store with an empty string as name" do
    locker =  Store.create({:name => "The Hurt Locker"})
    emptystore = Store.create({:name => ""})
    expect(Store.all()).to(eq([locker]))
  end
  it "should not allow creation of a store with a less than 2 letter name" do
    locker =  Store.create({:name => "The Hurt Locker"})
    nostore = Store.create({:name => "Z"})
    expect(Store.all()).to(eq([locker]))
  end
  it "should take the name of every new store object and capital case it" do
    new_store = Store.create({:name => "shoeBeAst"})
    expect(new_store.name).to(eq("Shoebeast"))
  end
end
