require 'rails_helper'

RSpec.describe Publisher, type: :model do

  it "Validation does not pass if the name is empty" do
    publisher = Publisher.new(name: '', publish: 'Failure test')
    expect(publisher).not_to be_valid
  end

  it "Validation does not pass if content is empty" do
    publisher = Publisher.new(name: 'Failure test', publish: '')
    expect(publisher).not_to be_valid
  end

  it "validation passes If content is described in name and content" do
    publisher=Publisher.new(name:'True',publish:'True')
  end
end
