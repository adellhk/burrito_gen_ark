
class View

  def cooking_burrito
    puts "We are cooking your burrito...."
    sleep(1)
    puts "Your burrito is ready!"
    sleep(0.5)
  end

  def save?
    puts "If you want to save your burrito please enter a name for it! Otherwise, please press \"enter\"."
    name = gets.chomp
    if name.length > 0
      Burrito.create(name: name)
    end
  end


  # def save?
  # puts "do you want to save this burrito combination?"
  # input = gets.chomp
  #   if input == "yes"
  #     puts "Pick a name for your burrito!"
  #     name = gets.chomp
  #   end
  # end

  def prompt_for_action
    puts "Still hungry? Want another burrito? Press \"ENTER\" for another burrito or \"exit\""
    input = gets.chomp
  end

  def display_all_saved_burritos
    Burrito.all.each do |burrito, index|
      puts "#{index + 1}. #{burrito.name}"
    end
  end


def show_welcome_page
       format = <<-FORMAT
                                              =========================================================

                                                   Do you want to generate a burrito?!?!?!

                                                         )--------------------(
                                                          )      |   |       (
                                                           )       |        (
                                                          )      -----       (
                                                        )_____________________(



                                                          LETS GET STARTED!!!!

                                                    PRESS ******ENTER******TO START

                                            =========================================================
                                                          FORMAT
      puts format

 end


  def render_burrito(ingredients) #array of ingredients
    # ingredients= %W{beef salsa onion cheese}
    format = <<-FORMAT

        )--------------------------------------------------------------------------------------------------------(
             ((((((((((()))))))))))                                X                      (((((((())))))))
    ((((((((((()))))))))))                 X                                                  ((((((((((()))))))))))
          ((((((((((()))))))))))                           X                                       ((((((((((()))))))))))
  ((((((((((()))))))))))                        X               X                      ((((((((((()))))))))))
                                  X                                             X
        )--------------------------------------------------------------------------------------------------------(

              FORMAT

              ingredients.each do |value|
              format=format.sub("X", value)
              #format=format.sub("X", value == 0? " ": value.to_s)
              end
       puts format
  end
end

