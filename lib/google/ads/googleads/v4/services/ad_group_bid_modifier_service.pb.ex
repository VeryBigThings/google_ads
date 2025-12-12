defmodule Google.Ads.Googleads.V4.Services.GetAdGroupBidModifierRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifiersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.AdGroupBidModifierOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupBidModifierOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.AdGroupBidModifier, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.AdGroupBidModifier, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifiersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifierResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifierResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupBidModifierService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.AdGroupBidModifierService"

  rpc :GetAdGroupBidModifier,
      Google.Ads.Googleads.V4.Services.GetAdGroupBidModifierRequest,
      Google.Ads.Googleads.V4.Resources.AdGroupBidModifier

  rpc :MutateAdGroupBidModifiers,
      Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifiersRequest,
      Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifiersResponse
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupBidModifierService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.AdGroupBidModifierService.Service
end
