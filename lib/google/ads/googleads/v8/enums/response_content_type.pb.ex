defmodule Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :RESOURCE_NAME_ONLY | :MUTABLE_RESOURCE

  field :UNSPECIFIED, 0

  field :RESOURCE_NAME_ONLY, 1

  field :MUTABLE_RESOURCE, 2
end

defmodule Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
