class PagesController < ApplicationController
  before_filter :set_search, only: [:inicio, :informacion_de_interes, :informes_de_gestion, :nuestra_entidad, :normatividad]

  def set_search
    @q = Category.search(params[:q])
    @categories = @q.result(distinct: true).page params[:page]
  end

  def inicio
  end

  def informacion_de_interes
    @sixth_category = Category.find(6)
    @seventh_category = Category.find(7)
    @eigth_category = Category.find(8)
  end

  def informes_de_gestion
    @fifth_category = Category.find(5)
    @ninth_category = Category.find(9)
    @tenth_category = Category.find(10)
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
