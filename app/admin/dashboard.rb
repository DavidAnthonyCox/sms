ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent People" do
          ul do
            Person.first(10).map do |person|
              li link_to([person.firstname, person.lastname].join(' ') , admin_person_path(person))
          end
        end
      end
    end

      column do
        panel "Info" do
          para "Welcome to the student management system. Look at the top menu for things you can add or edit."
        end
      end
    end
  end # content
end
