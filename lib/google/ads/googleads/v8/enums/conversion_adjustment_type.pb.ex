defmodule Google.Ads.Googleads.V8.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :RETRACTION | :RESTATEMENT

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :RETRACTION, 2

  field :RESTATEMENT, 3
end

defmodule Google.Ads.Googleads.V8.Enums.ConversionAdjustmentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
