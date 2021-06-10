defmodule Google.Ads.Googleads.V8.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hashed_first_name: Google.Protobuf.StringValue.t() | nil,
          hashed_last_name: Google.Protobuf.StringValue.t() | nil,
          city: Google.Protobuf.StringValue.t() | nil,
          state: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          postal_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:hashed_first_name, :hashed_last_name, :city, :state, :country_code, :postal_code]

  field :hashed_first_name, 7, type: Google.Protobuf.StringValue
  field :hashed_last_name, 8, type: Google.Protobuf.StringValue
  field :city, 9, type: Google.Protobuf.StringValue
  field :state, 10, type: Google.Protobuf.StringValue
  field :country_code, 11, type: Google.Protobuf.StringValue
  field :postal_code, 12, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifier: {atom, any},
          user_identifier_source:
            Google.Ads.Googleads.V8.Enums.UserIdentifierSourceEnum.UserIdentifierSource.t()
        }

  defstruct [:identifier, :user_identifier_source]

  oneof :identifier, 0

  field :user_identifier_source, 6,
    type: Google.Ads.Googleads.V8.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    enum: true

  field :hashed_email, 7, type: :string, oneof: 0
  field :hashed_phone_number, 8, type: :string, oneof: 0
  field :mobile_id, 9, type: :string, oneof: 0
  field :third_party_user_id, 10, type: :string, oneof: 0
  field :address_info, 5, type: Google.Ads.Googleads.V8.Common.OfflineUserAddressInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction_date_time: Google.Protobuf.StringValue.t() | nil,
          transaction_amount_micros: Google.Protobuf.DoubleValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          order_id: Google.Protobuf.StringValue.t() | nil,
          store_attribute: Google.Ads.Googleads.V8.Common.StoreAttribute.t() | nil,
          custom_value: Google.Protobuf.StringValue.t() | nil,
          item_attribute: Google.Ads.Googleads.V8.Common.ItemAttribute.t() | nil
        }

  defstruct [
    :transaction_date_time,
    :transaction_amount_micros,
    :currency_code,
    :conversion_action,
    :order_id,
    :store_attribute,
    :custom_value,
    :item_attribute
  ]

  field :transaction_date_time, 8, type: Google.Protobuf.StringValue
  field :transaction_amount_micros, 9, type: Google.Protobuf.DoubleValue
  field :currency_code, 10, type: Google.Protobuf.StringValue
  field :conversion_action, 11, type: Google.Protobuf.StringValue
  field :order_id, 12, type: Google.Protobuf.StringValue
  field :store_attribute, 6, type: Google.Ads.Googleads.V8.Common.StoreAttribute
  field :custom_value, 13, type: Google.Protobuf.StringValue
  field :item_attribute, 14, type: Google.Ads.Googleads.V8.Common.ItemAttribute
end

defmodule Google.Ads.Googleads.V8.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          store_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:store_code]

  field :store_code, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.ItemAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_id: String.t(),
          merchant_id: Google.Protobuf.Int64Value.t() | nil,
          country_code: String.t(),
          language_code: String.t(),
          quantity: integer
        }

  defstruct [:item_id, :merchant_id, :country_code, :language_code, :quantity]

  field :item_id, 1, type: :string
  field :merchant_id, 2, type: Google.Protobuf.Int64Value
  field :country_code, 3, type: :string
  field :language_code, 4, type: :string
  field :quantity, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_identifiers: [Google.Ads.Googleads.V8.Common.UserIdentifier.t()],
          transaction_attribute: Google.Ads.Googleads.V8.Common.TransactionAttribute.t() | nil,
          user_attribute: Google.Ads.Googleads.V8.Common.UserAttribute.t() | nil
        }

  defstruct [:user_identifiers, :transaction_attribute, :user_attribute]

  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.UserIdentifier
  field :transaction_attribute, 2, type: Google.Ads.Googleads.V8.Common.TransactionAttribute
  field :user_attribute, 3, type: Google.Ads.Googleads.V8.Common.UserAttribute
end

defmodule Google.Ads.Googleads.V8.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lifetime_value_micros: Google.Protobuf.Int64Value.t() | nil,
          lifetime_value_bucket: Google.Protobuf.Int32Value.t() | nil,
          last_purchase_date_time: String.t(),
          average_purchase_count: integer,
          average_purchase_value_micros: integer,
          acquisition_date_time: String.t()
        }

  defstruct [
    :lifetime_value_micros,
    :lifetime_value_bucket,
    :last_purchase_date_time,
    :average_purchase_count,
    :average_purchase_value_micros,
    :acquisition_date_time
  ]

  field :lifetime_value_micros, 1, type: Google.Protobuf.Int64Value
  field :lifetime_value_bucket, 2, type: Google.Protobuf.Int32Value
  field :last_purchase_date_time, 3, type: :string
  field :average_purchase_count, 4, type: :int32
  field :average_purchase_value_micros, 5, type: :int64
  field :acquisition_date_time, 6, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:user_list]

  field :user_list, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          loyalty_fraction: Google.Protobuf.DoubleValue.t() | nil,
          transaction_upload_fraction: Google.Protobuf.DoubleValue.t() | nil,
          custom_key: Google.Protobuf.StringValue.t() | nil,
          third_party_metadata:
            Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata.t() | nil
        }

  defstruct [:loyalty_fraction, :transaction_upload_fraction, :custom_key, :third_party_metadata]

  field :loyalty_fraction, 5, type: Google.Protobuf.DoubleValue
  field :transaction_upload_fraction, 6, type: Google.Protobuf.DoubleValue
  field :custom_key, 7, type: Google.Protobuf.StringValue

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          advertiser_upload_date_time: Google.Protobuf.StringValue.t() | nil,
          valid_transaction_fraction: Google.Protobuf.DoubleValue.t() | nil,
          partner_match_fraction: Google.Protobuf.DoubleValue.t() | nil,
          partner_upload_fraction: Google.Protobuf.DoubleValue.t() | nil,
          bridge_map_version_id: Google.Protobuf.StringValue.t() | nil,
          partner_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :advertiser_upload_date_time,
    :valid_transaction_fraction,
    :partner_match_fraction,
    :partner_upload_fraction,
    :bridge_map_version_id,
    :partner_id
  ]

  field :advertiser_upload_date_time, 7, type: Google.Protobuf.StringValue
  field :valid_transaction_fraction, 8, type: Google.Protobuf.DoubleValue
  field :partner_match_fraction, 9, type: Google.Protobuf.DoubleValue
  field :partner_upload_fraction, 10, type: Google.Protobuf.DoubleValue
  field :bridge_map_version_id, 11, type: Google.Protobuf.StringValue
  field :partner_id, 12, type: Google.Protobuf.Int64Value
end
