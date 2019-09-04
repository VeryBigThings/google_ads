defmodule Google.Ads.Googleads.V2.Errors.FieldErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.FieldErrorEnum.FieldError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:REQUIRED, 2)
  field(:IMMUTABLE_FIELD, 3)
  field(:INVALID_VALUE, 4)
  field(:VALUE_MUST_BE_UNSET, 5)
  field(:REQUIRED_NONEMPTY_LIST, 6)
  field(:FIELD_CANNOT_BE_CLEARED, 7)
  field(:BLACKLISTED_VALUE, 8)
end
