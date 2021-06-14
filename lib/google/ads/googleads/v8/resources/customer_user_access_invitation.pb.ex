defmodule Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          invitation_id: integer,
          access_role: Google.Ads.Googleads.V8.Enums.AccessRoleEnum.AccessRole.t(),
          email_address: String.t(),
          creation_date_time: String.t(),
          invitation_status:
            Google.Ads.Googleads.V8.Enums.AccessInvitationStatusEnum.AccessInvitationStatus.t()
        }

  defstruct [
    :resource_name,
    :invitation_id,
    :access_role,
    :email_address,
    :creation_date_time,
    :invitation_status
  ]

  field :resource_name, 1, optional: true, type: :string
  field :invitation_id, 2, optional: true, type: :int64

  field :access_role, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AccessRoleEnum.AccessRole,
    enum: true

  field :email_address, 4, optional: true, type: :string
  field :creation_date_time, 5, optional: true, type: :string

  field :invitation_status, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AccessInvitationStatusEnum.AccessInvitationStatus,
    enum: true
end
