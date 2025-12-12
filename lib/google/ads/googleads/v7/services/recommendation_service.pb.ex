defmodule Google.Ads.Googleads.V7.Services.GetRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation

  field :partial_failure, 3, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.CampaignBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :new_budget_amount_micros, 2, type: :int64
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.TextAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad, 1, type: Google.Ads.Googleads.V7.Resources.Ad
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.KeywordParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad_group, 4, type: :string

  field :match_type, 2,
    type: Google.Ads.Googleads.V7.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :cpc_bid_micros, 5, type: :int64
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.TargetCpaOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_cpa_micros, 3, type: :int64
  field :new_campaign_budget_amount_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.TargetRoasOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_roas, 1, type: :double
  field :new_campaign_budget_amount_micros, 2, type: :int64
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.CalloutExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :callout_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CalloutFeedItem
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.CallExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :call_extensions, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.CallFeedItem
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.SitelinkExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :sitelink_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.SitelinkFeedItem
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :budget_micros_to_move, 2, type: :int64
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad, 1, type: Google.Ads.Googleads.V7.Resources.Ad
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :apply_parameters, 0

  field :resource_name, 1, type: :string

  field :campaign_budget, 2,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.CampaignBudgetParameters,
    oneof: 0

  field :text_ad, 3,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.TextAdParameters,
    oneof: 0

  field :keyword, 4,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.KeywordParameters,
    oneof: 0

  field :target_cpa_opt_in, 5,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.TargetCpaOptInParameters,
    oneof: 0

  field :target_roas_opt_in, 10,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.TargetRoasOptInParameters,
    oneof: 0

  field :callout_extension, 6,
    type:
      Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.CalloutExtensionParameters,
    oneof: 0

  field :call_extension, 7,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.CallExtensionParameters,
    oneof: 0

  field :sitelink_extension, 8,
    type:
      Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.SitelinkExtensionParameters,
    oneof: 0

  field :move_unused_budget, 9,
    type:
      Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters,
    oneof: 0

  field :responsive_search_ad, 11,
    type:
      Google.Ads.Googleads.V7.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters,
    oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.ApplyRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V7.Services.ApplyRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.DismissRecommendationRequest.DismissRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.DismissRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V7.Services.DismissRecommendationRequest.DismissRecommendationOperation

  field :partial_failure, 2, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.DismissRecommendationResponse.DismissRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.DismissRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V7.Services.DismissRecommendationResponse.DismissRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V7.Services.RecommendationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.RecommendationService"

  rpc :GetRecommendation,
      Google.Ads.Googleads.V7.Services.GetRecommendationRequest,
      Google.Ads.Googleads.V7.Resources.Recommendation

  rpc :ApplyRecommendation,
      Google.Ads.Googleads.V7.Services.ApplyRecommendationRequest,
      Google.Ads.Googleads.V7.Services.ApplyRecommendationResponse

  rpc :DismissRecommendation,
      Google.Ads.Googleads.V7.Services.DismissRecommendationRequest,
      Google.Ads.Googleads.V7.Services.DismissRecommendationResponse
end

defmodule Google.Ads.Googleads.V7.Services.RecommendationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.RecommendationService.Service
end
