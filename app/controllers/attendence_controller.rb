class AttendenceController < ApplicationController

    def index
    end

    def new
        @attendence = Attendence.new()
    end

    def create
        @teacher = Teacher.find(1)
        
        params[:attendence][:student_id].each do |id|
            if !id.empty?
                @teacher.attendences.build(:student_id => id)
            end
        end
    end

    private

    def attendence_params
        params.require(:attendence).permit(:teacher_id, :student_id)
    end
end
