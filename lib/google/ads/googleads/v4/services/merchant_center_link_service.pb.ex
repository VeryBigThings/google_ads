defmodule Google.Ads.Googleads.V4.Services.ListMerchantCenterLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ListMerchantCenterLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :merchant_center_links, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.MerchantCenterLink
end

defmodule Google.Ads.Googleads.V4.Services.GetMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V4.Services.MerchantCenterLinkOperation
end

defmodule Google.Ads.Googleads.V4.Services.MerchantCenterLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :update, 1, type: Google.Ads.Googleads.V4.Resources.MerchantCenterLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateMerchantCenterLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :result, 2, type: Google.Ads.Googleads.V4.Services.MutateMerchantCenterLinkResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateMerchantCenterLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MerchantCenterLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.MerchantCenterLinkService"

  rpc :ListMerchantCenterLinks,
      Google.Ads.Googleads.V4.Services.ListMerchantCenterLinksRequest,
      Google.Ads.Googleads.V4.Services.ListMerchantCenterLinksResponse

  rpc :GetMerchantCenterLink,
      Google.Ads.Googleads.V4.Services.GetMerchantCenterLinkRequest,
      Google.Ads.Googleads.V4.Resources.MerchantCenterLink

  rpc :MutateMerchantCenterLink,
      Google.Ads.Googleads.V4.Services.MutateMerchantCenterLinkRequest,
      Google.Ads.Googleads.V4.Services.MutateMerchantCenterLinkResponse
end

defmodule Google.Ads.Googleads.V4.Services.MerchantCenterLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.MerchantCenterLinkService.Service
end
