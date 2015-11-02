ActiveAdmin.register CourseOffering do
  menu parent: 'Course Admin'

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :start_date, :end_date, :start_time, :end_time, :meeting_days, 
  :note, :course_templates_id,
  :organization_id, :created_at, :updated_at,
  :course_formats_attributes => [:id, :name, :description, :_destroy]
  # :identities, :identities_attributes => [:id, :value, :identity_type, :person_id, :organization_id, :_destroy]

form do |f|

   columns do

     column do

       f.inputs 'Name' do
         f.input :name
         f.input :note
       end

       panel "Course Attributes" do
         # f.has_many :course_formats, heading: nil, allow_destroy:true do |instance|
         #   instance.input :name
         #   instance.input :description

         # end

         f.input :course_format #, as: :select
         f.input :course_template #, as: :select
       #   # f.has_many :course_templates 
       end #panel course attributes

       # panel "Course Format" do
       #    f.has_many :course_formats, heading: nil, allow_destroy:true do |instance|
       #      instance.input :name
       #      instance.input :description
       #    end #phones
       #  end #panel phones

     end #column

     column do
       
       f.inputs 'Meeting Times' do
         f.input :start_date
         f.input :end_date
         f.input :start_time
         f.input :end_time
         f.input :meeting_days
       end

       # panel 'Government / Organizational IDs' do
       #   f.has_many :identities, heading: nil, allow_destroy: true do |instance|
       #     instance.input :organization
       #     instance.input :identity_type, 
       #       :as => :select, :collection => options_for_select([["Provider ID","Provider ID"],
       #         ["License","License"],["Other","Other"]], instance.object.andand.identity_type)
       #     instance.input :value
       #   end #identities
       # end #panel

     end #column
     

   end #columns

   para "Press cancel to return to the list without saving."
   f.actions
 end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
