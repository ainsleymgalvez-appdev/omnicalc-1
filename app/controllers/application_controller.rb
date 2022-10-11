class ApplicationController < ActionController::Base

  def blank_square_form
    
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    
    @num = params.fetch("squared").to_f
    @sqaure_of_num = @num ** 2


    render({ :template => "calculation_templates/square_results.html.erb"})


  end

  def calculate_random

    @min = params.fetch("minimum").to_f

    @max = params.fetch("maximum").to_f

    @random_num = rand(@min..@max)

    render({:template => "calculation_templates/random_results.html.erb" })

  end

  def blank_random_form

    render ({:template => "calculation_templates/random_number.html.erb"})

  end

  def blank_payment_new

    render ({:template => "calculation_templates/payment_number.html.erb"})
  end

  def calculate_payment
    
    @annual_rate = params.fetch("apr").to_f
    @num_of_years = params.fetch("year").to_i
    @loan_amt = params.fetch("principal").to_f

    @num_of_payments = @num_of_years * 12
    @annual_percent = @annual_rate / 100 
    @monthly_rate = @annual_percent / 12

    @numerator = @monthly_rate * @loan_amt
    
    @denominator_1 = @monthly_rate + 1
    @denominator_2 = @num_of_payments * -1
    @denominator_3 = @denominator_1 ** @denominator_2
    @denominator_4 = 1 - @denominator_3

    @payment = @numerator / @denominator_4


    

    render ({:template => "calculation_templates/payment_results.html.erb"})
  end

  def blank_square_root

    render ({:template => "calculation_templates/square_root_number.html.erb"})

  end

  def calculate_square_root

    @number = params.fetch("square_root").to_f
    @square_root_of_num = Math.sqrt(@number)

    render ({:template => "calculation_templates/square_root_results.html.erb"})

  end

end
