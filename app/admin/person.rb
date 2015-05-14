# require 'activeadmin'

ActiveAdmin.register Person do
  permit_params :firstname, :middlename, :lastname, 
    :identities, :identities_attributes => [:id, :value, :identity_type, :person_id, :organization_id]
  
  # @person = Person.find(params[:id])
  # controller do
  #   def show
  #     params
  #   end
  # end
    

  show title: lambda {|pers| [pers.firstname, pers.middlename, pers.lastname].join(" ") } do
    ids = person.identities
    panel "Identifying Information" do
      table_for ids do
        column :organization do |this_id|
          this_id.organization.name
        end
        column :identity_type do |this_id|
          this_id.identity_type
        end
        column :value do |this_id|
          this_id.value
        end
      end
    end
  end

  form do |f|

    f.inputs 'Name' do
      f.input :firstname
      f.input :middlename
      f.input :lastname
    end

    # So this works....
    f.has_many :identities, allow_destroy: true do |instance|
      instance.input :organization
      instance.input :identity_type, 
        :as => :select, :collection => options_for_select([["SSN","SSN"],["License","License"],["Other","Other"]], person.identities.first.identity_type)

      instance.input :value
    end

    # f.panel 'Organizational Identities' do
    #   f.has_many :identities, :label => 'Intsldkfjskdfj' do |instance|
    #     instance.inputs 'Inputses My Precious'
    #   end
    # end

    para "Press cancel to return to the list without saving."
    f.actions
  end

end
