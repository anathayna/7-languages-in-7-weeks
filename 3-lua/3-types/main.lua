-- Contagem: DNA

function dna(cadeia, tabela)
  for i=1 , #cadeia do
    -- local c = cadeia:sub(i,i)
    local x = string.sub(cadeia,i,i)
    tabela[x] = tabela[x] + 1
  end
end

nucleotideos = {
  A = 0,
  G = 0,
  T = 0,
  C = 0 
}

dna("ACGTCCCCGAGC", nucleotideos)

print("A: "..nucleotideos.A)
print("G: "..nucleotideos.G)
print("T: "..nucleotideos.T)
print("C: "..nucleotideos.C)
