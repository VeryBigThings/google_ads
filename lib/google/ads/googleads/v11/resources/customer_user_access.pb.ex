defmodule Google.Ads.Googleads.V11.Resources.CustomerUserAccess do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          user_id: integer,
          email_address: String.t(),
          access_role: Google.Ads.Googleads.V11.Enums.AccessRoleEnum.AccessRole.t(),
          access_creation_date_time: String.t(),
          inviter_user_email_address: String.t()
        }

  defstruct resource_name: "",
            user_id: 0,
            email_address: "",
            access_role: :UNSPECIFIED,
            access_creation_date_time: "",
            inviter_user_email_address: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :user_id, 2, type: :int64, json_name: "userId", deprecated: false
  field :email_address, 3, type: :string, json_name: "emailAddress", deprecated: false

  field :access_role, 4,
    type: Google.Ads.Googleads.V11.Enums.AccessRoleEnum.AccessRole,
    json_name: "accessRole",
    enum: true

  field :access_creation_date_time, 6,
    type: :string,
    json_name: "accessCreationDateTime",
    deprecated: false

  field :inviter_user_email_address, 7,
    type: :string,
    json_name: "inviterUserEmailAddress",
    deprecated: false
end
