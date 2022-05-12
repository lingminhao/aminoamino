test_that("transcription() converts DNA to RNA", {
  expect_equal(transcription("GATGGAACTTGACTACGTAAATT"), "GAUGGAACUUGACUACGUAAAUU")
})
