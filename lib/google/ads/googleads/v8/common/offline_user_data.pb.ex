defmodule Google.Ads.Googleads.V8.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          hashed_first_name: String.t(),
          hashed_last_name: String.t(),
          city: String.t(),
          state: String.t(),
          country_code: String.t(),
          postal_code: String.t()
        }

  defstruct [:hashed_first_name, :hashed_last_name, :city, :state, :country_code, :postal_code]

  field :hashed_first_name, 7, optional: true, type: :string
  field :hashed_last_name, 8, optional: true, type: :string
  field :city, 9, optional: true, type: :string
  field :state, 10, optional: true, type: :string
  field :country_code, 11, optional: true, type: :string
  field :postal_code, 12, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          identifier: {atom, any},
          user_identifier_source:
            Google.Ads.Googleads.V8.Enums.UserIdentifierSourceEnum.UserIdentifierSource.t()
        }

  defstruct [:identifier, :user_identifier_source]

  oneof :identifier, 0

  field :user_identifier_source, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    enum: true

  field :hashed_email, 7, optional: true, type: :string, oneof: 0
  field :hashed_phone_number, 8, optional: true, type: :string, oneof: 0
  field :mobile_id, 9, optional: true, type: :string, oneof: 0
  field :third_party_user_id, 10, optional: true, type: :string, oneof: 0

  field :address_info, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.OfflineUserAddressInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          transaction_date_time: String.t(),
          transaction_amount_micros: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          conversion_action: String.t(),
          order_id: String.t(),
          store_attribute: Google.Ads.Googleads.V8.Common.StoreAttribute.t() | nil,
          custom_value: String.t(),
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

  field :transaction_date_time, 8, optional: true, type: :string
  field :transaction_amount_micros, 9, optional: true, type: :double
  field :currency_code, 10, optional: true, type: :string
  field :conversion_action, 11, optional: true, type: :string
  field :order_id, 12, optional: true, type: :string
  field :store_attribute, 6, optional: true, type: Google.Ads.Googleads.V8.Common.StoreAttribute
  field :custom_value, 13, optional: true, type: :string
  field :item_attribute, 14, optional: true, type: Google.Ads.Googleads.V8.Common.ItemAttribute
end

defmodule Google.Ads.Googleads.V8.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          store_code: String.t()
        }

  defstruct [:store_code]

  field :store_code, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ItemAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          item_id: String.t(),
          merchant_id: integer,
          country_code: String.t(),
          language_code: String.t(),
          quantity: integer
        }

  defstruct [:item_id, :merchant_id, :country_code, :language_code, :quantity]

  field :item_id, 1, optional: true, type: :string
  field :merchant_id, 2, optional: true, type: :int64
  field :country_code, 3, optional: true, type: :string
  field :language_code, 4, optional: true, type: :string
  field :quantity, 5, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          user_identifiers: [Google.Ads.Googleads.V8.Common.UserIdentifier.t()],
          transaction_attribute: Google.Ads.Googleads.V8.Common.TransactionAttribute.t() | nil,
          user_attribute: Google.Ads.Googleads.V8.Common.UserAttribute.t() | nil
        }

  defstruct [:user_identifiers, :transaction_attribute, :user_attribute]

  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.UserIdentifier

  field :transaction_attribute, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TransactionAttribute

  field :user_attribute, 3, optional: true, type: Google.Ads.Googleads.V8.Common.UserAttribute
end

defmodule Google.Ads.Googleads.V8.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          lifetime_value_micros: integer,
          lifetime_value_bucket: integer,
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

  field :lifetime_value_micros, 1, optional: true, type: :int64
  field :lifetime_value_bucket, 2, optional: true, type: :int32
  field :last_purchase_date_time, 3, optional: true, type: :string
  field :average_purchase_count, 4, optional: true, type: :int32
  field :average_purchase_value_micros, 5, optional: true, type: :int64
  field :acquisition_date_time, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct [:user_list]

  field :user_list, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          loyalty_fraction: float | :infinity | :negative_infinity | :nan,
          transaction_upload_fraction: float | :infinity | :negative_infinity | :nan,
          custom_key: String.t(),
          third_party_metadata:
            Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata.t() | nil
        }

  defstruct [:loyalty_fraction, :transaction_upload_fraction, :custom_key, :third_party_metadata]

  field :loyalty_fraction, 5, optional: true, type: :double
  field :transaction_upload_fraction, 6, optional: true, type: :double
  field :custom_key, 7, optional: true, type: :string

  field :third_party_metadata, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          advertiser_upload_date_time: String.t(),
          valid_transaction_fraction: float | :infinity | :negative_infinity | :nan,
          partner_match_fraction: float | :infinity | :negative_infinity | :nan,
          partner_upload_fraction: float | :infinity | :negative_infinity | :nan,
          bridge_map_version_id: String.t(),
          partner_id: integer
        }

  defstruct [
    :advertiser_upload_date_time,
    :valid_transaction_fraction,
    :partner_match_fraction,
    :partner_upload_fraction,
    :bridge_map_version_id,
    :partner_id
  ]

  field :advertiser_upload_date_time, 7, optional: true, type: :string
  field :valid_transaction_fraction, 8, optional: true, type: :double
  field :partner_match_fraction, 9, optional: true, type: :double
  field :partner_upload_fraction, 10, optional: true, type: :double
  field :bridge_map_version_id, 11, optional: true, type: :string
  field :partner_id, 12, optional: true, type: :int64
end
