defmodule Google.Ads.Googleads.V2.Errors.AuthorizationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.AuthorizationErrorEnum.AuthorizationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:USER_PERMISSION_DENIED, 2)
  field(:DEVELOPER_TOKEN_NOT_WHITELISTED, 3)
  field(:DEVELOPER_TOKEN_PROHIBITED, 4)
  field(:PROJECT_DISABLED, 5)
  field(:AUTHORIZATION_ERROR, 6)
  field(:ACTION_NOT_PERMITTED, 7)
  field(:INCOMPLETE_SIGNUP, 8)
  field(:CUSTOMER_NOT_ENABLED, 24)
  field(:MISSING_TOS, 9)
  field(:DEVELOPER_TOKEN_NOT_APPROVED, 10)
end
