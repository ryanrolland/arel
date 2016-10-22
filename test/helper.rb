$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.dirname(__FILE__)+'/../lib')

require 'rubygems'
require 'minitest/autorun'
require 'fileutils'
require 'arel'

require 'support/fake_record'
Arel::Table.engine = Arel::Sql::Engine.new(FakeRecord::Base.new)

class Object
  def must_be_like other
    self.gsub(/\s+/, ' ').strip.must_equal other.gsub(/\s+/, ' ').strip
  end
end
