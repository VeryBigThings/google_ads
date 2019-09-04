defmodule Google.Ads.Googleads.V2.Enums.UserListMembershipStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.UserListMembershipStatusEnum.UserListMembershipStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:OPEN, 2)
  field(:CLOSED, 3)
end
