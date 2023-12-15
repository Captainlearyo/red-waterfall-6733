require 'rails_helper'

describe BenderService do
  context "class methods" do
    context "#characters" do
      it "returns all charaters" do
        characters = BenderService.characters_all
        expect(characters).to be_a Array

        first_character = characters[0]

        expect(first_character).to have_key :_id
        expect(first_character[:_id]).to be_a(String)

        expect(first_character).to have_key :allies
        expect(first_character[:allies]).to be_a(Array)
        expect(first_character[:allies][0]).to be_a(String)

        expect(first_character).to have_key :enemies
        expect(first_character[:enemies]).to be_a(Array)
        expect(first_character[:enemies][0]).to be_a(String)

        expect(first_character).to have_key :photoUrl
        expect(first_character[:photoUrl]).to be_a(String)

        expect(first_character).to have_key :name
        expect(first_character[:name]).to be_a(String)

        expect(first_character).to have_key :affiliation
        expect(first_character[:name]).to be_a(String)
      end
    end

    context "#characters_search_by_affiliation" do
      it "returns all characters by affiliation" do
        affiliation = "Fire Nation"
        characters = BenderService.characters_search_by_affiliation(affiliation)
        expect(characters).to be_a Array

        first_character = characters[0]

        expect(first_character).to have_key :_id
        expect(first_character[:_id]).to be_a(String)

        expect(first_character).to have_key :allies
        expect(first_character[:allies]).to be_a(Array)
        expect(first_character[:allies][0]).to be_a(String)

        expect(first_character).to have_key :enemies
        expect(first_character[:enemies]).to be_a(Array)
        expect(first_character[:enemies][0]).to be_a(String)

        expect(first_character).to have_key :photoUrl
        expect(first_character[:photoUrl]).to be_a(String)

        expect(first_character).to have_key :name
        expect(first_character[:name]).to be_a(String)

        expect(first_character).to have_key :affiliation
        expect(first_character[:affiliation]).to be_a(String)
      end
    end
  end
end