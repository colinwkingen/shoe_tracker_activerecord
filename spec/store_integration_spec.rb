require('spec_helper')

describe('shoe routing', {:type => :feature}) do
  it "allows the user to create a new shoe" do
    visit('/')
    fill_in('new_brand', :with => 'Shoeporium')
    click_button('New Brand')
    expect(page).to have_content('Shoeporium')
  end
  it "allows the user to view a particular shoe" do
    visit('/')
    fill_in('new_brand', :with => 'Shoeporium')
    click_button('New Brand')
    click_link('Shoeporium')
    expect(page).to have_content('Shoeporium')
  end
  it "allows the user to view a particular shoe and delete it" do
    visit('/')
    fill_in('new_brand', :with => 'Shoeporium')
    click_button('New Brand')
    click_link('Shoeporium')
    click_button('Remove Brand')
    expect(page).to_not have_content('Shoeporium')
  end
  it "allows the user to view a particular shoe and update its name" do
    visit('/')
    fill_in('new_brand', :with => 'Shoeporium')
    click_button('New Brand')
    click_link('Shoeporium')
    fill_in('brand_name', :with => 'Carl')
    click_button('New Brand Name')
    expect(page).to_not have_content('Shoeporium')
    expect(page).to have_content('Carl')
  end
  it "allows the user to view a particular shoe and return home" do
    visit('/')
    fill_in('new_brand', :with => 'Bootstrap 3')
    click_button('New Brand')
    fill_in('new_store', :with => 'Shoeporium')
    click_button('New Store')
    click_link('Shoeporium')
    click_link('Home')
    expect(page).to have_content('Bootstrap 3')
    expect(page).to have_content('Shoeporium')
  end
end
