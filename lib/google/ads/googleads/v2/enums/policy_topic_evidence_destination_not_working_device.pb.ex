defmodule Google.Ads.Googleads.V2.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:DESKTOP, 2)
  field(:ANDROID, 3)
  field(:IOS, 4)
end
