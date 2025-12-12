defmodule Google.Ads.Googleads.V8.Services.GetAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.AdOperation
  field :partial_failure, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true

  field :validate_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.AdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 2, optional: true, type: Google.Protobuf.FieldMask

  field :policy_validation_parameter, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyValidationParameter

  field :update, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Ad, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateAdResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :ad, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Ad
end

defmodule Google.Ads.Googleads.V8.Services.AdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdService"

  rpc :GetAd, Google.Ads.Googleads.V8.Services.GetAdRequest, Google.Ads.Googleads.V8.Resources.Ad

  rpc :MutateAds,
      Google.Ads.Googleads.V8.Services.MutateAdsRequest,
      Google.Ads.Googleads.V8.Services.MutateAdsResponse
end

defmodule Google.Ads.Googleads.V8.Services.AdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdService.Service
end
