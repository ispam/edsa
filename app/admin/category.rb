ActiveAdmin.register Category do

	permit_params :title, :file, :name, category_ids: []

	form do |f|
	f.inputs "Nombre de Categoría" do
		f.input :name
	end

	    f.actions
	end

	menu label: "Categorias"

end
