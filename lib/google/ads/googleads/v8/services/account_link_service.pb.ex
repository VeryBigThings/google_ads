defmodule Google.Ads.Googleads.V8.Services.GetAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CreateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :account_link, 2, required: true, type: Google.Ads.Googleads.V8.Resources.AccountLink
end

defmodule Google.Ads.Googleads.V8.Services.CreateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operation, 2, required: true, type: Google.Ads.Googleads.V8.Services.AccountLinkOperation
  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.AccountLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.AccountLink, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :result, 1, optional: true, type: Google.Ads.Googleads.V8.Services.MutateAccountLinkResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateAccountLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.AccountLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AccountLinkService"

  rpc :GetAccountLink,
      Google.Ads.Googleads.V8.Services.GetAccountLinkRequest,
      Google.Ads.Googleads.V8.Resources.AccountLink

  rpc :CreateAccountLink,
      Google.Ads.Googleads.V8.Services.CreateAccountLinkRequest,
      Google.Ads.Googleads.V8.Services.CreateAccountLinkResponse

  rpc :MutateAccountLink,
      Google.Ads.Googleads.V8.Services.MutateAccountLinkRequest,
      Google.Ads.Googleads.V8.Services.MutateAccountLinkResponse
end

defmodule Google.Ads.Googleads.V8.Services.AccountLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AccountLinkService.Service
end
