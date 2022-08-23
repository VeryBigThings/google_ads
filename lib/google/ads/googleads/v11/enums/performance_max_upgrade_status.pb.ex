defmodule Google.Ads.Googleads.V11.Enums.PerformanceMaxUpgradeStatusEnum.PerformanceMaxUpgradeStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :UPGRADE_ELIBIGLE
          | :UPGRADE_IN_PROGRESS
          | :UPGRADE_COMPLETE
          | :UPGRADE_FAILED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UPGRADE_ELIBIGLE, 2
  field :UPGRADE_IN_PROGRESS, 3
  field :UPGRADE_COMPLETE, 4
  field :UPGRADE_FAILED, 5
end
defmodule Google.Ads.Googleads.V11.Enums.PerformanceMaxUpgradeStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
