defmodule Google.Ads.Googleads.V2.Enums.TargetImpressionShareLocationEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ANYWHERE_ON_PAGE, 2)
  field(:TOP_OF_PAGE, 3)
  field(:ABSOLUTE_TOP_OF_PAGE, 4)
end
