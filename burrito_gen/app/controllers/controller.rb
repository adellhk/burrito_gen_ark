
class Controller

  def initialize
    @view = View.new
    @my_batch = BurritoGenerator.new
  end

  def launch
    @my_batch.pick_ingredients
    @view.show_welcome_page
    gets
    @view.cooking_burrito
    @view.render_burrito(@my_batch.ingredient_list)
    decide
  end

  def decide
    input = @view.prompt_for_action
    while input != "exit"
      another_burrito
    end
  end

  def another_burrito
    @my_batch.pick_ingredients
    @view.cooking_burrito
    @view.render_burrito(@my_batch.ingredient_list)
    decide
  end

end




# gen = BurritoGenerator.new
# gen.new_batch!
