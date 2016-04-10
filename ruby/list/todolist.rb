class TodoList

attr_accessor :contents

  def initialize(contents)
    @contents = contents

  end

  def get_items
    @contents
  end

end
