defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8Availabilities.Services.CustomerOperation.t() | nil,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operation, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string
  field :operation, 4, type: Google.Ads.Googleads.V8Availabilities.Services.CustomerOperation
  field :validate_only, 5, type: :bool

  field :response_content_type, 6,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          customer_client: Google.Ads.Googleads.V8Availabilities.Resources.Customer.t() | nil,
          email_address: String.t(),
          access_role: Google.Ads.Googleads.V8Availabilities.Enums.AccessRoleEnum.AccessRole.t(),
          validate_only: boolean
        }

  defstruct [:customer_id, :customer_client, :email_address, :access_role, :validate_only]

  field :customer_id, 1, type: :string
  field :customer_client, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.Customer
  field :email_address, 5, type: :string
  field :access_role, 4, type: Google.Ads.Googleads.V8Availabilities.Enums.AccessRoleEnum.AccessRole, enum: true
  field :validate_only, 6, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update: Google.Ads.Googleads.V8Availabilities.Resources.Customer.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:update, :update_mask]

  field :update, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.Customer
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateCustomerClientResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          invitation_link: String.t()
        }

  defstruct [:resource_name, :invitation_link]

  field :resource_name, 2, type: :string
  field :invitation_link, 3, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer: Google.Ads.Googleads.V8Availabilities.Resources.Customer.t() | nil
        }

  defstruct [:resource_name, :customer]

  field :resource_name, 1, type: :string
  field :customer, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.Customer
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListAccessibleCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListAccessibleCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()]
        }

  defstruct [:resource_names]

  field :resource_names, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomerService"

  rpc :GetCustomer,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomerRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.Customer

  rpc :MutateCustomer,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerResponse

  rpc :ListAccessibleCustomers,
      Google.Ads.Googleads.V8Availabilities.Services.ListAccessibleCustomersRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ListAccessibleCustomersResponse

  rpc :CreateCustomerClient,
      Google.Ads.Googleads.V8Availabilities.Services.CreateCustomerClientRequest,
      Google.Ads.Googleads.V8Availabilities.Services.CreateCustomerClientResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomerService.Service
end
