defmodule Google.Ads.Googleads.V11.Resources.CustomInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          status:
            Google.Ads.Googleads.V11.Enums.CustomInterestStatusEnum.CustomInterestStatus.t(),
          name: String.t(),
          type: Google.Ads.Googleads.V11.Enums.CustomInterestTypeEnum.CustomInterestType.t(),
          description: String.t(),
          members: [Google.Ads.Googleads.V11.Resources.CustomInterestMember.t()]
        }

  defstruct resource_name: "",
            id: 0,
            status: :UNSPECIFIED,
            name: "",
            type: :UNSPECIFIED,
            description: "",
            members: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 8, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V11.Enums.CustomInterestStatusEnum.CustomInterestStatus,
    enum: true

  field :name, 9, type: :string

  field :type, 5,
    type: Google.Ads.Googleads.V11.Enums.CustomInterestTypeEnum.CustomInterestType,
    enum: true

  field :description, 10, type: :string
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V11.Resources.CustomInterestMember
end
defmodule Google.Ads.Googleads.V11.Resources.CustomInterestMember do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member_type:
            Google.Ads.Googleads.V11.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType.t(),
          parameter: String.t()
        }

  defstruct member_type: :UNSPECIFIED,
            parameter: ""

  field :member_type, 1,
    type: Google.Ads.Googleads.V11.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType,
    json_name: "memberType",
    enum: true

  field :parameter, 3, type: :string
end
