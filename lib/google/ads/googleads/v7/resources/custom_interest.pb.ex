defmodule Google.Ads.Googleads.V7.Resources.CustomInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 8, type: :int64

  field :status, 3,
    type: Google.Ads.Googleads.V7.Enums.CustomInterestStatusEnum.CustomInterestStatus,
    enum: true

  field :name, 9, type: :string

  field :type, 5,
    type: Google.Ads.Googleads.V7.Enums.CustomInterestTypeEnum.CustomInterestType,
    enum: true

  field :description, 10, type: :string
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V7.Resources.CustomInterestMember
end

defmodule Google.Ads.Googleads.V7.Resources.CustomInterestMember do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :member_type, 1,
    type: Google.Ads.Googleads.V7.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType,
    enum: true

  field :parameter, 3, type: :string
end
