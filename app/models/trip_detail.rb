class TripDetail
  include Mongoid::Document
  field :trip_id, type: String
  field :index, type: Integer
  field :name, type: String
  field :description, type: String
  field :duration, type: Integer
end
