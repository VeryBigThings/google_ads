defmodule Google.Ads.Googleads.V2.Errors.DatabaseErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.DatabaseErrorEnum.DatabaseError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CONCURRENT_MODIFICATION, 2)
  field(:DATA_CONSTRAINT_VIOLATION, 3)
end
