# require 'activeadmin'

ActiveAdmin.register Person do
  permit_params :firstname, :middlename, :lastname, :ssn, :outside_identifier_instances
  
  form do |f|

    inputs 'Name' do
      input :firstname
      input :middlename
      input :lastname
    end

    inputs 'Identifiers' do
      input :ssn
      input :outside_identifier_instances
    end

    para "Press cancel to return to the list without saving."
    actions
  end



end
