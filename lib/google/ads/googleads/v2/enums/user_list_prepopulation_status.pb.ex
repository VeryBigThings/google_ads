defmodule Google.Ads.Googleads.V2.Enums.UserListPrepopulationStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:REQUESTED, 2)
  field(:FINISHED, 3)
  field(:FAILED, 4)
end
