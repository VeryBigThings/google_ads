defmodule Google.Ads.Googleads.V2.Errors.AccessInvitationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.AccessInvitationErrorEnum.AccessInvitationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:INVALID_EMAIL_ADDRESS, 2)
  field(:EMAIL_ADDRESS_ALREADY_HAS_ACCESS, 3)
end
