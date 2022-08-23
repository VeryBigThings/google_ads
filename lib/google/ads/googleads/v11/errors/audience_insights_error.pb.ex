defmodule Google.Ads.Googleads.V11.Errors.AudienceInsightsErrorEnum.AudienceInsightsError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DIMENSION_INCOMPATIBLE_WITH_TOPIC_AUDIENCE_COMBINATIONS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DIMENSION_INCOMPATIBLE_WITH_TOPIC_AUDIENCE_COMBINATIONS, 2
end
defmodule Google.Ads.Googleads.V11.Errors.AudienceInsightsErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
