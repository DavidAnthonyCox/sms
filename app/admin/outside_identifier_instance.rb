ActiveAdmin.register OutsideIdentifierInstance do
  permit_params :value, :outside_identifier_id

  form do |f|
    inputs 'Details' do
      input :value
      input :outside_identifier_id
    end
    para "Press cancel to return to the list without saving."
    actions
  end


end
