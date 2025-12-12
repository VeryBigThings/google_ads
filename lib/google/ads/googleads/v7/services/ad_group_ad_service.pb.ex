defmodule Google.Ads.Googleads.V7.Services.GetAdGroupAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.AdGroupAdOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupAdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask

  field :policy_validation_parameter, 5,
    type: Google.Ads.Googleads.V7.Common.PolicyValidationParameter

  field :create, 1, type: Google.Ads.Googleads.V7.Resources.AdGroupAd, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.AdGroupAd, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.MutateAdGroupAdResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group_ad, 2, type: Google.Ads.Googleads.V7.Resources.AdGroupAd
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupAdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AdGroupAdService"

  rpc :GetAdGroupAd,
      Google.Ads.Googleads.V7.Services.GetAdGroupAdRequest,
      Google.Ads.Googleads.V7.Resources.AdGroupAd

  rpc :MutateAdGroupAds,
      Google.Ads.Googleads.V7.Services.MutateAdGroupAdsRequest,
      Google.Ads.Googleads.V7.Services.MutateAdGroupAdsResponse
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupAdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdGroupAdService.Service
end
