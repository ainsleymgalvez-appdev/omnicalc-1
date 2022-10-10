class ApplicationController < ActionController::Base

  def blank_square_form
    
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    
    @num = params.fetch("input_number").to_f
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

end
