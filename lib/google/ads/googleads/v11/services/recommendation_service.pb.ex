defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.t()],
          partial_failure: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CampaignBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_budget_amount_micros: integer
        }

  defstruct new_budget_amount_micros: 0

  field :new_budget_amount_micros, 2, type: :int64, json_name: "newBudgetAmountMicros"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TextAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V11.Resources.Ad.t() | nil
        }

  defstruct ad: nil

  field :ad, 1, type: Google.Ads.Googleads.V11.Resources.Ad
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.KeywordParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_group: String.t(),
          match_type: Google.Ads.Googleads.V11.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          cpc_bid_micros: integer
        }

  defstruct ad_group: "",
            match_type: :UNSPECIFIED,
            cpc_bid_micros: 0

  field :ad_group, 4, type: :string, json_name: "adGroup"

  field :match_type, 2,
    type: Google.Ads.Googleads.V11.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true

  field :cpc_bid_micros, 5, type: :int64, json_name: "cpcBidMicros"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TargetCpaOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: integer,
          new_campaign_budget_amount_micros: integer
        }

  defstruct target_cpa_micros: 0,
            new_campaign_budget_amount_micros: 0

  field :target_cpa_micros, 3, type: :int64, json_name: "targetCpaMicros"

  field :new_campaign_budget_amount_micros, 4,
    type: :int64,
    json_name: "newCampaignBudgetAmountMicros"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TargetRoasOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan,
          new_campaign_budget_amount_micros: integer
        }

  defstruct target_roas: 0.0,
            new_campaign_budget_amount_micros: 0

  field :target_roas, 1, type: :double, json_name: "targetRoas"

  field :new_campaign_budget_amount_micros, 2,
    type: :int64,
    json_name: "newCampaignBudgetAmountMicros"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CalloutExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_extensions: [Google.Ads.Googleads.V11.Common.CalloutFeedItem.t()]
        }

  defstruct callout_extensions: []

  field :callout_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CalloutFeedItem,
    json_name: "calloutExtensions"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CallExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_extensions: [Google.Ads.Googleads.V11.Common.CallFeedItem.t()]
        }

  defstruct call_extensions: []

  field :call_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CallFeedItem,
    json_name: "callExtensions"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.SitelinkExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sitelink_extensions: [Google.Ads.Googleads.V11.Common.SitelinkFeedItem.t()]
        }

  defstruct sitelink_extensions: []

  field :sitelink_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.SitelinkFeedItem,
    json_name: "sitelinkExtensions"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budget_micros_to_move: integer
        }

  defstruct budget_micros_to_move: 0

  field :budget_micros_to_move, 2, type: :int64, json_name: "budgetMicrosToMove"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdAssetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          updated_ad: Google.Ads.Googleads.V11.Resources.Ad.t() | nil
        }

  defstruct updated_ad: nil

  field :updated_ad, 1, type: Google.Ads.Googleads.V11.Resources.Ad, json_name: "updatedAd"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdImproveAdStrengthParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          updated_ad: Google.Ads.Googleads.V11.Resources.Ad.t() | nil
        }

  defstruct updated_ad: nil

  field :updated_ad, 1, type: Google.Ads.Googleads.V11.Resources.Ad, json_name: "updatedAd"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V11.Resources.Ad.t() | nil
        }

  defstruct ad: nil

  field :ad, 1, type: Google.Ads.Googleads.V11.Resources.Ad, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.UseBroadMatchKeywordParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_budget_amount_micros: integer
        }

  defstruct new_budget_amount_micros: 0

  field :new_budget_amount_micros, 1, type: :int64, json_name: "newBudgetAmountMicros"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          apply_parameters:
            {:campaign_budget,
             Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CampaignBudgetParameters.t()
             | nil}
            | {:text_ad,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TextAdParameters.t()
               | nil}
            | {:keyword,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.KeywordParameters.t()
               | nil}
            | {:target_cpa_opt_in,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TargetCpaOptInParameters.t()
               | nil}
            | {:target_roas_opt_in,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TargetRoasOptInParameters.t()
               | nil}
            | {:callout_extension,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CalloutExtensionParameters.t()
               | nil}
            | {:call_extension,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CallExtensionParameters.t()
               | nil}
            | {:sitelink_extension,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.SitelinkExtensionParameters.t()
               | nil}
            | {:move_unused_budget,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters.t()
               | nil}
            | {:responsive_search_ad,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters.t()
               | nil}
            | {:use_broad_match_keyword,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.UseBroadMatchKeywordParameters.t()
               | nil}
            | {:responsive_search_ad_asset,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdAssetParameters.t()
               | nil}
            | {:responsive_search_ad_improve_ad_strength,
               Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdImproveAdStrengthParameters.t()
               | nil},
          resource_name: String.t()
        }

  defstruct apply_parameters: nil,
            resource_name: ""

  oneof :apply_parameters, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_budget, 2,
    type: Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CampaignBudgetParameters,
    json_name: "campaignBudget",
    oneof: 0

  field :text_ad, 3,
    type: Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TextAdParameters,
    json_name: "textAd",
    oneof: 0

  field :keyword, 4,
    type: Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.KeywordParameters,
    oneof: 0

  field :target_cpa_opt_in, 5,
    type: Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TargetCpaOptInParameters,
    json_name: "targetCpaOptIn",
    oneof: 0

  field :target_roas_opt_in, 10,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.TargetRoasOptInParameters,
    json_name: "targetRoasOptIn",
    oneof: 0

  field :callout_extension, 6,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CalloutExtensionParameters,
    json_name: "calloutExtension",
    oneof: 0

  field :call_extension, 7,
    type: Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.CallExtensionParameters,
    json_name: "callExtension",
    oneof: 0

  field :sitelink_extension, 8,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.SitelinkExtensionParameters,
    json_name: "sitelinkExtension",
    oneof: 0

  field :move_unused_budget, 9,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters,
    json_name: "moveUnusedBudget",
    oneof: 0

  field :responsive_search_ad, 11,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters,
    json_name: "responsiveSearchAd",
    oneof: 0

  field :use_broad_match_keyword, 12,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.UseBroadMatchKeywordParameters,
    json_name: "useBroadMatchKeyword",
    oneof: 0

  field :responsive_search_ad_asset, 13,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdAssetParameters,
    json_name: "responsiveSearchAdAsset",
    oneof: 0

  field :responsive_search_ad_improve_ad_strength, 14,
    type:
      Google.Ads.Googleads.V11.Services.ApplyRecommendationOperation.ResponsiveSearchAdImproveAdStrengthParameters,
    json_name: "responsiveSearchAdImproveAdStrength",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V11.Services.ApplyRecommendationResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct results: [],
            partial_failure_error: nil

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ApplyRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end
defmodule Google.Ads.Googleads.V11.Services.ApplyRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.DismissRecommendationRequest.DismissRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V11.Services.DismissRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [
            Google.Ads.Googleads.V11.Services.DismissRecommendationRequest.DismissRecommendationOperation.t()
          ],
          partial_failure: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V11.Services.DismissRecommendationRequest.DismissRecommendationOperation,
    deprecated: false

  field :partial_failure, 2, type: :bool, json_name: "partialFailure"
end
defmodule Google.Ads.Googleads.V11.Services.DismissRecommendationResponse.DismissRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V11.Services.DismissRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [
            Google.Ads.Googleads.V11.Services.DismissRecommendationResponse.DismissRecommendationResult.t()
          ],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct results: [],
            partial_failure_error: nil

  field :results, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V11.Services.DismissRecommendationResponse.DismissRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end
defmodule Google.Ads.Googleads.V11.Services.RecommendationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.RecommendationService"

  rpc :ApplyRecommendation,
      Google.Ads.Googleads.V11.Services.ApplyRecommendationRequest,
      Google.Ads.Googleads.V11.Services.ApplyRecommendationResponse

  rpc :DismissRecommendation,
      Google.Ads.Googleads.V11.Services.DismissRecommendationRequest,
      Google.Ads.Googleads.V11.Services.DismissRecommendationResponse
end

defmodule Google.Ads.Googleads.V11.Services.RecommendationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.RecommendationService.Service
end
