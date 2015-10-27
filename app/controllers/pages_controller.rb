class PagesController < ApplicationController
  before_filter :set_search, only: [:inicio, :informacion_de_interes, :informes_de_gestion, :nuestra_entidad, :normatividad]

  def set_search
    @q = Category.search(params[:q])
    @categories = @q.result(distinct: true).page params[:page]
  end

  def inicio
  end

  def informacion_de_interes
  end

  def informes_de_gestion
    @fifth_category = Category.find(5)
  end

  def nuestra_entidad
    @fourth_category = Category.find(4)
  end

  def normatividad
    @first_category = Category.find(1)
    @second_category = Category.find(2)
    @third_category = Category.find(3)
  end
end
