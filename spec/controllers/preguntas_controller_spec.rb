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

describe PreguntasController do

  # This should return the minimal set of attributes required to create a valid
  # Pregunta. As you add validations to Pregunta, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "pregunta" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PreguntasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all preguntas as @preguntas" do
      pregunta = Pregunta.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:preguntas)).to eq([pregunta])
    end
  end

  describe "GET show" do
    it "assigns the requested pregunta as @pregunta" do
      pregunta = Pregunta.create! valid_attributes
      get :show, {:id => pregunta.to_param}, valid_session
      expect(assigns(:pregunta)).to eq(pregunta)
    end
  end

  describe "GET new" do
    it "assigns a new pregunta as @pregunta" do
      get :new, {}, valid_session
      expect(assigns(:pregunta)).to be_a_new(Pregunta)
    end
  end

  describe "GET edit" do
    it "assigns the requested pregunta as @pregunta" do
      pregunta = Pregunta.create! valid_attributes
      get :edit, {:id => pregunta.to_param}, valid_session
      expect(assigns(:pregunta)).to eq(pregunta)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Pregunta" do
        expect {
          post :create, {:pregunta => valid_attributes}, valid_session
        }.to change(Pregunta, :count).by(1)
      end

      it "assigns a newly created pregunta as @pregunta" do
        post :create, {:pregunta => valid_attributes}, valid_session
        expect(assigns(:pregunta)).to be_a(Pregunta)
        expect(assigns(:pregunta)).to be_persisted
      end

      it "redirects to the created pregunta" do
        post :create, {:pregunta => valid_attributes}, valid_session
        expect(response).to redirect_to(Pregunta.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pregunta as @pregunta" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pregunta.any_instance.stub(:save).and_return(false)
        post :create, {:pregunta => { "pregunta" => "invalid value" }}, valid_session
        expect(assigns(:pregunta)).to be_a_new(Pregunta)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pregunta.any_instance.stub(:save).and_return(false)
        post :create, {:pregunta => { "pregunta" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested pregunta" do
        pregunta = Pregunta.create! valid_attributes
        # Assuming there are no other preguntas in the database, this
        # specifies that the Pregunta created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Pregunta).to receive(:update).with({ "pregunta" => "MyString" })
        put :update, {:id => pregunta.to_param, :pregunta => { "pregunta" => "MyString" }}, valid_session
      end

      it "assigns the requested pregunta as @pregunta" do
        pregunta = Pregunta.create! valid_attributes
        put :update, {:id => pregunta.to_param, :pregunta => valid_attributes}, valid_session
        expect(assigns(:pregunta)).to eq(pregunta)
      end

      it "redirects to the pregunta" do
        pregunta = Pregunta.create! valid_attributes
        put :update, {:id => pregunta.to_param, :pregunta => valid_attributes}, valid_session
        expect(response).to redirect_to(pregunta)
      end
    end

    describe "with invalid params" do
      it "assigns the pregunta as @pregunta" do
        pregunta = Pregunta.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pregunta.any_instance.stub(:save).and_return(false)
        put :update, {:id => pregunta.to_param, :pregunta => { "pregunta" => "invalid value" }}, valid_session
        expect(assigns(:pregunta)).to eq(pregunta)
      end

      it "re-renders the 'edit' template" do
        pregunta = Pregunta.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pregunta.any_instance.stub(:save).and_return(false)
        put :update, {:id => pregunta.to_param, :pregunta => { "pregunta" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested pregunta" do
      pregunta = Pregunta.create! valid_attributes
      expect {
        delete :destroy, {:id => pregunta.to_param}, valid_session
      }.to change(Pregunta, :count).by(-1)
    end

    it "redirects to the preguntas list" do
      pregunta = Pregunta.create! valid_attributes
      delete :destroy, {:id => pregunta.to_param}, valid_session
      expect(response).to redirect_to(preguntas_url)
    end
  end

end
