defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:target_roas]

  field :target_roas, 1, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa: integer
        }

  defstruct [:target_cpa]

  field :target_cpa, 1, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:target_cpa_micros]

  field :target_cpa_micros, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_spend_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:target_spend_micros, :cpc_bid_ceiling_micros]

  field :target_spend_micros, 1, type: Google.Protobuf.Int64Value, deprecated: true
  field :cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            Google.Ads.Googleads.V8.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation.t(),
          location_fraction_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:location, :location_fraction_micros, :cpc_bid_ceiling_micros]

  field :location, 1,
    type:
      Google.Ads.Googleads.V8.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 2, type: Google.Protobuf.Int64Value
  field :cpc_bid_ceiling_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [:target_roas]

  field :target_roas, 1, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheme: {atom, any},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
          owner_customer_id: integer,
          owner_descriptive_name: String.t()
        }

  defstruct [
    :scheme,
    :resource_name,
    :id,
    :name,
    :type,
    :owner_customer_id,
    :owner_descriptive_name
  ]

  oneof :scheme, 0
  field :resource_name, 1, type: :string
  field :id, 2, type: :int64
  field :name, 3, type: :string

  field :type, 4,
    type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :owner_customer_id, 5, type: :int64
  field :owner_descriptive_name, 6, type: :string

  field :maximize_conversion_value, 7,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversionValue,
    oneof: 0

  field :maximize_conversions, 8,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.MaximizeConversions,
    oneof: 0

  field :target_cpa, 9,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetCpa,
    oneof: 0

  field :target_impression_share, 10,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetImpressionShare,
    oneof: 0

  field :target_roas, 11,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetRoas,
    oneof: 0

  field :target_spend, 12,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy.TargetSpend,
    oneof: 0
end
