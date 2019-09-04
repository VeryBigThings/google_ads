defmodule Google.Ads.Googleads.V2.Enums.UserListTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.UserListTypeEnum.UserListType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:REMARKETING, 2)
  field(:LOGICAL, 3)
  field(:EXTERNAL_REMARKETING, 4)
  field(:RULE_BASED, 5)
  field(:SIMILAR, 6)
  field(:CRM_BASED, 7)
end
