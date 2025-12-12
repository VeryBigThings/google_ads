defmodule Google.Ads.Googleads.V7.Services.GetCampaignFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCampaignFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CampaignFeedOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.CampaignFeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.CampaignFeed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.CampaignFeed, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateCampaignFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignFeedResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateCampaignFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :campaign_feed, 2, type: Google.Ads.Googleads.V7.Resources.CampaignFeed
end

defmodule Google.Ads.Googleads.V7.Services.CampaignFeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CampaignFeedService"

  rpc :GetCampaignFeed,
      Google.Ads.Googleads.V7.Services.GetCampaignFeedRequest,
      Google.Ads.Googleads.V7.Resources.CampaignFeed

  rpc :MutateCampaignFeeds,
      Google.Ads.Googleads.V7.Services.MutateCampaignFeedsRequest,
      Google.Ads.Googleads.V7.Services.MutateCampaignFeedsResponse
end

defmodule Google.Ads.Googleads.V7.Services.CampaignFeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CampaignFeedService.Service
end
