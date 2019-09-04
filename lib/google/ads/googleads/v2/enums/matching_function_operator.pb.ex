defmodule Google.Ads.Googleads.V2.Enums.MatchingFunctionOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:IN, 2)
  field(:IDENTITY, 3)
  field(:EQUALS, 4)
  field(:AND, 5)
  field(:CONTAINS_ANY, 6)
end
