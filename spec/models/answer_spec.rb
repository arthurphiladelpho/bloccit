require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) {Question.new(title: "Question Title", body: "Question Body", resolved: false)}
  let(:answer) {Answer.new(question: question, body: "Answer body")}

  it "should respond to body" do
  	expect(answer).to respond_to(:body)
  end

end
