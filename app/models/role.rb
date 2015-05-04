class Role < ActiveRecord::Base
  has_many role_list_entry
  default_scope { order('name') }
end

=begin
  Course {has one student list} and {has one teacher list} and {has one assistant list}
  Student List has many students.
  Teacher list has many teachers.
  Assistant list has many assistants.
  Person {belongs to student list} and {belongs to teacher list} and {belongs to ...}
=end