require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      :Photo => "MyString",
      :Address => "MyString",
      :property_type => "MyString",
      :number_of_bedrooms => 1,
      :number_of_bathrooms => 1,
      :max_price_per_week => 1,
      :available_date => 1,
      :Roles => 1
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input[name=?]", "listing[Photo]"

      assert_select "input[name=?]", "listing[Address]"

      assert_select "input[name=?]", "listing[property_type]"

      assert_select "input[name=?]", "listing[number_of_bedrooms]"

      assert_select "input[name=?]", "listing[number_of_bathrooms]"

      assert_select "input[name=?]", "listing[max_price_per_week]"

      assert_select "input[name=?]", "listing[available_date]"

      assert_select "input[name=?]", "listing[Roles]"
    end
  end
end
