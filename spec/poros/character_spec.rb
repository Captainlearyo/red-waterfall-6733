require "rails_helper"

RSpec.describe Character do
  it "exists" do
    attrs = {
      name: "MoMo",
      affiliation: "pet",
      _id: "1",
      photoUrl: "Link"
    }

    character = Character.new(attrs)

    expect(character).to be_a Character
    expect(character.name).to eq("MoMo")
    expect(character.affiliations).to eq("pet")
    expect(character.id).to eq("1")
    expect(character.allies).to eq(["None"])
    expect(character.enemies).to eq(["None"])
    expect(character.photo_url).to eq("Link")
  end
end