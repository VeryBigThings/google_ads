defmodule Google.Ads.Googleads.V2.Errors.AdParameterErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.AdParameterErrorEnum.AdParameterError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:AD_GROUP_CRITERION_MUST_BE_KEYWORD, 2)
  field(:INVALID_INSERTION_TEXT_FORMAT, 3)
end
