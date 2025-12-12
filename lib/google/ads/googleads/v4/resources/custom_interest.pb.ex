defmodule Google.Ads.Googleads.V4.Resources.CustomInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value

  field :status, 3,
    type: Google.Ads.Googleads.V4.Enums.CustomInterestStatusEnum.CustomInterestStatus,
    enum: true

  field :name, 4, type: Google.Protobuf.StringValue

  field :type, 5,
    type: Google.Ads.Googleads.V4.Enums.CustomInterestTypeEnum.CustomInterestType,
    enum: true

  field :description, 6, type: Google.Protobuf.StringValue
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V4.Resources.CustomInterestMember
end

defmodule Google.Ads.Googleads.V4.Resources.CustomInterestMember do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :member_type, 1,
    type: Google.Ads.Googleads.V4.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType,
    enum: true

  field :parameter, 2, type: Google.Protobuf.StringValue
end
