defmodule Google.Ads.Googleads.V8Availabilities.Enums.UserListMembershipStatusEnum.UserListMembershipStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :OPEN | :CLOSED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :OPEN, 2

  field :CLOSED, 3
end

defmodule Google.Ads.Googleads.V8Availabilities.Enums.UserListMembershipStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
