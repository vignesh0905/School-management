class StudentController < ApplicationController


    def index
        @student = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new()
    end

    def create
        @student = Student.new(student_params)
        if @student.save()
            redirect_to action: "index", :notice => "student data saved succesfully" 
        end
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update

        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to action: "index", :notice => "student data saved succesfully"
        end 
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to action: "index", notice => "student data deleted succesfully" 
    end

    private

    def student_params
        params.require(:student).permit(:rollno, :name, :classroom, :bloodgroup, :usertype, :mark1, :mark2, :mark3, :mark4, :mark5, :total, :average, :grade, :teachername)
    end

    
end