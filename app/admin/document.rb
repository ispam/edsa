ActiveAdmin.register Document do
	permit_params :title, :file, category_ids: []

	form html: { multipart: true } do |f|
    f.inputs "Documentos" do
    	f.input :title
    	f.input :file, as: :file
    	f.input :categories, :as => :check_boxes, :collection => Category.pluck(:name, :id)
    end

	    f.actions
	end

	index do 
	  column "Creada", :created_at
	  column "Actualizada", :updated_at
	  column "Nombre del Archivo", :title
	  column "Tipo de Imagen", :file_content_type
	  column "Tamaño", :file_size do |size|
	  	number_to_human_size(size.file_size, precision: 2, separator: ',')
    end

    
	
	actions name: "Acciones"
    
	end

	menu label: "Documentos"

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

end
