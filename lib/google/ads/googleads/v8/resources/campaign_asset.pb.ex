defmodule Google.Ads.Googleads.V8.Resources.CampaignAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          status: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus.t()
        }

  defstruct [:resource_name, :campaign, :asset, :field_type, :status]

  field :resource_name, 1, optional: true, type: :string
  field :campaign, 6, optional: true, type: :string
  field :asset, 7, optional: true, type: :string

  field :field_type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
