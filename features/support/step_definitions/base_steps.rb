Then('user should see {string}') do |test|
  expect(page).to have_text(test)
end

Then('this page should pass minimum performance thresholds:') do |table|
  log lh_result = Lighthouse::Ruby::Builder.new(current_url).execute
  expect(lh_result[:performance]).to be >= table.rows_hash['performance'].to_i
  expect(lh_result[:accessibility]).to be >= table.rows_hash['accessihbility'].to_i
  expect(lh_result[:best_practices]).to be >= table.rows_hash['best_practices'].to_i
  expect(lh_result[:seo]).to be >= table.rows_hash['seo'].to_i
end

Then('user take a snapshot of {string}') do |name|
  sleep(3) # let page to render before taking snapshot
  page.percy_snapshot(page, name: name) if ENV['CI']
end
