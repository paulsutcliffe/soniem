require 'spec_helper'

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

describe SociosController do

  # This should return the minimal set of attributes required to create a valid
  # Socio. As you add validations to Socio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nombre" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SociosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all socios as @socios" do
      socio = Socio.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:socios)).to eq([socio])
    end
  end

  describe "GET show" do
    it "assigns the requested socio as @socio" do
      socio = Socio.create! valid_attributes
      get :show, {:id => socio.to_param}, valid_session
      expect(assigns(:socio)).to eq(socio)
    end
  end

  describe "GET new" do
    it "assigns a new socio as @socio" do
      get :new, {}, valid_session
      expect(assigns(:socio)).to be_a_new(Socio)
    end
  end

  describe "GET edit" do
    it "assigns the requested socio as @socio" do
      socio = Socio.create! valid_attributes
      get :edit, {:id => socio.to_param}, valid_session
      expect(assigns(:socio)).to eq(socio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Socio" do
        expect {
          post :create, {:socio => valid_attributes}, valid_session
        }.to change(Socio, :count).by(1)
      end

      it "assigns a newly created socio as @socio" do
        post :create, {:socio => valid_attributes}, valid_session
        expect(assigns(:socio)).to be_a(Socio)
        expect(assigns(:socio)).to be_persisted
      end

      it "redirects to the created socio" do
        post :create, {:socio => valid_attributes}, valid_session
        expect(response).to redirect_to(Socio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved socio as @socio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Socio.any_instance.stub(:save).and_return(false)
        post :create, {:socio => { "nombre" => "invalid value" }}, valid_session
        expect(assigns(:socio)).to be_a_new(Socio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Socio.any_instance.stub(:save).and_return(false)
        post :create, {:socio => { "nombre" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested socio" do
        socio = Socio.create! valid_attributes
        # Assuming there are no other socios in the database, this
        # specifies that the Socio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Socio).to receive(:update).with({ "nombre" => "MyString" })
        put :update, {:id => socio.to_param, :socio => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested socio as @socio" do
        socio = Socio.create! valid_attributes
        put :update, {:id => socio.to_param, :socio => valid_attributes}, valid_session
        expect(assigns(:socio)).to eq(socio)
      end

      it "redirects to the socio" do
        socio = Socio.create! valid_attributes
        put :update, {:id => socio.to_param, :socio => valid_attributes}, valid_session
        expect(response).to redirect_to(socio)
      end
    end

    describe "with invalid params" do
      it "assigns the socio as @socio" do
        socio = Socio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Socio.any_instance.stub(:save).and_return(false)
        put :update, {:id => socio.to_param, :socio => { "nombre" => "invalid value" }}, valid_session
        expect(assigns(:socio)).to eq(socio)
      end

      it "re-renders the 'edit' template" do
        socio = Socio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Socio.any_instance.stub(:save).and_return(false)
        put :update, {:id => socio.to_param, :socio => { "nombre" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested socio" do
      socio = Socio.create! valid_attributes
      expect {
        delete :destroy, {:id => socio.to_param}, valid_session
      }.to change(Socio, :count).by(-1)
    end

    it "redirects to the socios list" do
      socio = Socio.create! valid_attributes
      delete :destroy, {:id => socio.to_param}, valid_session
      expect(response).to redirect_to(socios_url)
    end
  end

end