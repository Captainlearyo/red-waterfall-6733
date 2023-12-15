class Character
  attr_reader :name, :affiliation, :id

  def initialize(attributes)
    @name = attributes[:name]
    @affiliation = attributes[:affiliation]
    @id = attributes[:_id]
  end
end
