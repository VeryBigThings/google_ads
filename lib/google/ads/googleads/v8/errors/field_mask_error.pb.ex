defmodule Google.Ads.Googleads.V8.Errors.FieldMaskErrorEnum.FieldMaskError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :FIELD_MASK_MISSING, 5

  field :FIELD_MASK_NOT_ALLOWED, 4

  field :FIELD_NOT_FOUND, 2

  field :FIELD_HAS_SUBFIELDS, 3
end

defmodule Google.Ads.Googleads.V8.Errors.FieldMaskErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2

end
