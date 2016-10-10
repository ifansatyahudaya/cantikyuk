OperatorType = GraphQL::ObjectType.define do
  name "Operator"
  description "Operator list"
  field :id, types.ID
  field :name, types.String
  field :salon, !SalonType
end