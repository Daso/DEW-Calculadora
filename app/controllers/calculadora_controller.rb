class CalculadoraController < ApplicationController
  def index
  end
  
  def resultado
  
    @numero1 = params[:numero1].to_f
    @numero2 = params[:numero2].to_f
    @operacion = params[:operacion]
    @numero1.send(operador, @numero2)
  end
  
  def operador
    case operacion
    when "suma"
      "+"
    when "resta"
      "-"
    when "multiplica"
      "*"
    when "divide"
      "/"
    end  
  end
  
end
