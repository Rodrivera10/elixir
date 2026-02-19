defmodule Listas do
  def run do
    #Titulo de mi programa
    IO.puts "=== Mi programa con Listas ==="
    #Defini la lista de carros
    carros = ["Toyota", "Mercedes benz", "Ferrari", "Suzuki", "Pagani"]
    #Mostramos la lista tal cual de elixir al momento de imprimirla
    IO.inspect carros

    #Recorremos la lista y mostramos cada carro en su propia linea
    IO.puts "\nLista de carros:"
    Enum.each(carros, fn carro -> IO.puts " - #{carro}" end)

    #Estas son operaciones basicas de la lista
    IO.puts "\nOperaciones con la lista:"
    IO.puts "Total de carros: #{length(carros)}"  #length() cuenta los elementos de la lista
    IO.puts "Primer carro: #{hd(carros)}"  #hd() = head = primer elemento de la lista
    IO.puts "Último acceso con Enum.at: #{Enum.at(carros, -1)}"

     #Agregar un carro nuevo a la lista (crea una nueva lista)
  carros_actualizados = carros ++ ["BMW"]
  IO.puts "\nLista actualizada con un nuevo carro:"
  Enum.each(carros_actualizados, fn carro -> IO.puts " - #{carro}" end)

  #Filtro que agregue para carros que contengan la letra "a"
  carros_con_a = Enum.filter(carros, fn carro -> String.contains?(String.downcase(carro), "a") end)
  IO.puts "\nCarros que contienen la letra 'a':"
  Enum.each(carros_con_a, fn carro -> IO.puts " - #{carro}" end)
  end

end

Listas.run()
