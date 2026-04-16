test_that("filter_by_type fonctionne", {
  result <- filter_by_type(paris_housing_prices_dataset, "Apartment")
  expect_true(all(result$Property_Type == "Apartment"))
  expect_s3_class(result, "data.frame")
})

test_that("mean_price_by_group fonctionne", {
  result <- mean_price_by_group(paris_housing_prices_dataset, "Arrondissement")
  expect_s3_class(result, "data.frame")
  expect_equal(ncol(result), 2)
})

test_that("plot_mean_price retourne un ggplot", {
  result <- plot_mean_price(paris_housing_prices_dataset, "Property_Type")
  expect_s3_class(result, "ggplot")
})
