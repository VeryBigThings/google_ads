defmodule Google.Ads.Googleads.V8.Resources.CustomAudience do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          status: Google.Ads.Googleads.V8.Enums.CustomAudienceStatusEnum.CustomAudienceStatus.t(),
          name: String.t(),
          type: Google.Ads.Googleads.V8.Enums.CustomAudienceTypeEnum.CustomAudienceType.t(),
          description: String.t(),
          members: [Google.Ads.Googleads.V8.Resources.CustomAudienceMember.t()]
        }

  defstruct [:resource_name, :id, :status, :name, :type, :description, :members]

  field :resource_name, 1, optional: true, type: :string
  field :id, 2, optional: true, type: :int64

  field :status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CustomAudienceStatusEnum.CustomAudienceStatus,
    enum: true

  field :name, 4, optional: true, type: :string

  field :type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CustomAudienceTypeEnum.CustomAudienceType,
    enum: true

  field :description, 6, optional: true, type: :string
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V8.Resources.CustomAudienceMember
end

defmodule Google.Ads.Googleads.V8.Resources.CustomAudienceMember do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          value: {atom, any},
          member_type:
            Google.Ads.Googleads.V8.Enums.CustomAudienceMemberTypeEnum.CustomAudienceMemberType.t()
        }

  defstruct [:value, :member_type]

  oneof :value, 0

  field :member_type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CustomAudienceMemberTypeEnum.CustomAudienceMemberType,
    enum: true

  field :keyword, 2, optional: true, type: :string, oneof: 0
  field :url, 3, optional: true, type: :string, oneof: 0
  field :place_category, 4, optional: true, type: :int64, oneof: 0
  field :app, 5, optional: true, type: :string, oneof: 0
end
