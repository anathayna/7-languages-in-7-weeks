-- Contagem: DNA

function dna(cadeia, tabela)
  tabela.A = 1
end

nucleotideos = {
  A = 0,
  G = 0,
  T = 0,
  C = 0 }

dna("ACGTCCCCGAGC", nucleotideos)

print("A: "..nucleotideos.A)
print("G: "..nucleotideos.G)
print("T: "..nucleotideos.T)
print("C: "..nucleotideos.C)