defmodule Google.Ads.Googleads.V8.Common.Commission do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :commission_rate_micros, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.ManualCpc do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :enhanced_cpc_enabled, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.ManualCpm do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.ManualCpv do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_cpa, 1, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_roas, 2, optional: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_cpa_micros, 4, optional: true, type: :int64
  field :cpc_bid_ceiling_micros, 5, optional: true, type: :int64
  field :cpc_bid_floor_micros, 6, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpm do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :location, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 4, optional: true, type: :int64
  field :cpc_bid_ceiling_micros, 5, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_roas, 4, optional: true, type: :double
  field :cpc_bid_ceiling_micros, 5, optional: true, type: :int64
  field :cpc_bid_floor_micros, 6, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_spend_micros, 3, optional: true, type: :int64, deprecated: true
  field :cpc_bid_ceiling_micros, 4, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.PercentCpc do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :cpc_bid_ceiling_micros, 3, optional: true, type: :int64
  field :enhanced_cpc_enabled, 4, optional: true, type: :bool
end
