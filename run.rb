require 'rubygems'
require 'bundler/setup'
require 'dotenv/load'
require 'aws-sdk-athena'
require 'pry'
require 'terminal-table'

Aws.config.update({
  region: ENV.fetch('MY_AWS_REGION'),
  credentials: Aws::Credentials.new(
    ENV.fetch('MY_AWS_ACCESS_KEY_ID'),
    ENV.fetch('MY_AWS_SECRET_ACCESS_KEY')
  )
})

# Your code should be here
