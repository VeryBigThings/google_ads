defmodule Google.Ads.Googleads.V8.Resources.CustomInterest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 8, optional: true, type: :int64

  field :status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CustomInterestStatusEnum.CustomInterestStatus,
    enum: true

  field :name, 9, optional: true, type: :string

  field :type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CustomInterestTypeEnum.CustomInterestType,
    enum: true

  field :description, 10, optional: true, type: :string
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V8.Resources.CustomInterestMember
end

defmodule Google.Ads.Googleads.V8.Resources.CustomInterestMember do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :member_type, 1,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType,
    enum: true

  field :parameter, 3, optional: true, type: :string
end
