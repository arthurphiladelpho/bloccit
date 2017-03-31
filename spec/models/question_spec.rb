require 'rails_helper'

RSpec.describe Question, type: :model do
  context "attributes" do
  	let(:question) { Question.new(title: "New Question Title", body: "New Question Body", resolved: false) }

  	describe "attributes" do
      it "has a body attribute" do
        expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: false)
      end
    end

  end
end
