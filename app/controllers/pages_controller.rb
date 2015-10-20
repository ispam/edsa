class PagesController < ApplicationController
  def inicio
  end

  def informacion_de_interes
  end

  def informes_de_gestion
  end

  def nuestra_entidad
    @categories = Category.all 
  end

  def plan_de_accion
  end

  def normatividad
    @categories = Category.all
  end
end
