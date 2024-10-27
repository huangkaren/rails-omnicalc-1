class ZebraController < ApplicationController
  def home 
    render({ :template => "game_templates/homepage"})
  end

# Square
  def square 
        render({ :template => "game_templates/square"})
  end

  def square_results 
    @the_num = params.fetch("users_number").to_f
    @the_result = (@the_num ** 2).to_f
    render({ :template => "game_templates/square_results"})
  end

  # Square Root
  def square_root 
    render({ :template => "game_templates/square_root"})
  end

  def square_root_results 
    @the_num = params.fetch("users_number").to_f
    @the_result = (@the_num ** 0.5)
    
    render({ :template => "game_templates/square_root_results"})
  end

#Payment
  def payment 
    render({ :template => "game_templates/payment"})
  end

  def payment_results 
    render({ :template => "game_templates/payment_results"})
  end

# Random
  def random 
    render({ :template => "game_templates/random"})
  end

  def random_results 
    render({ :template => "game_templates/random_results"})
  end




end
