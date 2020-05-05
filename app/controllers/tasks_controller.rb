class TasksController < ApplicationController
    def new 
        @task = Task.new
    end
    def create
        Task.create(task_params)
    end
    def show
        @user = User.find(params[:id])
    end
    

    private 

    def user_params
        params.require(:user).permit(:title,:content)
    end

end