class CalculadoraController < ApplicationController
  def index
  end
  def resultado
    @num1 = params[:numero1].to_f
    @num2 = params[:numero2].to_f
    @operacion = params[:operacion]
    case @operacion
    when "suma"
      @resultado = @num1 + @num2
      @operacion = "+"
    when "resta"
      @resultado = @num1 - @num2
      @operacion = "-"
    when "multiplica"
      @resultado = @num1 * @num2
      @operacion = "*"
    when "divide"
      @resultado = @num1 / @num2
      @operacion = "/"
    end  
end
end
