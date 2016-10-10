SalonType = GraphQL::ObjectType.define do
  name "Salon"
  description "A Salon"
  field :id, types.ID
  field :name, types.String
  field :address, types.String
  field :phone, types.String
  field :lat, types.String
  field :lng, types.String

  field :operators, !types[!OperatorType]

end