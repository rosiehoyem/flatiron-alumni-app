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

describe ForumsController do

  # This should return the minimal set of attributes required to create a valid
  # Forum. As you add validations to Forum, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ForumsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all forums as @forums" do
      forum = Forum.create! valid_attributes
      get :index, {}, valid_session
      assigns(:forums).should eq([forum])
    end
  end

  describe "GET show" do
    it "assigns the requested forum as @forum" do
      forum = Forum.create! valid_attributes
      get :show, {:id => forum.to_param}, valid_session
      assigns(:forum).should eq(forum)
    end
  end

  describe "GET new" do
    it "assigns a new forum as @forum" do
      get :new, {}, valid_session
      assigns(:forum).should be_a_new(Forum)
    end
  end

  describe "GET edit" do
    it "assigns the requested forum as @forum" do
      forum = Forum.create! valid_attributes
      get :edit, {:id => forum.to_param}, valid_session
      assigns(:forum).should eq(forum)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Forum" do
        expect {
          post :create, {:forum => valid_attributes}, valid_session
        }.to change(Forum, :count).by(1)
      end

      it "assigns a newly created forum as @forum" do
        post :create, {:forum => valid_attributes}, valid_session
        assigns(:forum).should be_a(Forum)
        assigns(:forum).should be_persisted
      end

      it "redirects to the created forum" do
        post :create, {:forum => valid_attributes}, valid_session
        response.should redirect_to(Forum.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved forum as @forum" do
        # Trigger the behavior that occurs when invalid params are submitted
        Forum.any_instance.stub(:save).and_return(false)
        post :create, {:forum => {  }}, valid_session
        assigns(:forum).should be_a_new(Forum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Forum.any_instance.stub(:save).and_return(false)
        post :create, {:forum => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested forum" do
        forum = Forum.create! valid_attributes
        # Assuming there are no other forums in the database, this
        # specifies that the Forum created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Forum.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => forum.to_param, :forum => { "these" => "params" }}, valid_session
      end

      it "assigns the requested forum as @forum" do
        forum = Forum.create! valid_attributes
        put :update, {:id => forum.to_param, :forum => valid_attributes}, valid_session
        assigns(:forum).should eq(forum)
      end

      it "redirects to the forum" do
        forum = Forum.create! valid_attributes
        put :update, {:id => forum.to_param, :forum => valid_attributes}, valid_session
        response.should redirect_to(forum)
      end
    end

    describe "with invalid params" do
      it "assigns the forum as @forum" do
        forum = Forum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Forum.any_instance.stub(:save).and_return(false)
        put :update, {:id => forum.to_param, :forum => {  }}, valid_session
        assigns(:forum).should eq(forum)
      end

      it "re-renders the 'edit' template" do
        forum = Forum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Forum.any_instance.stub(:save).and_return(false)
        put :update, {:id => forum.to_param, :forum => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested forum" do
      forum = Forum.create! valid_attributes
      expect {
        delete :destroy, {:id => forum.to_param}, valid_session
      }.to change(Forum, :count).by(-1)
    end

    it "redirects to the forums list" do
      forum = Forum.create! valid_attributes
      delete :destroy, {:id => forum.to_param}, valid_session
      response.should redirect_to(forums_url)
    end
  end

end
