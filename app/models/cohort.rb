class Cohort < ActiveRecord::Base
    has_many :students

    def add_student (name, age)
        Student.create(name: name, age: age, cohort_id: self.id )
    end

    def average_age
        (self.students.map{|student| student.age}.sum).to_f / (self.students.size).to_f
    end

    def total_students
        self.students.count
    end

    def self.biggest
        Cohort.all.max_by{|cohort| cohort.total_students}
    end

    def self.sort_by_mod
        Cohort.all.sort_by{|cohort| cohort.current_mod}
    end
end

# Cohort.first
# Cohort.last

# Cohort.first.add_student("Xxx", 35)
# Cohort.last.add_student("Yyy", 38)

# Cohort.first.average_age
# Cohort.last.average_age

# Cohort.first.total_students
# Cohort.last.total_students

# Cohort.biggest

# Cohort.sort_by_mod