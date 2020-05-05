class TasksController < ApplicationController

    def new 
        @task = Task.new
    end

    def index 
        @tasks = Tasks.all 
    end
    

    def create
        Task.create(task_params)
    end

    def show
        @task = Task.find(params[:id])
    end

    def edit 
        @task = Task.find(params[:id])
    end

    def update
        task = Task.find(@arams[:id])
        task.update(task_params)
    end
        


    private 

    def user_params
        params.require(:user).permit(:title,:content)
    end

end