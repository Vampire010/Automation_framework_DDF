RSpec.configure do |c|
  c.include AllureRSpec::Adaptor
  c.output_dir = "/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Reporting"
  c.clean_dir = false
  c.logging_level = Logger::DEBUG
end
