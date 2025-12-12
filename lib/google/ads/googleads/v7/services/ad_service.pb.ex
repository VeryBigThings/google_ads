defmodule Google.Ads.Googleads.V7.Services.GetAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.AdOperation
  field :partial_failure, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true

  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.AdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 2, type: Google.Protobuf.FieldMask

  field :policy_validation_parameter, 3,
    type: Google.Ads.Googleads.V7.Common.PolicyValidationParameter

  field :update, 1, type: Google.Ads.Googleads.V7.Resources.Ad, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.MutateAdResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad, 2, type: Google.Ads.Googleads.V7.Resources.Ad
end

defmodule Google.Ads.Googleads.V7.Services.AdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AdService"

  rpc :GetAd, Google.Ads.Googleads.V7.Services.GetAdRequest, Google.Ads.Googleads.V7.Resources.Ad

  rpc :MutateAds,
      Google.Ads.Googleads.V7.Services.MutateAdsRequest,
      Google.Ads.Googleads.V7.Services.MutateAdsResponse
end

defmodule Google.Ads.Googleads.V7.Services.AdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdService.Service
end
