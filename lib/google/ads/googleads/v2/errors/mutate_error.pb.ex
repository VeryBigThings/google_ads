defmodule Google.Ads.Googleads.V2.Errors.MutateErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.MutateErrorEnum.MutateError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:RESOURCE_NOT_FOUND, 3)
  field(:ID_EXISTS_IN_MULTIPLE_MUTATES, 7)
  field(:INCONSISTENT_FIELD_VALUES, 8)
  field(:MUTATE_NOT_ALLOWED, 9)
  field(:RESOURCE_NOT_IN_GOOGLE_ADS, 10)
  field(:RESOURCE_ALREADY_EXISTS, 11)
end
