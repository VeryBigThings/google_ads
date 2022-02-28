defmodule Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan
        }

  defstruct target_roas: 0.0

  field :target_roas, 1, type: :double, json_name: "targetRoas", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa: integer
        }

  defstruct target_cpa: 0

  field :target_cpa, 1, type: :int64, json_name: "targetCpa", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: integer
        }

  defstruct target_cpa_micros: 0

  field :target_cpa_micros, 1, type: :int64, json_name: "targetCpaMicros", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            Google.Ads.Googleads.V10.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation.t(),
          location_fraction_micros: integer,
          cpc_bid_ceiling_micros: integer
        }

  defstruct location: :UNSPECIFIED,
            location_fraction_micros: 0,
            cpc_bid_ceiling_micros: 0

  field :location, 1,
    type:
      Google.Ads.Googleads.V10.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true,
    deprecated: false

  field :location_fraction_micros, 2, type: :int64, json_name: "locationFractionMicros"

  field :cpc_bid_ceiling_micros, 3,
    type: :int64,
    json_name: "cpcBidCeilingMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan
        }

  defstruct target_roas: 0.0

  field :target_roas, 1, type: :double, json_name: "targetRoas", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_spend_micros: integer,
          cpc_bid_ceiling_micros: integer
        }

  defstruct target_spend_micros: 0,
            cpc_bid_ceiling_micros: 0

  field :target_spend_micros, 1, type: :int64, json_name: "targetSpendMicros", deprecated: true

  field :cpc_bid_ceiling_micros, 2,
    type: :int64,
    json_name: "cpcBidCeilingMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheme:
            {:maximize_conversion_value,
             Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.MaximizeConversionValue.t()
             | nil}
            | {:maximize_conversions,
               Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.MaximizeConversions.t()
               | nil}
            | {:target_cpa,
               Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetCpa.t() | nil}
            | {:target_impression_share,
               Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetImpressionShare.t()
               | nil}
            | {:target_roas,
               Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetRoas.t() | nil}
            | {:target_spend,
               Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetSpend.t() | nil},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          type: Google.Ads.Googleads.V10.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
          owner_customer_id: integer,
          owner_descriptive_name: String.t()
        }

  defstruct scheme: nil,
            resource_name: "",
            id: 0,
            name: "",
            type: :UNSPECIFIED,
            owner_customer_id: 0,
            owner_descriptive_name: ""

  oneof :scheme, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V10.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true,
    deprecated: false

  field :owner_customer_id, 5, type: :int64, json_name: "ownerCustomerId", deprecated: false

  field :owner_descriptive_name, 6,
    type: :string,
    json_name: "ownerDescriptiveName",
    deprecated: false

  field :maximize_conversion_value, 7,
    type: Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.MaximizeConversionValue,
    json_name: "maximizeConversionValue",
    oneof: 0,
    deprecated: false

  field :maximize_conversions, 8,
    type: Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.MaximizeConversions,
    json_name: "maximizeConversions",
    oneof: 0,
    deprecated: false

  field :target_cpa, 9,
    type: Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetCpa,
    json_name: "targetCpa",
    oneof: 0,
    deprecated: false

  field :target_impression_share, 10,
    type: Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetImpressionShare,
    json_name: "targetImpressionShare",
    oneof: 0,
    deprecated: false

  field :target_roas, 11,
    type: Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetRoas,
    json_name: "targetRoas",
    oneof: 0,
    deprecated: false

  field :target_spend, 12,
    type: Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.TargetSpend,
    json_name: "targetSpend",
    oneof: 0,
    deprecated: false
end
