
class TodoList

  def initialize(list_array)
    @list = ["apple", "pear"]
  end

  def get_items
    @list
  end

  def add_item(item)
    @list = @list.push(item)
    #^ as opposed to @list.push(item)
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(index)
    @list[index]
  end

end
