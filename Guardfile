guard 'spin' do
  watch(%r{^lib/.+/(.+)\.rb$}) { |m| "test/lib/#{m[1]}_test.rb" }
  watch(%r{^test/.+_test\.rb$})
  watch('test/test_helper.rb') { 'test' }

  # Rails example
  watch(%r{^app/models/(.+)/(.+)\.rb$}) { |m| "test/unit/#{m[1]}_#{m[2]}_test.rb" }
  watch(%r{^app/models/(.+)\.rb$})      { |m| "test/unit/#{m[1]}_test.rb" }
  watch(%r{^app/controllers/(.+)\.rb$}) { |m| "test/functional/#{m[1]}_test.rb" }
  watch(%r{^app/views/.+\.rb$})         { 'test/integration' }

  watch('app/controllers/application_controller.rb') { ['test/functional', 'test/integration'] }
end

guard :test do
  watch(%r{^lib/(.+)\.rb$})     { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/.+_test\.rb$})
  watch('test/test_helper.rb')  { "test" }

  # Rails example
  watch(%r{^app/models/(.+)\.rb$})                   { |m| "test/unit/#{m[1]}_test.rb" }
  watch(%r{^app/controllers/(.+)\.rb$})              { |m| "test/functional/#{m[1]}_test.rb" }
  watch(%r{^app/views/.+\.rb$})                      { "test/integration" }
  watch('app/controllers/application_controller.rb') { ["test/functional", "test/integration"] }
end
