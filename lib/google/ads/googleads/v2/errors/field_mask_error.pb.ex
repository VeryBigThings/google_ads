defmodule Google.Ads.Googleads.V2.Errors.FieldMaskErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.FieldMaskErrorEnum.FieldMaskError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:FIELD_MASK_MISSING, 5)
  field(:FIELD_MASK_NOT_ALLOWED, 4)
  field(:FIELD_NOT_FOUND, 2)
  field(:FIELD_HAS_SUBFIELDS, 3)
end
