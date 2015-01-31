
class Controller

  def initialize
    @view = View.new
    @my_batch = BurritoGenerator.new
  end

  def launch
    @view.show_welcome_page
    gets
    make_burrito
  end

  def make_burrito
    @my_batch.pick_ingredients
    @view.cooking_burrito
    @view.render_burrito(@my_batch.ingredient_list)
    save_burrito
    want_another
  end


  # def launch
  #   @my_batch.pick_ingredients
  #   @view.show_welcome_page
  #   gets
  #   @view.cooking_burrito
  #   @view.render_burrito(@my_batch.ingredient_list)
  #   decide
  # end

  def want_another
    input = @view.prompt_for_action
    if input != "exit"
      make_burrito
    else
      abort("Thanks for generating burritos!")
    end
  end

  # def another_burrito
  #   @my_batch.pick_ingredients
  #   @view.cooking_burrito
  #   @view.render_burrito(@my_batch.ingredient_list)
  #   decide
  # end

  def save_burrito
    @view.save?
  end

end
