require('spec_helper')

describe('brand routing', {:type => :feature}) do
  it "allows the user to create a new brand" do
    visit('/')
    fill_in('new_brand', :with => 'Shoedude')
    click_button('New Brand')
    expect(page).to have_content('Shoedude')
  end
  it "allows the user to view a particular brand" do
    visit('/')
    fill_in('new_brand', :with => 'Shoedude')
    click_button('New Brand')
    click_link('Shoedude')
    expect(page).to have_content('Shoedude')
  end
  it "allows the user to view a particular brand and delete it" do
    visit('/')
    fill_in('new_brand', :with => 'Shoedude')
    click_button('New Brand')
    click_link('Shoedude')
    click_button('Remove Brand')
    expect(page).to_not have_content('Shoedude')
  end
  it "allows the user to view a particular brand and update its name" do
    visit('/')
    fill_in('new_brand', :with => 'Shoedude')
    click_button('New Brand')
    click_link('Shoedude')
    fill_in('brand_name', :with => 'Carl')
    click_button('New Brand Name')
    expect(page).to_not have_content('Shoedude')
    expect(page).to have_content('Carl')
  end
  it "allows the user to view a particular brand and return home" do
    visit('/')
    fill_in('new_brand', :with => 'Shoedude')
    click_button('New Brand')
    fill_in('new_store', :with => 'Shoeporium')
    click_button('New Store')
    click_link('Shoedude')
    click_link('Home')
    expect(page).to have_content('Shoedude')
    expect(page).to have_content('Shoeporium')
  end
end
