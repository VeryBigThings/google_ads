defmodule Google.Ads.Googleads.V8Availabilities.Services.ListMerchantCenterLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t()
        }

  defstruct [:customer_id]

  field :customer_id, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListMerchantCenterLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_center_links: [Google.Ads.Googleads.V8Availabilities.Resources.MerchantCenterLink.t()]
        }

  defstruct [:merchant_center_links]

  field :merchant_center_links, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Resources.MerchantCenterLink
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GetMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8Availabilities.Services.MerchantCenterLinkOperation.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :validate_only]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V8Availabilities.Services.MerchantCenterLinkOperation
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MerchantCenterLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :update, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.MerchantCenterLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateMerchantCenterLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8Availabilities.Services.MutateMerchantCenterLinkResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, type: Google.Ads.Googleads.V8Availabilities.Services.MutateMerchantCenterLinkResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateMerchantCenterLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MerchantCenterLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.MerchantCenterLinkService"

  rpc :ListMerchantCenterLinks,
      Google.Ads.Googleads.V8Availabilities.Services.ListMerchantCenterLinksRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ListMerchantCenterLinksResponse

  rpc :GetMerchantCenterLink,
      Google.Ads.Googleads.V8Availabilities.Services.GetMerchantCenterLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.MerchantCenterLink

  rpc :MutateMerchantCenterLink,
      Google.Ads.Googleads.V8Availabilities.Services.MutateMerchantCenterLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateMerchantCenterLinkResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MerchantCenterLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.MerchantCenterLinkService.Service
end
