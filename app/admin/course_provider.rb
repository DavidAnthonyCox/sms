ActiveAdmin.register CourseProvider do
  menu parent: 'Course Configuration'

  permit_params organizations_attributes: [:id, :name, :description]

  # TODO: Rethink this model. What we really want are organizations, which can be linked to
  # courses so that they are listed as the "course provider." Those orgs are like any other.
  # A licensing entity is just like a corporate entity. They all have addresses, and many
  # can have "things" they issue like certificates or ID cards or currency-like counters.
  # form do |f|
  #   f.input :organization_id

  #   table_for course_provider.organizations do
  #         panel "Organizations" do
  #           f.has_many :organization, heading: nil, allow_destroy:false do |instance|
  #             instance.input :name
  #             instance.input :description
  #           end
  #         end #panel
  #   end
  #   para "Press cancel to return to the list without saving."
  #   f.actions
  # end

end
