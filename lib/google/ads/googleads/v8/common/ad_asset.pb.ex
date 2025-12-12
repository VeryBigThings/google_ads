defmodule Google.Ads.Googleads.V8.Common.AdTextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :text, 4, optional: true, type: :string

  field :pinned_field, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    enum: true

  field :asset_performance_label, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true

  field :policy_summary_info, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AdAssetPolicySummary
end

defmodule Google.Ads.Googleads.V8.Common.AdImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :asset, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.AdVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :asset, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.AdMediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :asset, 2, optional: true, type: :string
end
