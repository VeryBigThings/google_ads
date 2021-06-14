defmodule Google.Ads.Googleads.V8.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ACTIVATION_NEEDED | :ENABLED | :PAUSED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ACTIVATION_NEEDED, 2

  field :ENABLED, 3

  field :PAUSED, 4
end

defmodule Google.Ads.Googleads.V8.Enums.ConversionCustomVariableStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
