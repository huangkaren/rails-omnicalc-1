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
  @the_result = (@the_num ** 0.5).to_f
  render({ :template => "game_templates/square_root_results"})
  end

#Payment
  def payment 
    render({ :template => "game_templates/payment"})
  end

  def payment_results 
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i 
    @principal = params.fetch("user_principal").to_f
    @payment = ((@apr / (100 * 12))*@principal) / (1 - ((1 + (@apr / (100 * 12))) ** (-@years * 12)))
    render({ :template => "game_templates/payment_results"})
  end

# Random
  def random 
    render({ :template => "game_templates/random"})
  end

  def random_results 
    @minimum = params.fetch("user_min").to_f
    @maximum = params.fetch("user_max").to_f 
    @random = rand(@minimum..@maximum)
    render({ :template => "game_templates/random_results"})
  end




end
