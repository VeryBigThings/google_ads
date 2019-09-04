defmodule Google.Ads.Googleads.V2.Errors.YoutubeVideoRegistrationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.YoutubeVideoRegistrationErrorEnum.YoutubeVideoRegistrationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:VIDEO_NOT_FOUND, 2)
  field(:VIDEO_NOT_ACCESSIBLE, 3)
end
