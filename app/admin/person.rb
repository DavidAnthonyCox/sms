# require 'activeadmin'

ActiveAdmin.register Person do
  permit_params :firstname, :middlename, :lastname, 
    :ssn, :outside_identifier_instances_attributes => [:id, :value, :person_id, :outside_identifier_id]
  
  form do |f|

    f.inputs 'Name' do
      f.input :firstname
      f.input :middlename
      f.input :lastname
    end

    f.inputs 'Identifiers' do
      f.input :ssn
      # has_many :outside_identifier_instances
    end

    # So this works....
    # f.has_many :outside_identifier_instances do |instance|
    #   instance.inputs
    # end

    f.panel 'Test' do
      f.has_many :outside_identifier_instances, :label => 'Intsldkfjskdfj' do |instance|
        instance.inputs 'Inputses My Precious'
      end
    end

    para "Press cancel to return to the list without saving."
    f.actions
  end



end
