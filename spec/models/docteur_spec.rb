require 'rails_helper'

RSpec.describe Docteur, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "Validation does not pass if the name is empty" do
    docteur = Docteur.new(names: '', availability: 'Failure test')
    expect(docteur).not_to be_valid
  end

  it "Validation does not pass if content is empty" do
    docteur = Docteur.new(names: 'Failure test', availability: '')
    expect(docteur).not_to be_valid
  end

  it "validation passes If content is described in name and content" do
    docteur=Docteur.new(names:'True',availability:'True')
  end
end
