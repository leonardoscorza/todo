require 'rails_helper'

RSpec.describe TaskController, type: :controller do
  describe "PUT #done" do
    before do
    end

    context "with valid task" do
      before do
        @task = create(:task, status: :todo)
      end

      it "The status will be changed" do
        put :done, params: {id: @task.id}
        @task.reload
        expect(@task.status).to eql("done")
      end

      it "The status will be changed" do
        put :done, params: {id: @task.id}
        @task.reload
        expect(@task.status).to eql("done")
      end

      it "The status will be changed" do
        put :done, params: {id: @task.id}
        @task.reload
        expect(@task.status).to eql("done")
      end
    end
  end
end
