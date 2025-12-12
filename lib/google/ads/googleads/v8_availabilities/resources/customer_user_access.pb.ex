defmodule Google.Ads.Googleads.V8Availabilities.Resources.CustomerUserAccess do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :user_id, 2, type: :int64
  field :email_address, 3, type: :string
  field :access_role, 4, type: Google.Ads.Googleads.V8Availabilities.Enums.AccessRoleEnum.AccessRole, enum: true
  field :access_creation_date_time, 6, type: :string
  field :inviter_user_email_address, 7, type: :string
end
