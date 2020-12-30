class TeacherController < ApplicationController


    def index
        @teacher = Teacher.all
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    def new
        @teacher = Teacher.new()
    end

    def create
        @teacher = Teacher.new(student_params)
        if @teacher.save()
            redirect_to action: "index", :notice => "Teacher data saved succesfully" 
        end
    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update

        @teacher = Teacher.find(params[:id])
        if @teacher.update(student_params)
            redirect_to action: "index", :notice => "Teacher data saved succesfully"
        end 
    end

    def destroy
        @teacher = Teacher.find(params[:id])
        @teacher.destroy
        redirect_to action: "index", notice => "Teacher data deleted succesfully" 
    end

    private

    def student_params
        params.require(:teacher).permit(:empid, :name, :classroom, :bloodgroup, :usertype)
    end

    
end
