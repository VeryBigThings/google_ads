defmodule Google.Ads.Googleads.V2.Errors.MediaUploadErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.MediaUploadErrorEnum.MediaUploadError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:FILE_TOO_BIG, 2)
  field(:UNPARSEABLE_IMAGE, 3)
  field(:ANIMATED_IMAGE_NOT_ALLOWED, 4)
  field(:FORMAT_NOT_ALLOWED, 5)
end
