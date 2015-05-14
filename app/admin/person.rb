# require 'activeadmin'
require 'andand'

ActiveAdmin.register Person do
  permit_params :firstname, :middlename, :lastname, 
    :identities, :identities_attributes => [:id, :value, :identity_type, :person_id, :organization_id, :_destroy],
    :phones_attributes => [:id, :person_id, :contact_category, :area_code, :number, :extension, :note, :_destroy]
  
  # @person = Person.find(params[:id])
  # controller do
  #   def show
  #     params
  #   end
  # end
    

  show title: lambda {|pers| [pers.firstname, pers.middlename, pers.lastname].join(" ") } do
    
    columns do

      column do
        panel "Phones" do
          # table_for
        end
        panel "Addresses" do
          "Adresses\nAddresses"
        end
      end #column


      column do
        panel "Government / Organizational IDs" do
          table_for person.identities do
            column :organization do |this_id|
              this_id.organization.name
            end #organization
            column :type do |this_id|
              this_id.identity_type
            end #type
            column :value do |this_id|
              this_id.value
            end #value
          end #table_for
        end #panel
      end #column

    end #columnsssssss

  end #show

  form do |f|

    f.inputs 'Name' do
      f.input :firstname
      f.input :middlename
      f.input :lastname
    end

    f.has_many :identities, heading: "Government / Organizational IDs", allow_destroy: true do |instance|
      instance.input :organization
      instance.input :identity_type, 
        :as => :select, :collection => options_for_select([["SSN","SSN"],
          ["License","License"],["Other","Other"]], instance.object.andand.identity_type)

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

end #AciveAdmin.register
