defmodule Google.Ads.Googleads.V8.Services.GetAdGroupBidModifierRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupBidModifiersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupBidModifierOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupBidModifierOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupBidModifier,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupBidModifier,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupBidModifiersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupBidModifierResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupBidModifierResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :ad_group_bid_modifier, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupBidModifier
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupBidModifierService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdGroupBidModifierService"

  rpc :GetAdGroupBidModifier,
      Google.Ads.Googleads.V8.Services.GetAdGroupBidModifierRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupBidModifier

  rpc :MutateAdGroupBidModifiers,
      Google.Ads.Googleads.V8.Services.MutateAdGroupBidModifiersRequest,
      Google.Ads.Googleads.V8.Services.MutateAdGroupBidModifiersResponse
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupBidModifierService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupBidModifierService.Service
end
