defmodule Google.Ads.Googleads.V2.Errors.PolicyFindingErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.PolicyFindingErrorEnum.PolicyFindingError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:POLICY_FINDING, 2)
  field(:POLICY_TOPIC_NOT_FOUND, 3)
end
