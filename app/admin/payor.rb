ActiveAdmin.register Payor do
  menu parent: 'People & Organizations', priority: 9

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :person_id, :organization_id

show title: lambda {|p| [p.person.firstname, p.person.middlename, p.person.lastname, "(Payor)"].join(" ") } do
   render 'partial'
end


end
