defmodule Google.Ads.Googleads.V2.Errors.StringFormatErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.StringFormatErrorEnum.StringFormatError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ILLEGAL_CHARS, 2)
  field(:INVALID_FORMAT, 3)
end
