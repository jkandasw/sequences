class GuessesController < ApplicationController
  def index
    @user_input_1 = params["first_number"]
    @user_input_2 = params["second_number"]
    @user_input_3 = params["third_number"]

    g=Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    g.save

    @list = Guess.all


    if @user_input_1=@user_input_2=@user_input_3==nil
             @user_input_1=1
             @user_input_2=2
             @user_input_3=3
    end

    if @user_input_1<@user_input_2 && @user_input_2<@user_input_3 && @user_input_1<@user_input_3
      @check="Yes"
    elsif @check="No"
    end

    render("/guesses/index.html.erb")
  end

  def answer


    @user_answer = params["rule"]
    render("/guesses/answer.html.erb")
  end
end
