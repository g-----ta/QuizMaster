class PagesController < ApplicationController

  before_action :authenticate_user

  def quiz
    if @current_user.name == 'admin'
      redirect_to "/questions"
    end

  	@question = Question.order("RANDOM()").first
  	if @question == nil
  	  @question = Question.new
  	end
  end

  def judge
  	@question = Question.find_by(id: params[:id])

  	if @question.number_convert == params[:answer] || @question.string_convert == params[:answer]
	    result = "◯"  		
  	else 
  	  result = "×"
  	end

  	@result = Result.find_by(user_id: @current_user.id, question_id: params[:id])

  	if @result
      @result.result_bef = @result.result
      @result.result = result
    else 
  	  @result = Result.new(
  	  	user_id: @current_user.id,
  	  	question_id: @question.id,
  	  	result: result
  	  )
    end

    if @result.save
      redirect_to("/#{@question.id}/result")
    else
      flash[:notice] = "Error Occured"
      render("pages/quiz")
    end

  end

  def result
    @question = Question.find_by(id: params[:id])
    @result = Result.find_by(user_id: @current_user.id, question_id: params[:id])
  end


end
