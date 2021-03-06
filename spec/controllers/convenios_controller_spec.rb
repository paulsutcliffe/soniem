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

describe ConveniosController do

  # This should return the minimal set of attributes required to create a valid
  # Convenio. As you add validations to Convenio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nombre" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ConveniosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all convenios as @convenios" do
      convenio = Convenio.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:convenios)).to eq([convenio])
    end
  end

  describe "GET show" do
    it "assigns the requested convenio as @convenio" do
      convenio = Convenio.create! valid_attributes
      get :show, {:id => convenio.to_param}, valid_session
      expect(assigns(:convenio)).to eq(convenio)
    end
  end

  describe "GET new" do
    it "assigns a new convenio as @convenio" do
      get :new, {}, valid_session
      expect(assigns(:convenio)).to be_a_new(Convenio)
    end
  end

  describe "GET edit" do
    it "assigns the requested convenio as @convenio" do
      convenio = Convenio.create! valid_attributes
      get :edit, {:id => convenio.to_param}, valid_session
      expect(assigns(:convenio)).to eq(convenio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Convenio" do
        expect {
          post :create, {:convenio => valid_attributes}, valid_session
        }.to change(Convenio, :count).by(1)
      end

      it "assigns a newly created convenio as @convenio" do
        post :create, {:convenio => valid_attributes}, valid_session
        expect(assigns(:convenio)).to be_a(Convenio)
        expect(assigns(:convenio)).to be_persisted
      end

      it "redirects to the created convenio" do
        post :create, {:convenio => valid_attributes}, valid_session
        expect(response).to redirect_to(Convenio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved convenio as @convenio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Convenio.any_instance.stub(:save).and_return(false)
        post :create, {:convenio => { "nombre" => "invalid value" }}, valid_session
        expect(assigns(:convenio)).to be_a_new(Convenio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Convenio.any_instance.stub(:save).and_return(false)
        post :create, {:convenio => { "nombre" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested convenio" do
        convenio = Convenio.create! valid_attributes
        # Assuming there are no other convenios in the database, this
        # specifies that the Convenio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Convenio).to receive(:update).with({ "nombre" => "MyString" })
        put :update, {:id => convenio.to_param, :convenio => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested convenio as @convenio" do
        convenio = Convenio.create! valid_attributes
        put :update, {:id => convenio.to_param, :convenio => valid_attributes}, valid_session
        expect(assigns(:convenio)).to eq(convenio)
      end

      it "redirects to the convenio" do
        convenio = Convenio.create! valid_attributes
        put :update, {:id => convenio.to_param, :convenio => valid_attributes}, valid_session
        expect(response).to redirect_to(convenio)
      end
    end

    describe "with invalid params" do
      it "assigns the convenio as @convenio" do
        convenio = Convenio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Convenio.any_instance.stub(:save).and_return(false)
        put :update, {:id => convenio.to_param, :convenio => { "nombre" => "invalid value" }}, valid_session
        expect(assigns(:convenio)).to eq(convenio)
      end

      it "re-renders the 'edit' template" do
        convenio = Convenio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Convenio.any_instance.stub(:save).and_return(false)
        put :update, {:id => convenio.to_param, :convenio => { "nombre" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested convenio" do
      convenio = Convenio.create! valid_attributes
      expect {
        delete :destroy, {:id => convenio.to_param}, valid_session
      }.to change(Convenio, :count).by(-1)
    end

    it "redirects to the convenios list" do
      convenio = Convenio.create! valid_attributes
      delete :destroy, {:id => convenio.to_param}, valid_session
      expect(response).to redirect_to(convenios_url)
    end
  end

end
