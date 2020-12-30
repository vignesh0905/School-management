class Teacher < ApplicationRecord

    has_many :attendences
    has_many :students, :through => :attendences
end
