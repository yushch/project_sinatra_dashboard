require 'rubygems'
#require 'sinatra'
require 'httparty'
#require 'awesome_print'
require 'csv'
require 'json'

module Glassdoorhelper
   #PID = "41791"#ENV['GDPID']
   #API_KEY = "krPn8AAytmm"#ENV['GDAPI']
   class Gdhelper
      include HTTParty
      attr_reader :gdresult
      PID = "41791"#ENV['GDPID']
      API_KEY = "krPn8AAytmm"#ENV['GDAPI']

      def initialize(employer = "ibm")
        #employer.gsub! ' ', '-'
        @place = self.class.get("http://www.telize.com/geoip")
        @gdresult = self.class.get("http://api.glassdoor.com/api/api.htm?t.p=#{PID}&t.k=#{API_KEY}&userip=#{@place["ip"]}&useragent=&format=json&v=1&action=employers&q=#{employer}&ps=1")
      end

=begin
      def print_place
         pp @gdresult
      end
=end

   end

end
#g = Gdhelper.new
#g.print_place

