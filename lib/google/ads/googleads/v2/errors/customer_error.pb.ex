defmodule Google.Ads.Googleads.V2.Errors.CustomerErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.CustomerErrorEnum.CustomerError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:STATUS_CHANGE_DISALLOWED, 2)
  field(:ACCOUNT_NOT_SET_UP, 3)
end
