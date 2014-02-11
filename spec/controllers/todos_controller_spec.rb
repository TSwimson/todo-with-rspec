require "spec_helper"

describe TodosController do
  before(:each) do
      @todo = mock_model("Todo")
      allow(Todo).to receive(:new).and_return(@todo)
  end

  describe "GET new" do
    it "should assign @todo" do
      get :new
      expect(assigns(:todo)).to eq(@todo)
    end

    it "should render :new template" do
      get :new
      expect(response).to render_template("new")
    end

  end

  describe "POST create" do
   before(:each) do
      post :create,  {todo: {title: "get something done!"}}
      expect(Todo).to receive(:create).with({"title" => "get something done!"})
   end
    it "shoudl create an instance of  Todo" do
      post :create,  {todo: {title: "get something done!"}}
    end

    it "should redirect to '/todos/new" do
      expect(response).to redirect_to("/todos/new")
  end
end

end