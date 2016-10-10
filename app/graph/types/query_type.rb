QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for salon schema"

  field :operator do
    type OperatorType
    description "Find a Operator by id"
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Operator.find(args[:id])
    }
  end

  field :salons do
    type !types[SalonType]
    argument :id, types.ID, "The ID of salon"
    description 'Salon list'
    resolve -> (obj, args, ctx) do
      if args[:id]
        Salon.find(args[:id])
      else
        Salon.all
      end
    end
  end

end