
module Test
  def result(arg1, arg2)
    average = (arg1 + arg2) / 2
    rpta = 'Estudiante aprobado' if average >= 4.0
    rpta = 'Estudiante reprobado' if average < 4.0
    rpta
  end
end

module Attendance
  def student_quantity
    "Cantidad de Alumnos = #{self.quantity}"
  end
end

class Student
  @@quantity = 0
  include Test
  extend Attendance
  attr_accessor :name, :grade1, :grade2

  def initialize(nombre, nota1 = 4.0, nota2 = 4.0)
    @name = nombre
    @grade1 = nota1
    @grade2 = nota2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end

end

students = []
10.times do |i|
  student_name = "Estudiante #{i + 1}"
  grade1 = rand(1.0..7.0).round(2)
  grade2 = rand(1.0..7.0).round(2)
  average = ((grade1 + grade2) / 2).round(2)
  new_student = Student.new(student_name, grade1, grade2)
  puts "#{student_name}, Nota 1: #{grade1}, Nota 2: #{grade2}, Promedio: #{average}, #{new_student.result(grade1, grade2)}"
  students << new_student
end

puts ''
puts Student.student_quantity
puts ''
