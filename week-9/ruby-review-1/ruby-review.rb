# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
=begin
INPUT: 
OUTPUT:
STEPS:
  Create a template for the global cohort
    Create students, name, phase 0 start date, immersive start date, graduation date, and email list, number of students
    Create method to add student to cohort, remove student from cohort, see current phase, check if the cohort graduated

  Create a template for the local cohort
    Inherit all of the characteristics from the global cohort
    Create city, number of students, email list specific to the local one
=end



# Initial Solution

# class GlobalCohort
#   attr_accessor :students, :cohort_name, :add_student
#   attr_reader   :ph0_start_date, :immersive_start_date, :graduation_date, :cohort_email, :number_of_students, :phase
  
#   def initialize(
#     students, 
#     cohort_name, 
#     ph0_start_date, 
#     immersive_start_date, 
#     graduation_date, 
#     cohort_email, 
#     number_of_students
#     )
#     @students = students
#     @cohort_name = cohort_name
#     @ph0_start_date = ph0_start_date
#     @immersive_start_date = immersive_start_date
#     @graduation_date = graduation_date
#     @cohort_email = cohort_email
#     @number_of_students = number_of_students
#     @phase = 0
#   end
  
#   def add_student(name)
#     @students.push(name)
#   end
  
#   def remove_student(name)
#     @students.delete(name)
#   end
  
#   def currently_in_phase()
#     @phase
#   end
  
#   def graduated?()
#     today = Time.new
#     @graduation_date < today ? true : false
#   end
  
#   def new_local_cohort(
#     city,
#     local_email,
#     student_subset
#     )
#     LocalCohort.new(
#       city,
#       local_email,
#       student_subset, 
#       @students,
#       @cohort_name, 
#       @ph0_start_date, 
#       @immersive_start_date, 
#       @graduation_date, 
#       @cohort_email, 
#       @number_of_students
#       )
#   end
  
# end

# class LocalCohort < GlobalCohort
  
#   attr_reader :city, :local_email, :student_subset
  
#   def initialize(
#     city,
#     local_email,
#     student_subset,
#     students, 
#     cohort_name, 
#     ph0_start_date, 
#     immersive_start_date, 
#     graduation_date, 
#     cohort_email, 
#     number_of_students
#     )
#     super(
#       students, 
#       cohort_name, 
#       ph0_start_date, 
#       immersive_start_date, 
#       graduation_date, 
#       cohort_email, 
#       number_of_students
#       )
#     @city = city
#     @local_email = local_email
#     @student_subset = student_subset
#   end

# end

# Refactored Solution

class GlobalCohort
  attr_accessor :students, :cohort_name, :add_student
  attr_reader   :ph0_start_date, :immersive_start_date, :graduation_date, :cohort_email, :number_of_students, :phase
  
  def initialize(
    students, 
    cohort_name, 
    ph0_start_date, 
    immersive_start_date, 
    graduation_date, 
    cohort_email, 
    number_of_students
    )
    @students = students
    @cohort_name = cohort_name
    @ph0_start_date = ph0_start_date
    @immersive_start_date = immersive_start_date
    @graduation_date = graduation_date
    @cohort_email = cohort_email
    @number_of_students = number_of_students
    @phase = 0
  end
  
  def add_student(name)
    @students.push(name)
  end
  
  def remove_student(name)
    @students.delete(name)
  end
  
  def graduated?()
    # Removed the variable needed for the current time.
    @graduation_date < Time.new ? true : false
  end
  
  def new_local_cohort(
    city,
    local_email,
    student_subset
    )
    LocalCohort.new(
      city,
      local_email,
      student_subset, 
      @students,
      @cohort_name, 
      @ph0_start_date, 
      @immersive_start_date, 
      @graduation_date, 
      @cohort_email, 
      @number_of_students
      )
  end
  
end

class LocalCohort < GlobalCohort
  
  attr_reader :city, :local_email, :student_subset
  
  def initialize(
    city,
    local_email,
    student_subset,
    students, 
    cohort_name, 
    ph0_start_date, 
    immersive_start_date, 
    graduation_date, 
    cohort_email, 
    number_of_students
    )
    super(
      students, 
      cohort_name, 
      ph0_start_date, 
      immersive_start_date, 
      graduation_date, 
      cohort_email, 
      number_of_students
      )
    @city = city
    @local_email = local_email
    @student_subset = student_subset
  end

end


# Driver Code

# New Cohort Details
new_students = ["Mike","Colette","Tim","Kim"]
new_name = "Sea Lions"
new_ph0_start_date = Time.new(2016,12,26)
new_immersive_start_date = Time.new(2016,02,29)
new_graduation_date = Time.new(2016, 05, 1)
new_cohort_email = "school@dbc.com"
new_number_of_students = 4
new_city = "San Francisco"
new_local_number_of_students = 2
new_local_email = "local_school@dbc.com"
sea_lions = GlobalCohort.new(new_students,new_name,new_ph0_start_date,new_immersive_start_date,new_graduation_date,new_cohort_email,new_number_of_students)

# New Location Details
nyc = sea_lions.new_local_cohort("NYC","nyc@dbc.com",["Colette","Tim"])

p "<------ General Cohort Information ------>"
p nyc.cohort_name
p nyc.cohort_email
p nyc.students
p nyc.ph0_start_date
p nyc.immersive_start_date
p nyc.graduation_date
p nyc.number_of_students

p "<------ NYC Information ------>"
p nyc.city
p nyc.local_email
p nyc.student_subset


# Reflection
=begin
What concepts did you review in this challenge?
ANS: I learned inheritance in this challenge and how to use the instance variables of a superclass obect to populate the 
instance variables of a subclass object. I also learned about the Time class in Ruby and used it to
mark the current date and compare it against the graduation date for the cohort to check if they graduated yet.

What is still confusing to you about Ruby?
ANS: I still don't feel 100% comfortale working with classes and inheritance. I think much of it comes from not knowing
how to best architect the program so classes are used effectively. After introducing a couple of classes it always 
seems to get messy.

What are you going to study to get more prepared for Phase 1?
ANS: I'm planning to study the basics like syntax, error checking, and enumberables. I feel like having a strong 
understanding will make learning the new concepts onsite much easier. I don't want to spend much more time trying 
to learn new concepts when they will probably "click" better when I'm onsite anyways.
=end



