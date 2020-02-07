#projects can have many backers and backers can back many projects

describe 'Backer - ::new' do
  it 'takes a name on initialization, accessible through an attribute reader' do
    backer = Backer.new("Avi")
    expect(backer.name).to eq("Avi")
  end

  it 'initializes with a @backed_projects attribute, an empty array' do
    backer = Backer.new("Avi")
    expect(backer.backed_projects).to eq([])
  end
end

class Backer
  attr_accessor
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  