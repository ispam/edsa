ActiveAdmin.register Category do

	permit_params :title, :file, :name, category_ids: []

	form do |f|
	f.inputs "Nombre de Categoría" do
		f.input :name
	end

	    f.actions
	end

	 controller do
      def create
        super do |format|
          redirect_to collection_url and return if resource.valid?
        end
      end

      def update
        super do |format|
          redirect_to collection_url and return if resource.valid?
        end
      end
    end

	menu label: "Categorias"

end
