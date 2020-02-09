ActiveAdmin.register Place do
  permit_params :title, :slug, :description, :location

  index do
    selectable_column
    id_column
    column :title
    column :slug
    column :description
    column :location
    column :created_at
    column :updated_at
    actions
  end

  # filter :title
  # filter :description

  form do |f|
    f.inputs do
      f.input :title, :input_html => { autofocus: true }
      f.input :slug
      f.input :description, as: :text, :input_html => { style: 'height: 100px;' }
      f.input :location
    end
    f.actions
  end

end
