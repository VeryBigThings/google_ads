defmodule Google.Ads.Googleads.V2.Enums.UserListLogicalRuleOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ALL, 2)
  field(:ANY, 3)
  field(:NONE, 4)
end
