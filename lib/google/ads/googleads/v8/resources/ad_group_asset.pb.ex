defmodule Google.Ads.Googleads.V8.Resources.AdGroupAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          status: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus.t()
        }

  defstruct [:resource_name, :ad_group, :asset, :field_type, :status]

  field :resource_name, 1, optional: true, type: :string
  field :ad_group, 2, required: true, type: :string
  field :asset, 3, required: true, type: :string

  field :field_type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :status, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
