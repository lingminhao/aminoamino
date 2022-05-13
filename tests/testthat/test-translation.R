test_that("translation() converts RNA to Amino acid", {
  expect_equal(translation("AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"), "MAMAPRTEINSTRING")
})

test_that("translation() terminates immediately for stop codon", {
  expect_equal(translation("AUGUGAAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"), "M")
})
