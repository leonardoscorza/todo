require 'rails_helper'

RSpec.describe Task, type: :model do
    before do
      @task = create(:task, status: :todo)
    end

    it "The status is done" do
      @task.done
      expect(@task.status).to eq("done")
    end
end
