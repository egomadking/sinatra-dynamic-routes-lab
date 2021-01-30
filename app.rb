require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    results = ""
    params[:number].to_i.times do
      results << params[:phrase]
    end
    results
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    results = []
    params.each do |key, val|
      results << val
    end
    results.join(" ").concat(".")
  end

  get "/:operation/:number1/:number2" do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    case params[:operation]
    
    when "add"
      (num_1 + num_2).to_s
    when "subtract"
      (num_1 - num_2).to_s
    when "multiply"
      (num_1 * num_2).to_s
    when "divide"
      (num_1 / num_2).to_s
    else
      "Operation error"
    end
  end

end