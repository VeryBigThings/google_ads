defmodule Google.Ads.Googleads.V2.Enums.UserListCombinedRuleOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:AND, 2)
  field(:AND_NOT, 3)
end
