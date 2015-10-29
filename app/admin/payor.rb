ActiveAdmin.register Payor do
  menu parent: 'People & Organizations', priority: 9

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :person_id, :organization_id

show title: lambda {|p| [p.person.firstname, p.person.middlename, p.person.lastname, "(Payor)"].join(" ") } do
  columns do
    column do
      panel "test" do 
        table_for payor.organization do 
          column do |org|
            org.name
          end
        end
      end   
    end
    column do
      panel "some other test" do
        render 'partial'
      end
    end
  end
end


end
