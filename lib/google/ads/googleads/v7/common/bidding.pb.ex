defmodule Google.Ads.Googleads.V7.Common.Commission do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :commission_rate_micros, 2, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V7.Common.ManualCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :enhanced_cpc_enabled, 2, type: :bool
end

defmodule Google.Ads.Googleads.V7.Common.ManualCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V7.Common.ManualCpv do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V7.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_cpa, 1, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_roas, 2, type: :double
end

defmodule Google.Ads.Googleads.V7.Common.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_cpa_micros, 4, type: :int64
  field :cpc_bid_ceiling_micros, 5, type: :int64
  field :cpc_bid_floor_micros, 6, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.TargetCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V7.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :location, 1,
    type:
      Google.Ads.Googleads.V7.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 4, type: :int64
  field :cpc_bid_ceiling_micros, 5, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_roas, 4, type: :double
  field :cpc_bid_ceiling_micros, 5, type: :int64
  field :cpc_bid_floor_micros, 6, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_spend_micros, 3, type: :int64, deprecated: true
  field :cpc_bid_ceiling_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.PercentCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :cpc_bid_ceiling_micros, 3, type: :int64
  field :enhanced_cpc_enabled, 4, type: :bool
end
