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

describe ComunicadosController do

  # This should return the minimal set of attributes required to create a valid
  # Comunicado. As you add validations to Comunicado, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "titulo" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ComunicadosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all comunicados as @comunicados" do
      comunicado = Comunicado.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:comunicados)).to eq([comunicado])
    end
  end

  describe "GET show" do
    it "assigns the requested comunicado as @comunicado" do
      comunicado = Comunicado.create! valid_attributes
      get :show, {:id => comunicado.to_param}, valid_session
      expect(assigns(:comunicado)).to eq(comunicado)
    end
  end

  describe "GET new" do
    it "assigns a new comunicado as @comunicado" do
      get :new, {}, valid_session
      expect(assigns(:comunicado)).to be_a_new(Comunicado)
    end
  end

  describe "GET edit" do
    it "assigns the requested comunicado as @comunicado" do
      comunicado = Comunicado.create! valid_attributes
      get :edit, {:id => comunicado.to_param}, valid_session
      expect(assigns(:comunicado)).to eq(comunicado)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Comunicado" do
        expect {
          post :create, {:comunicado => valid_attributes}, valid_session
        }.to change(Comunicado, :count).by(1)
      end

      it "assigns a newly created comunicado as @comunicado" do
        post :create, {:comunicado => valid_attributes}, valid_session
        expect(assigns(:comunicado)).to be_a(Comunicado)
        expect(assigns(:comunicado)).to be_persisted
      end

      it "redirects to the created comunicado" do
        post :create, {:comunicado => valid_attributes}, valid_session
        expect(response).to redirect_to(Comunicado.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved comunicado as @comunicado" do
        # Trigger the behavior that occurs when invalid params are submitted
        Comunicado.any_instance.stub(:save).and_return(false)
        post :create, {:comunicado => { "titulo" => "invalid value" }}, valid_session
        expect(assigns(:comunicado)).to be_a_new(Comunicado)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Comunicado.any_instance.stub(:save).and_return(false)
        post :create, {:comunicado => { "titulo" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested comunicado" do
        comunicado = Comunicado.create! valid_attributes
        # Assuming there are no other comunicados in the database, this
        # specifies that the Comunicado created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Comunicado).to receive(:update).with({ "titulo" => "MyString" })
        put :update, {:id => comunicado.to_param, :comunicado => { "titulo" => "MyString" }}, valid_session
      end

      it "assigns the requested comunicado as @comunicado" do
        comunicado = Comunicado.create! valid_attributes
        put :update, {:id => comunicado.to_param, :comunicado => valid_attributes}, valid_session
        expect(assigns(:comunicado)).to eq(comunicado)
      end

      it "redirects to the comunicado" do
        comunicado = Comunicado.create! valid_attributes
        put :update, {:id => comunicado.to_param, :comunicado => valid_attributes}, valid_session
        expect(response).to redirect_to(comunicado)
      end
    end

    describe "with invalid params" do
      it "assigns the comunicado as @comunicado" do
        comunicado = Comunicado.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Comunicado.any_instance.stub(:save).and_return(false)
        put :update, {:id => comunicado.to_param, :comunicado => { "titulo" => "invalid value" }}, valid_session
        expect(assigns(:comunicado)).to eq(comunicado)
      end

      it "re-renders the 'edit' template" do
        comunicado = Comunicado.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Comunicado.any_instance.stub(:save).and_return(false)
        put :update, {:id => comunicado.to_param, :comunicado => { "titulo" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested comunicado" do
      comunicado = Comunicado.create! valid_attributes
      expect {
        delete :destroy, {:id => comunicado.to_param}, valid_session
      }.to change(Comunicado, :count).by(-1)
    end

    it "redirects to the comunicados list" do
      comunicado = Comunicado.create! valid_attributes
      delete :destroy, {:id => comunicado.to_param}, valid_session
      expect(response).to redirect_to(comunicados_url)
    end
  end

end
