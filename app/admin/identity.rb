ActiveAdmin.register Identity do
  menu false
  permit_params :value, :organization_id,
    tags_attributes: [:_destroy]

  form do |f|
    inputs 'Details' do
      input :value
      input :organization_id
    end
    para "Press cancel to return to the list without saving."
    actions
  end


end
