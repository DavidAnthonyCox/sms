# require 'activeadmin'

ActiveAdmin.register Person do
  permit_params :firstname, :middlename, :lastname, 
    :identities, :identities_attributes => [:id, :value, :person_id, :organization_id]
  
  # @person = Person.find(params[:id])
  # controller do
  #   def show
  #     params
  #   end
  # end
    

  show title: lambda {|pers| [pers.firstname, pers.middlename, pers.lastname].join(" ") } do
    panel "Identifying Information" do
      table_for person.identities do
        column :organization do
          person.identities
        end
        column :value do |v|
          v.value
        end
        column :identities
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
    # f.has_many :identities do |instance|
    #   instance.inputs
    # end

    f.panel 'Organizational Identities' do
      f.has_many :identities, :label => 'Intsldkfjskdfj' do |instance|
        instance.inputs 'Inputses My Precious'
      end
    end

    para "Press cancel to return to the list without saving."
    f.actions
  end



end
