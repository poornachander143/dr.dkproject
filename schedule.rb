require 'rufus-scheduler'
require 'open3'

# Create a new scheduler instance
scheduler = Rufus::Scheduler.new

# Schedule the Cucumber task to run every 5 minutes
scheduler.every '3m' do
  puts "Running Cucumber tests at #{Time.now}"

  # Run the Cucumber command
  stdout, stderr, status = Open3.capture3("bundle exec cucumber features/google.feature")

  # Output the results to the console
  puts stdout
  puts stderr unless status.success?
end

# Keep the scheduler running
scheduler.join