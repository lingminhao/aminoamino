test_that("translation() converts RNA to Amino acid", {
  expect_equal(translation("AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"), "MAMAPRTEINSTRING")
})
