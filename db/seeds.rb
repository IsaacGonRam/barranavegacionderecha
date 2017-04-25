require 'csv'

diccionario = CSV.open("words.csv")
diccionario.each do |palabra|
  canonica = palabra[0].split("").sort.join
  Word.create(word: palabra, canonical: canonica)
end

# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 