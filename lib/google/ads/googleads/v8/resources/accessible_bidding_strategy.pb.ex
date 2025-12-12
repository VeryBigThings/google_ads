defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_roas, 1, required: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_cpa, 1, required: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_cpa_micros, 1, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_spend_micros, 1, optional: true, type: :int64, deprecated: true
  field :cpc_bid_ceiling_micros, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :location, 1,
    required: true,
    type:
      Google.Ads.Googleads.V8.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 2, optional: true, type: :int64
  field :cpc_bid_ceiling_micros, 3, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_roas, 1, optional: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :scheme, 0
  field :resource_name, 1, optional: true, type: :string
  field :id, 2, required: true, type: :int64
  field :name, 3, required: true, type: :string

  field :type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :owner_customer_id, 5, required: true, type: :int64
  field :owner_descriptive_name, 6, required: true, type: :string

  field :maximize_conversion_value, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversionValue,
    oneof: 0

  field :maximize_conversions, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversions,
    oneof: 0

  field :target_cpa, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetCpa,
    oneof: 0

  field :target_impression_share, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetImpressionShare,
    oneof: 0

  field :target_roas, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetRoas,
    oneof: 0

  field :target_spend, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetSpend,
    oneof: 0
end
