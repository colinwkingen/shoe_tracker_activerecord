require('spec_helper')

describe(Brand) do
  it "shoe can have many stores carry it" do
    rascalFlats =  Brand.create({:name => "Rascal Flats"})
    shoestore1 = Store.create({:name => "Merchandise Expanse"})
    shoestore2 = Store.create({:name => "Tims Dry Goods"})
    rascalFlats.stores.push(shoestore1, shoestore2)
    expect(rascalFlats.stores).to(eq([shoestore1, shoestore2]))
  end
  it "should not allow creation of a brand with an empty string as name" do
    bootsy =  Brand.create({:name => "Bootsy Collins"})
    emptybrand = Brand.create({:name => ""})
    expect(Brand.all()).to(eq([bootsy]))
  end
  it "should not allow creation of a brand with a less than 2 letter name" do
    bootsy =  Store.create({:name => "Bootsy Collins"})
    emptybrand = Store.create({:name => "Z"})
    expect(Store.all()).to(eq([bootsy]))
  end
end
