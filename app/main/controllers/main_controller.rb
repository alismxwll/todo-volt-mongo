class MainController < Volt::ModelController
  model :store
  def index
    # Add code for when the index view is loaded
  end

  def about
    # Add code for when the about view is loaded
  end

  def add_item
    _items << {objective: page._new_objective}
    page._new_objective = ''
  end

  def remove_item(item)
    _items.delete(item)
  end

  def current_item
    _items[params._index.or(0).to_i]
  end

  private

  # the main template contains a #template binding that shows another
  # template.  This is the path to that template.  It may change based
  # on the params._controller and params._action values.
  def main_path
    params._controller.or('main') + '/' + params._action.or('index')
  end
end
