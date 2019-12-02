require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "Validation does not pass if the name is empty" do
    comment = Comment.new(name: '', description: 'Failure test')
    expect(comment).not_to be_valid
  end

  it "Validation does not pass if content is empty" do
    comment = Comment.new(name: 'Failure test', description: '')
    expect(comment).not_to be_valid
  end

  it "validation passes If content is described in name and content" do
    comment=Comment.new(name:'True',description:'True')
  end
end
