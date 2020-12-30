class Student < ApplicationRecord

    has_many :attendences
    has_many :students, :through => :attendences

    before_save :set_classteacher
    before_update :set_mark
    before_update :set_average  
    before_update :set_grade

    private

    def set_mark
        unless mark1.nil? && mark2.nil? && mark3.nil? && mark4.nil? && mark5.nil?
            self[:total] = mark1 + mark2 + mark3 + mark4 + mark5
        end
    end

    def set_average
        unless mark1.nil? && mark2.nil? && mark3.nil? && mark4.nil? && mark5.nil?
            self[:average] = (mark1 + mark2 + mark3 + mark4 + mark5)/5
        end
    end

    def set_grade
        unless mark1.nil? && mark2.nil? && mark3.nil? && mark4.nil? && mark5.nil?
        avg = (mark1 + mark2 + mark3 + mark4 + mark5)/5
        val = true
        if mark1<35 || mark2<35 || mark3<35 || mark4<35 ||mark5<35
            val = false
        end

        if avg>=90 && val
            self[:grade] = "A"
        elsif avg>=80 && avg<90 && val
            self[:grade] = "B"
        elsif avg>=70 && avg<80 && val
            self[:grade] = "C"
        elsif avg>=35 && avg<70 && val
            self[:grade] = "D"
        else
            self[:grade] = "F"

        end
        end
    end

    def set_classteacher
        @classteacher = Teacher.find_by(:classroom => classroom)
        self[:teachername] = @classteacher.name
    end

end