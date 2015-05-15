# require 'activeadmin'
require 'andand'
require "#{Rails.root}/lib/formatting.rb"

ActiveAdmin.register Person do
  permit_params :firstname, :middlename, :lastname, 
    :identities, :identities_attributes => [:id, :value, :identity_type, :person_id, :organization_id, :_destroy],
    :phones_attributes => [:id, :person_id, :contact_category_id, :area_code, :number, :extension, :note, :_destroy],
    :addresses_attributes => [:id, :person_id, :contact_category_id, :state_id, :street_number, :street_name, :unit, :city, :zip, :_destroy]
  
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

          table_for person.phones do

            column do |this_phone|
              this_phone.contact_category.name
            end #contact_cat

            column do |this_phone|
              Formatting.phonify this_phone.area_code, this_phone.number
              # "(#{this_phone.area_code.to_s}) #{this_phone.number.to_s.insert(3, "-")}"
            end #number

            column do |this_phone|
              "Extension: " + this_phone.extension unless this_phone.extension.empty?
            end #extension
          end
        end
        panel "Addresses" do
          #:contact_category_id, :state_id, :street_number, :street_name, :unit, :city, :zip
          # table_for person.addresses do
          #   # column do |this_address|
          #   #   row this_address.street_name
          #   #   row this_address.city
          #   # end
            table_for person.addresses do

              column do |this_addr|
                this_addr.contact_category.name
              end

              column do |this_addr| 
                [this_addr.street_number, this_addr.street_name, this_addr.unit].join(" ")
                "will this be the only thing I see?"
                "no, this probably will though"
                raw("
                  #{this_addr.street_number} #{this_addr.street_name}#{(", # " + this_addr.unit) unless this_addr.unit.empty? } <br/>
                  #{this_addr.city}, #{this_addr.state.name} #{this_addr.zip}
                  ")
              end
              # row :a, heading: nil do |this_addr| "hi" end #[this_addr.city, this_addr.state.name].join(" ") end#, this_addr.zip.to_s].join(" ") end
              # row(' ') { true }
              # row(' ') { :sdfkjsdlfj }
            end
          # end #table

        end #panel addresses
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

    columns do

      column do

        f.inputs 'Name' do
          f.input :firstname
          f.input :middlename
          f.input :lastname
        end

        panel "Phones" do
          f.has_many :phones, heading: nil, allow_destroy:true do |instance|
            instance.input :contact_category
            instance.input :area_code
            instance.input :number
            instance.input :extension
            instance.input :note
          end #phones
        end #panel phones

      end #column

      column do

        panel "Addresses" do
          f.has_many :addresses, heading: nil, allow_destroy: true do |instance|
            instance.input :contact_category
            instance.input :street_number
            instance.input :street_name
            instance.input :unit
            instance.input :city
            instance.input :state
            instance.input :zip
          end #has_many addresses
        end #panel

        panel "Government / Organizational IDs" do
          f.has_many :identities, heading: nil, allow_destroy: true do |instance|
            instance.input :organization
            instance.input :identity_type, 
              :as => :select, :collection => options_for_select([["SSN","SSN"],
                ["License","License"],["Other","Other"]], instance.object.andand.identity_type)
            instance.input :value
          end #identities
        end #panel

      end #column
      

    end #columns

    para "Press cancel to return to the list without saving."
    f.actions
  end

end #AciveAdmin.register
