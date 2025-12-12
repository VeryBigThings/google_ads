defmodule Google.Ads.Googleads.V8.Services.GetAdGroupAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.AdGroupAdOperation
  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupAdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :policy_validation_parameter, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyValidationParameter

  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupAd, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupAd, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateAdGroupAdResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :ad_group_ad, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupAd
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupAdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdGroupAdService"

  rpc :GetAdGroupAd,
      Google.Ads.Googleads.V8.Services.GetAdGroupAdRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupAd

  rpc :MutateAdGroupAds,
      Google.Ads.Googleads.V8.Services.MutateAdGroupAdsRequest,
      Google.Ads.Googleads.V8.Services.MutateAdGroupAdsResponse
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupAdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupAdService.Service
end
