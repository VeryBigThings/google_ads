defmodule Google.Ads.Googleads.V2.Enums.TrackingCodePageFormatEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:HTML, 2)
  field(:AMP, 3)
end
