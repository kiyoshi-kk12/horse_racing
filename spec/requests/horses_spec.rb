require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/horses", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Horse. As you add validations to Horse, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Horse.create! valid_attributes
      get horses_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      horse = Horse.create! valid_attributes
      get horse_url(horse)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_horse_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      horse = Horse.create! valid_attributes
      get edit_horse_url(horse)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Horse" do
        expect {
          post horses_url, params: { horse: valid_attributes }
        }.to change(Horse, :count).by(1)
      end

      it "redirects to the created horse" do
        post horses_url, params: { horse: valid_attributes }
        expect(response).to redirect_to(horse_url(Horse.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Horse" do
        expect {
          post horses_url, params: { horse: invalid_attributes }
        }.to change(Horse, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post horses_url, params: { horse: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested horse" do
        horse = Horse.create! valid_attributes
        patch horse_url(horse), params: { horse: new_attributes }
        horse.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the horse" do
        horse = Horse.create! valid_attributes
        patch horse_url(horse), params: { horse: new_attributes }
        horse.reload
        expect(response).to redirect_to(horse_url(horse))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        horse = Horse.create! valid_attributes
        patch horse_url(horse), params: { horse: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested horse" do
      horse = Horse.create! valid_attributes
      expect {
        delete horse_url(horse)
      }.to change(Horse, :count).by(-1)
    end

    it "redirects to the horses list" do
      horse = Horse.create! valid_attributes
      delete horse_url(horse)
      expect(response).to redirect_to(horses_url)
    end
  end
end
