#!/usr/bin/env ruby
require 'slop'
require_relative 'controllers/table_controller'

begin
  opts = Slop.parse do |o|
    o.int '--count', 'Number of primes that the table be built'
  end
rescue Slop::Error
  puts 'You need to specify the --count parameter to run this application'
  exit
end

if opts[:count]
  controller = MultiplicationPrimesTable::TableController.new
  controller.print_generated_table(opts[:count])
else
  puts opts
end
