defmodule Google.Ads.Googleads.V7.Resources.CustomerUserAccessInvitation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :invitation_id, 2, type: :int64
  field :access_role, 3, type: Google.Ads.Googleads.V7.Enums.AccessRoleEnum.AccessRole, enum: true
  field :email_address, 4, type: :string
  field :creation_date_time, 5, type: :string

  field :invitation_status, 6,
    type: Google.Ads.Googleads.V7.Enums.AccessInvitationStatusEnum.AccessInvitationStatus,
    enum: true
end
