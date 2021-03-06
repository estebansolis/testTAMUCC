require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ApparelsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Apparel. As you add validations to Apparel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      Apparel_ID: "1",
      Sex: "Male",
      Article: "Jacket",
      Size: "32",
      Status: "In"
    }
  }

  let(:invalid_attributes) {
    {
      Apparel_ID: nil,
      Sex: nil,
      Article: nil,
      Size: nil,
      Status: nil
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ApparelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all apparels as @apparels" do
      apparel = Apparel.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:apparels)).to eq([apparel])
    end
  end

  describe "GET #show" do
    it "assigns the requested apparel as @apparel" do
      apparel = Apparel.create! valid_attributes
      get :show, {:id => apparel.to_param}, valid_session
      expect(assigns(:apparel)).to eq(apparel)
    end
  end

  describe "GET #new" do
    it "assigns a new apparel as @apparel" do
      get :new, {}, valid_session
      expect(assigns(:apparel)).to be_a_new(Apparel)
    end
  end

  describe "GET #edit" do
    it "assigns the requested apparel as @apparel" do
      apparel = Apparel.create! valid_attributes
      get :edit, {:id => apparel.to_param}, valid_session
      expect(assigns(:apparel)).to eq(apparel)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Apparel" do
        expect {
          post :create, {:apparel => valid_attributes}, valid_session
        }.to change(Apparel, :count).by(1)
      end

      it "assigns a newly created apparel as @apparel" do
        post :create, {:apparel => valid_attributes}, valid_session
        expect(assigns(:apparel)).to be_a(Apparel)
        expect(assigns(:apparel)).to be_persisted
      end

      it "redirects to the created apparel" do
        post :create, {:apparel => valid_attributes}, valid_session
        expect(response).to redirect_to(Apparel.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved apparel as @apparel" do
        post :create, {:apparel => invalid_attributes}, valid_session
        expect(assigns(:apparel)).to be_a_new(Apparel)
      end

      it "re-renders the 'new' template" do
        post :create, {:apparel => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          Apparel_ID: "2",
          Sex: "Female",
          Article: "Pants",
          Size: "28",
          Status: "In"
        }
      }

      it "updates the requested apparel" do
        apparel = Apparel.create! valid_attributes
        put :update, {:id => apparel.to_param, :apparel => new_attributes}, valid_session
        apparel.reload
        expect(assigns(:apparel)).to eq(apparel)
      end

      it "assigns the requested apparel as @apparel" do
        apparel = Apparel.create! valid_attributes
        put :update, {:id => apparel.to_param, :apparel => valid_attributes}, valid_session
        expect(assigns(:apparel)).to eq(apparel)
      end

      it "redirects to the apparel" do
        apparel = Apparel.create! valid_attributes
        put :update, {:id => apparel.to_param, :apparel => valid_attributes}, valid_session
        expect(response).to redirect_to(apparel)
      end
    end

    context "with invalid params" do
      it "assigns the apparel as @apparel" do
        apparel = Apparel.create! valid_attributes
        put :update, {:id => apparel.to_param, :apparel => invalid_attributes}, valid_session
        expect(assigns(:apparel)).to eq(apparel)
      end

      it "re-renders the 'edit' template" do
        apparel = Apparel.create! valid_attributes
        put :update, {:id => apparel.to_param, :apparel => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested apparel" do
      apparel = Apparel.create! valid_attributes
      expect {
        delete :destroy, {:id => apparel.to_param}, valid_session
      }.to change(Apparel, :count).by(-1)
    end

    it "redirects to the apparels list" do
      apparel = Apparel.create! valid_attributes
      delete :destroy, {:id => apparel.to_param}, valid_session
      expect(response).to redirect_to(apparels_url)
    end
  end

end
