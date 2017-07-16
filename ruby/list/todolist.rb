# PSUEDOCODE
  # Initialize method initializes an array including parameter
    # input: array
    # output: array
  # Create method to add an item to existing list
    # input: string
    # output: array
  #  Create  method to delete an item from existing list
    # input: string
    # output: array
  # Create method to retrieve an index from existing list
    # input: integer
    # output: string

# CLASS DECLARATION
class TodoList
  attr_accessor :get_items

  def initialize(list)
    @get_items = list
  end

  def add_item(item)
    @get_items << item
  end

  def delete_item(item)
    @get_items.delete(item)
    @get_items
  end

  def get_item(index)
    @get_items[index]
  end
end

