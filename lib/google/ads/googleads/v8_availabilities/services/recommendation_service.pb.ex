defmodule Google.Ads.Googleads.V8Availabilities.Services.GetRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.t()],
          partial_failure: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation

  field :partial_failure, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.CampaignBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_budget_amount_micros: integer
        }

  defstruct [:new_budget_amount_micros]

  field :new_budget_amount_micros, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.TextAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V8Availabilities.Resources.Ad.t() | nil
        }

  defstruct [:ad]

  field :ad, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.Ad
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.KeywordParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_group: String.t(),
          match_type: Google.Ads.Googleads.V8Availabilities.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          cpc_bid_micros: integer
        }

  defstruct [:ad_group, :match_type, :cpc_bid_micros]

  field :ad_group, 4, type: :string

  field :match_type, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :cpc_bid_micros, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.TargetCpaOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: integer,
          new_campaign_budget_amount_micros: integer
        }

  defstruct [:target_cpa_micros, :new_campaign_budget_amount_micros]

  field :target_cpa_micros, 3, type: :int64
  field :new_campaign_budget_amount_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.TargetRoasOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan,
          new_campaign_budget_amount_micros: integer
        }

  defstruct [:target_roas, :new_campaign_budget_amount_micros]

  field :target_roas, 1, type: :double
  field :new_campaign_budget_amount_micros, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.CalloutExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_extensions: [Google.Ads.Googleads.V8Availabilities.Common.CalloutFeedItem.t()]
        }

  defstruct [:callout_extensions]

  field :callout_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CalloutFeedItem
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.CallExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_extensions: [Google.Ads.Googleads.V8Availabilities.Common.CallFeedItem.t()]
        }

  defstruct [:call_extensions]

  field :call_extensions, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.CallFeedItem
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.SitelinkExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sitelink_extensions: [Google.Ads.Googleads.V8Availabilities.Common.SitelinkFeedItem.t()]
        }

  defstruct [:sitelink_extensions]

  field :sitelink_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.SitelinkFeedItem
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budget_micros_to_move: integer
        }

  defstruct [:budget_micros_to_move]

  field :budget_micros_to_move, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V8Availabilities.Resources.Ad.t() | nil
        }

  defstruct [:ad]

  field :ad, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.Ad
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          apply_parameters: {atom, any},
          resource_name: String.t()
        }

  defstruct [:apply_parameters, :resource_name]

  oneof :apply_parameters, 0

  field :resource_name, 1, type: :string

  field :campaign_budget, 2,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.CampaignBudgetParameters,
    oneof: 0

  field :text_ad, 3,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.TextAdParameters,
    oneof: 0

  field :keyword, 4,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.KeywordParameters,
    oneof: 0

  field :target_cpa_opt_in, 5,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.TargetCpaOptInParameters,
    oneof: 0

  field :target_roas_opt_in, 10,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.TargetRoasOptInParameters,
    oneof: 0

  field :callout_extension, 6,
    type:
      Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.CalloutExtensionParameters,
    oneof: 0

  field :call_extension, 7,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.CallExtensionParameters,
    oneof: 0

  field :sitelink_extension, 8,
    type:
      Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.SitelinkExtensionParameters,
    oneof: 0

  field :move_unused_budget, 9,
    type:
      Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters,
    oneof: 0

  field :responsive_search_ad, 11,
    type:
      Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationRequest.DismissRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [
            Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationRequest.DismissRecommendationOperation.t()
          ],
          partial_failure: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure]

  field :customer_id, 1, type: :string

  field :operations, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationRequest.DismissRecommendationOperation

  field :partial_failure, 2, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationResponse.DismissRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [
            Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationResponse.DismissRecommendationResult.t()
          ],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationResponse.DismissRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.RecommendationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.RecommendationService"

  rpc :GetRecommendation,
      Google.Ads.Googleads.V8Availabilities.Services.GetRecommendationRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.Recommendation

  rpc :ApplyRecommendation,
      Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ApplyRecommendationResponse

  rpc :DismissRecommendation,
      Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationRequest,
      Google.Ads.Googleads.V8Availabilities.Services.DismissRecommendationResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.RecommendationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.RecommendationService.Service
end
