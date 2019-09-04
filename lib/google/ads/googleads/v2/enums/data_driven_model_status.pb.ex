defmodule Google.Ads.Googleads.V2.Enums.DataDrivenModelStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:AVAILABLE, 2)
  field(:STALE, 3)
  field(:EXPIRED, 4)
  field(:NEVER_GENERATED, 5)
end
