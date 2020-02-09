class Place
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Geospatial

  field :title, type: String
  field :slug, type: String
  field :description, type: String
  field :location, type: Point
end
