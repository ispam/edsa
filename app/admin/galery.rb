ActiveAdmin.register Galery do

	permit_params :file
	form html: { multipart: true } do |f|
	    f.inputs "Documentos" do

	    	f.input :file, as: :file

	    end

		    f.actions
	end

	menu label: "Galeria"

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
