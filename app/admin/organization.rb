ActiveAdmin.register Organization do
  menu parent: 'People & Organizations', priority: 1

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :description,
    identities_attributes: [:id, :organization_id, :value, :_destroy]
  # menu :label => "Identifying"

  form do |f|

    columns do

      column do

        f.inputs 'Organization Details' do
          f.input :name
          f.input :description
        end

      end #column

      column do

        panel "Government / Organizational IDs" do
          f.has_many :identities, heading: nil, allow_destroy: true do |instance|
            instance.input :organization
            instance.input :identity_type, 
              :as => :select, :collection => options_for_select([["SSN","SSN"],
                ["License","License"],["Provider ID", "Provider ID"],["Other","Other"]], instance.object.andand.identity_type)
            instance.input :value
          end #identities
        end #panel

      end #column
      

    end #columns

    para "Press cancel to return to the list without saving."
    f.actions
  end

end #Organization
