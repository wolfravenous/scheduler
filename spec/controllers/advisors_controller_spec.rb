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

RSpec.describe AdvisorsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Advisor. As you add validations to Advisor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AdvisorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all advisors as @advisors" do
      advisor = Advisor.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:advisors)).to eq([advisor])
    end
  end

  describe "GET #show" do
    it "assigns the requested advisor as @advisor" do
      advisor = Advisor.create! valid_attributes
      get :show, {:id => advisor.to_param}, valid_session
      expect(assigns(:advisor)).to eq(advisor)
    end
  end

  describe "GET #new" do
    it "assigns a new advisor as @advisor" do
      get :new, {}, valid_session
      expect(assigns(:advisor)).to be_a_new(Advisor)
    end
  end

  describe "GET #edit" do
    it "assigns the requested advisor as @advisor" do
      advisor = Advisor.create! valid_attributes
      get :edit, {:id => advisor.to_param}, valid_session
      expect(assigns(:advisor)).to eq(advisor)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Advisor" do
        expect {
          post :create, {:advisor => valid_attributes}, valid_session
        }.to change(Advisor, :count).by(1)
      end

      it "assigns a newly created advisor as @advisor" do
        post :create, {:advisor => valid_attributes}, valid_session
        expect(assigns(:advisor)).to be_a(Advisor)
        expect(assigns(:advisor)).to be_persisted
      end

      it "redirects to the created advisor" do
        post :create, {:advisor => valid_attributes}, valid_session
        expect(response).to redirect_to(Advisor.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved advisor as @advisor" do
        post :create, {:advisor => invalid_attributes}, valid_session
        expect(assigns(:advisor)).to be_a_new(Advisor)
      end

      it "re-renders the 'new' template" do
        post :create, {:advisor => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested advisor" do
        advisor = Advisor.create! valid_attributes
        put :update, {:id => advisor.to_param, :advisor => new_attributes}, valid_session
        advisor.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested advisor as @advisor" do
        advisor = Advisor.create! valid_attributes
        put :update, {:id => advisor.to_param, :advisor => valid_attributes}, valid_session
        expect(assigns(:advisor)).to eq(advisor)
      end

      it "redirects to the advisor" do
        advisor = Advisor.create! valid_attributes
        put :update, {:id => advisor.to_param, :advisor => valid_attributes}, valid_session
        expect(response).to redirect_to(advisor)
      end
    end

    context "with invalid params" do
      it "assigns the advisor as @advisor" do
        advisor = Advisor.create! valid_attributes
        put :update, {:id => advisor.to_param, :advisor => invalid_attributes}, valid_session
        expect(assigns(:advisor)).to eq(advisor)
      end

      it "re-renders the 'edit' template" do
        advisor = Advisor.create! valid_attributes
        put :update, {:id => advisor.to_param, :advisor => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested advisor" do
      advisor = Advisor.create! valid_attributes
      expect {
        delete :destroy, {:id => advisor.to_param}, valid_session
      }.to change(Advisor, :count).by(-1)
    end

    it "redirects to the advisors list" do
      advisor = Advisor.create! valid_attributes
      delete :destroy, {:id => advisor.to_param}, valid_session
      expect(response).to redirect_to(advisors_url)
    end
  end

end
