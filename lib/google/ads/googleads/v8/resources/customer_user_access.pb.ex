defmodule Google.Ads.Googleads.V8.Resources.CustomerUserAccess do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          user_id: integer,
          email_address: String.t(),
          access_role: Google.Ads.Googleads.V8.Enums.AccessRoleEnum.AccessRole.t(),
          access_creation_date_time: String.t(),
          inviter_user_email_address: String.t()
        }

  defstruct [
    :resource_name,
    :user_id,
    :email_address,
    :access_role,
    :access_creation_date_time,
    :inviter_user_email_address
  ]

  field :resource_name, 1, optional: true, type: :string
  field :user_id, 2, required: true, type: :int64
  field :email_address, 3, optional: true, type: :string

  field :access_role, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AccessRoleEnum.AccessRole,
    enum: true

  field :access_creation_date_time, 6, optional: true, type: :string
  field :inviter_user_email_address, 7, optional: true, type: :string
end
