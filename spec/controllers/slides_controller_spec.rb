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

describe SlidesController do

  # This should return the minimal set of attributes required to create a valid
  # Slide. As you add validations to Slide, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "imagen" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SlidesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all slides as @slides" do
      slide = Slide.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:slides)).to eq([slide])
    end
  end

  describe "GET show" do
    it "assigns the requested slide as @slide" do
      slide = Slide.create! valid_attributes
      get :show, {:id => slide.to_param}, valid_session
      expect(assigns(:slide)).to eq(slide)
    end
  end

  describe "GET new" do
    it "assigns a new slide as @slide" do
      get :new, {}, valid_session
      expect(assigns(:slide)).to be_a_new(Slide)
    end
  end

  describe "GET edit" do
    it "assigns the requested slide as @slide" do
      slide = Slide.create! valid_attributes
      get :edit, {:id => slide.to_param}, valid_session
      expect(assigns(:slide)).to eq(slide)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Slide" do
        expect {
          post :create, {:slide => valid_attributes}, valid_session
        }.to change(Slide, :count).by(1)
      end

      it "assigns a newly created slide as @slide" do
        post :create, {:slide => valid_attributes}, valid_session
        expect(assigns(:slide)).to be_a(Slide)
        expect(assigns(:slide)).to be_persisted
      end

      it "redirects to the created slide" do
        post :create, {:slide => valid_attributes}, valid_session
        expect(response).to redirect_to(Slide.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved slide as @slide" do
        # Trigger the behavior that occurs when invalid params are submitted
        Slide.any_instance.stub(:save).and_return(false)
        post :create, {:slide => { "imagen" => "invalid value" }}, valid_session
        expect(assigns(:slide)).to be_a_new(Slide)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Slide.any_instance.stub(:save).and_return(false)
        post :create, {:slide => { "imagen" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested slide" do
        slide = Slide.create! valid_attributes
        # Assuming there are no other slides in the database, this
        # specifies that the Slide created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Slide).to receive(:update).with({ "imagen" => "MyString" })
        put :update, {:id => slide.to_param, :slide => { "imagen" => "MyString" }}, valid_session
      end

      it "assigns the requested slide as @slide" do
        slide = Slide.create! valid_attributes
        put :update, {:id => slide.to_param, :slide => valid_attributes}, valid_session
        expect(assigns(:slide)).to eq(slide)
      end

      it "redirects to the slide" do
        slide = Slide.create! valid_attributes
        put :update, {:id => slide.to_param, :slide => valid_attributes}, valid_session
        expect(response).to redirect_to(slide)
      end
    end

    describe "with invalid params" do
      it "assigns the slide as @slide" do
        slide = Slide.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Slide.any_instance.stub(:save).and_return(false)
        put :update, {:id => slide.to_param, :slide => { "imagen" => "invalid value" }}, valid_session
        expect(assigns(:slide)).to eq(slide)
      end

      it "re-renders the 'edit' template" do
        slide = Slide.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Slide.any_instance.stub(:save).and_return(false)
        put :update, {:id => slide.to_param, :slide => { "imagen" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested slide" do
      slide = Slide.create! valid_attributes
      expect {
        delete :destroy, {:id => slide.to_param}, valid_session
      }.to change(Slide, :count).by(-1)
    end

    it "redirects to the slides list" do
      slide = Slide.create! valid_attributes
      delete :destroy, {:id => slide.to_param}, valid_session
      expect(response).to redirect_to(slides_url)
    end
  end

end
