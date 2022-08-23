defmodule Google.Ads.Googleads.V11.Services.MutateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V11.Services.CustomerOperation.t() | nil,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operation: nil,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 4,
    type: Google.Ads.Googleads.V11.Services.CustomerOperation,
    deprecated: false

  field :validate_only, 5, type: :bool, json_name: "validateOnly"

  field :response_content_type, 6,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.CreateCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          customer_client: Google.Ads.Googleads.V11.Resources.Customer.t() | nil,
          email_address: String.t(),
          access_role: Google.Ads.Googleads.V11.Enums.AccessRoleEnum.AccessRole.t(),
          validate_only: boolean
        }

  defstruct customer_id: "",
            customer_client: nil,
            email_address: "",
            access_role: :UNSPECIFIED,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_client, 2,
    type: Google.Ads.Googleads.V11.Resources.Customer,
    json_name: "customerClient",
    deprecated: false

  field :email_address, 5, type: :string, json_name: "emailAddress"

  field :access_role, 4,
    type: Google.Ads.Googleads.V11.Enums.AccessRoleEnum.AccessRole,
    json_name: "accessRole",
    enum: true

  field :validate_only, 6, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V11.Services.CustomerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update: Google.Ads.Googleads.V11.Resources.Customer.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct update: nil,
            update_mask: nil

  field :update, 1, type: Google.Ads.Googleads.V11.Resources.Customer
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Ads.Googleads.V11.Services.CreateCustomerClientResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          invitation_link: String.t()
        }

  defstruct resource_name: "",
            invitation_link: ""

  field :resource_name, 2, type: :string, json_name: "resourceName", deprecated: false
  field :invitation_link, 3, type: :string, json_name: "invitationLink"
end
defmodule Google.Ads.Googleads.V11.Services.MutateCustomerResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V11.Services.MutateCustomerResult.t() | nil
        }

  defstruct result: nil

  field :result, 2, type: Google.Ads.Googleads.V11.Services.MutateCustomerResult
end
defmodule Google.Ads.Googleads.V11.Services.MutateCustomerResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer: Google.Ads.Googleads.V11.Resources.Customer.t() | nil
        }

  defstruct resource_name: "",
            customer: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :customer, 2, type: Google.Ads.Googleads.V11.Resources.Customer
end
defmodule Google.Ads.Googleads.V11.Services.ListAccessibleCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Services.ListAccessibleCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()]
        }

  defstruct resource_names: []

  field :resource_names, 1, repeated: true, type: :string, json_name: "resourceNames"
end
defmodule Google.Ads.Googleads.V11.Services.CustomerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.CustomerService"

  rpc :MutateCustomer,
      Google.Ads.Googleads.V11.Services.MutateCustomerRequest,
      Google.Ads.Googleads.V11.Services.MutateCustomerResponse

  rpc :ListAccessibleCustomers,
      Google.Ads.Googleads.V11.Services.ListAccessibleCustomersRequest,
      Google.Ads.Googleads.V11.Services.ListAccessibleCustomersResponse

  rpc :CreateCustomerClient,
      Google.Ads.Googleads.V11.Services.CreateCustomerClientRequest,
      Google.Ads.Googleads.V11.Services.CreateCustomerClientResponse
end

defmodule Google.Ads.Googleads.V11.Services.CustomerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.CustomerService.Service
end
