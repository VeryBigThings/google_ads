defmodule Google.Ads.Googleads.V7.Common.AdTextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :text, 4, type: :string

  field :pinned_field, 2,
    type: Google.Ads.Googleads.V7.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    enum: true

  field :asset_performance_label, 5,
    type: Google.Ads.Googleads.V7.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true

  field :policy_summary_info, 6, type: Google.Ads.Googleads.V7.Common.AdAssetPolicySummary
end

defmodule Google.Ads.Googleads.V7.Common.AdImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :asset, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.AdVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :asset, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.AdMediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :asset, 2, type: :string
end
