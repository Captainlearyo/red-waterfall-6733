require "rails_helper"

RSpec.describe Character do
  it "exists" do
    attrs = {
      name: "MoMo",
      affiliation: "pet",
      _id: "1",
    }

    character = Character.new(attrs)

    expect(character).to be_a Character
    expect(character.name).to eq("MoMo")
    expect(character.affiliation).to eq("pet")
    expect(character.id).to eq("1")
  end
end