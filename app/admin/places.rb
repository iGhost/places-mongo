ActiveAdmin.register Place do
  permit_params :title, :description

  index do
    selectable_column
    id_column
    column :title
    column :description
    actions
  end

  # filter :title
  # filter :description

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
    end
    f.actions
  end

end