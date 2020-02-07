#projects can have many backers and backers can back many projects

class Project
  attr_accessor :backers
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(a_backer)
    @backers << a_backer
    a_backer.backed_projects << self
  end
    