defmodule Google.Ads.Googleads.V2.Enums.OperatingSystemVersionOperatorTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:EQUALS_TO, 2)
  field(:GREATER_THAN_EQUALS_TO, 4)
end
