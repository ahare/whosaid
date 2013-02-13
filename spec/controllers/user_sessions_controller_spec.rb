require "spec_helper"

describe UserSessionsController do

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new session" do
        UserSession.find.should be_nil
        post :create, user_session: create(:user)
        UserSession.find.should_not be_nil
      end
    end

    context "with invalid attributes" do
      it "does not create a new session" do
        UserSession.find.should be_nil
        post :create, user_session: {email: "", password: ""}
        UserSession.find.should be_nil
      end

      it "re-renders the new method" do
        post :create, user_session: {email: "", password: ""}
        response.should render_template :new
      end
    end
  end

end
