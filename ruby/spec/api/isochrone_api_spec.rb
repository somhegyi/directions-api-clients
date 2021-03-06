=begin
#GraphHopper Directions API

#You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for GraphHopperClient::IsochroneApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IsochroneApi' do
  before do
    # run before each test
    @instance = GraphHopperClient::IsochroneApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IsochroneApi' do
    it 'should create an instance of IsochroneApi' do
      expect(@instance).to be_instance_of(GraphHopperClient::IsochroneApi)
    end
  end

  # unit tests for isochrone_get
  # Isochrone Request
  # The GraphHopper Isochrone API allows calculating an isochrone of a locations means to calculate &#39;a line connecting points at which a vehicle arrives at the same time,&#39; see [Wikipedia](http://en.wikipedia.org/wiki/Isochrone_map). It is also called **reachability** or **walkability**. 
  # @param point Specify the start coordinate
  # @param key Get your key at graphhopper.com
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :time_limit Specify which time the vehicle should travel. In seconds.
  # @option opts [Integer] :distance_limit Specify which distance the vehicle should travel. In meter.
  # @option opts [String] :vehicle Possible vehicles are bike, car, foot and [more](https://graphhopper.com/api/1/docs/supported-vehicle-profiles/)
  # @option opts [Integer] :buckets For how many sub intervals an additional polygon should be calculated.
  # @option opts [BOOLEAN] :reverse_flow If &#x60;false&#x60; the flow goes from point to the polygon, if &#x60;true&#x60; the flow goes from the polygon \&quot;inside\&quot; to the point. Example usage for &#x60;false&#x60;&amp;#58; *How many potential customer can be reached within 30min travel time from your store* vs. &#x60;true&#x60;&amp;#58; *How many customers can reach your store within 30min travel time.*
  # @option opts [String] :weighting Can be fastest or shortest
  # @return [IsochroneResponse]
  describe 'isochrone_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
