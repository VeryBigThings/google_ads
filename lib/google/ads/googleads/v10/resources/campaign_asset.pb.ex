defmodule Google.Ads.Googleads.V10.Resources.CampaignAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          status: Google.Ads.Googleads.V10.Enums.AssetLinkStatusEnum.AssetLinkStatus.t()
        }

  defstruct resource_name: "",
            campaign: "",
            asset: "",
            field_type: :UNSPECIFIED,
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 6, type: :string, deprecated: false
  field :asset, 7, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V10.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
