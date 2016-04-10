class TodoList

attr_accessor :contents

  def initialize(contents)
    @contents = contents

  end

  def get_items
    @contents
  end

  def add_item(item)
    @contents << item
  end

  def delete_item(item)
    @contents.delete(item)
  end

  def get_item(index)
    @contents[index]
  end

end
