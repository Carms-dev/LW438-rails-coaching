class QuestionsController < ApplicationController
    def ask
        # redirect_to answer_path if params[:question]
    end

    def answer
        @question = params[:question]
        @answer = "I can't hear you"

        if @question
            if @question == "I am going to work"
                @answer = "Great!"
            elsif @question[-1] == '?'
                @answer = "Silly question, get dressed and go to work!" if params[:question][-1] == '?'
            else
                @answer = "I don't care, get dressed and go to work!"
            end
        end
    end
    
end
