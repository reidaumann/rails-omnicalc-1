class OmniController < ApplicationController
  def sq
    render({:template => "page_templates/square"})
  end

  def sq_result
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2
    render({:template => "page_templates/square_result"})
  end

  def sqrt
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 0.5
    render({:template => "page_templates/square_root"})
  end

  def payment
    @apr_number = params.fetch("users_apr_number").to_f
  @years_number = params.fetch("users_years_number").to_i
  @principal_number = params.fetch("users_principal_number").to_f

  rate_per_period = (@apr_number/100)/12
  number_of_periods = @years_number * 12

  numerator = rate_per_period * @principal_number
  denominator= 1 - ((1 + rate_per_period)**-number_of_periods)

  @monthly_payment = (numerator/denominator).to_fs(:currency)
  render({:template => "page_templates/payment"})
  end

  def random
    @min_number = params.fetch("users_min_number").to_f
    @max_number = params.fetch("users_max_number").to_f
  
    @random_number = rand(@min_number..@max_number)
    render({:template => "page_templates/rand"})
  end
end
