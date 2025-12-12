defmodule Google.Ads.Googleads.V8.Services.ListMerchantCenterLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ListMerchantCenterLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :merchant_center_links, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.MerchantCenterLink
end

defmodule Google.Ads.Googleads.V8.Services.GetMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operation, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Services.MerchantCenterLinkOperation

  field :validate_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.MerchantCenterLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 3, optional: true, type: Google.Protobuf.FieldMask

  field :update, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.MerchantCenterLink,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateMerchantCenterLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :result, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateMerchantCenterLinkResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateMerchantCenterLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MerchantCenterLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.MerchantCenterLinkService"

  rpc :ListMerchantCenterLinks,
      Google.Ads.Googleads.V8.Services.ListMerchantCenterLinksRequest,
      Google.Ads.Googleads.V8.Services.ListMerchantCenterLinksResponse

  rpc :GetMerchantCenterLink,
      Google.Ads.Googleads.V8.Services.GetMerchantCenterLinkRequest,
      Google.Ads.Googleads.V8.Resources.MerchantCenterLink

  rpc :MutateMerchantCenterLink,
      Google.Ads.Googleads.V8.Services.MutateMerchantCenterLinkRequest,
      Google.Ads.Googleads.V8.Services.MutateMerchantCenterLinkResponse
end

defmodule Google.Ads.Googleads.V8.Services.MerchantCenterLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.MerchantCenterLinkService.Service
end
