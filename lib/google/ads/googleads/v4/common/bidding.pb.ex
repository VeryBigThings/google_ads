defmodule Google.Ads.Googleads.V4.Common.Commission do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :commission_rate_micros, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.ManualCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :enhanced_cpc_enabled, 1, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Common.ManualCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.ManualCpv do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_roas, 1, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V4.Common.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_cpa_micros, 1, type: Google.Protobuf.Int64Value
  field :cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value
  field :cpc_bid_floor_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :location, 1,
    type:
      Google.Ads.Googleads.V4.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 2, type: Google.Protobuf.Int64Value
  field :cpc_bid_ceiling_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_roas, 1, type: Google.Protobuf.DoubleValue
  field :cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value
  field :cpc_bid_floor_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_spend_micros, 1, type: Google.Protobuf.Int64Value
  field :cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.PercentCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :cpc_bid_ceiling_micros, 1, type: Google.Protobuf.Int64Value
  field :enhanced_cpc_enabled, 2, type: Google.Protobuf.BoolValue
end
