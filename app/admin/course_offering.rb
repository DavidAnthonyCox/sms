ActiveAdmin.register CourseOffering do
  menu parent: 'Course Admin'

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :start_date, :end_date, :start_time, :end_time, :meeting_days, 
  :note, :course_format_id, :course_template_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
