defmodule Google.Ads.Googleads.V11.Enums.UserListFlexibleRuleOperatorEnum.UserListFlexibleRuleOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AND | :OR

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AND, 2
  field :OR, 3
end
defmodule Google.Ads.Googleads.V11.Enums.UserListFlexibleRuleOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
