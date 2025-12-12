defmodule Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation do
  @moduledoc false
  use Protobuf, syntax: :proto2



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
