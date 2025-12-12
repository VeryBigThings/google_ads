defmodule Google.Ads.Googleads.V8.Errors.DatabaseErrorEnum.DatabaseError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CONCURRENT_MODIFICATION, 2

  field :DATA_CONSTRAINT_VIOLATION, 3

  field :REQUEST_TOO_LARGE, 4
end

defmodule Google.Ads.Googleads.V8.Errors.DatabaseErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2

end
