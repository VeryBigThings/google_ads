defmodule Google.Ads.Googleads.V8.Resources.FeedAttributeOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADD

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ADD, 2
end

defmodule Google.Ads.Googleads.V8.Resources.Feed.PlacesLocationFeedData.OAuthInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: Google.Protobuf.StringValue.t() | nil,
          http_request_url: Google.Protobuf.StringValue.t() | nil,
          http_authorization_header: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:http_method, :http_request_url, :http_authorization_header]

  field :http_method, 4, type: Google.Protobuf.StringValue
  field :http_request_url, 5, type: Google.Protobuf.StringValue
  field :http_authorization_header, 6, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Resources.Feed.PlacesLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oauth_info:
            Google.Ads.Googleads.V8.Resources.Feed.PlacesLocationFeedData.OAuthInfo.t() | nil,
          email_address: Google.Protobuf.StringValue.t() | nil,
          business_account_id: String.t(),
          business_name_filter: Google.Protobuf.StringValue.t() | nil,
          category_filters: [String.t()],
          label_filters: [String.t()]
        }

  defstruct [
    :oauth_info,
    :email_address,
    :business_account_id,
    :business_name_filter,
    :category_filters,
    :label_filters
  ]

  field :oauth_info, 1,
    type: Google.Ads.Googleads.V8.Resources.Feed.PlacesLocationFeedData.OAuthInfo

  field :email_address, 7, type: Google.Protobuf.StringValue
  field :business_account_id, 8, type: :string
  field :business_name_filter, 9, type: Google.Protobuf.StringValue
  field :category_filters, 11, repeated: true, type: :string
  field :label_filters, 12, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.Feed.AffiliateLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          chain_ids: [integer],
          relationship_type:
            Google.Ads.Googleads.V8.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType.t()
        }

  defstruct [:chain_ids, :relationship_type]

  field :chain_ids, 3, repeated: true, type: :int64

  field :relationship_type, 2,
    type:
      Google.Ads.Googleads.V8.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.Feed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system_feed_generation_data: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          attributes: [Google.Ads.Googleads.V8.Resources.FeedAttribute.t()],
          attribute_operations: [Google.Ads.Googleads.V8.Resources.FeedAttributeOperation.t()],
          origin: Google.Ads.Googleads.V8.Enums.FeedOriginEnum.FeedOrigin.t(),
          status: Google.Ads.Googleads.V8.Enums.FeedStatusEnum.FeedStatus.t()
        }

  defstruct [
    :system_feed_generation_data,
    :resource_name,
    :id,
    :name,
    :attributes,
    :attribute_operations,
    :origin,
    :status
  ]

  oneof :system_feed_generation_data, 0
  field :resource_name, 1, type: :string
  field :id, 11, type: Google.Protobuf.Int64Value
  field :name, 12, type: Google.Protobuf.StringValue
  field :attributes, 4, repeated: true, type: Google.Ads.Googleads.V8.Resources.FeedAttribute

  field :attribute_operations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.FeedAttributeOperation

  field :origin, 5, type: Google.Ads.Googleads.V8.Enums.FeedOriginEnum.FeedOrigin, enum: true
  field :status, 8, type: Google.Ads.Googleads.V8.Enums.FeedStatusEnum.FeedStatus, enum: true

  field :places_location_feed_data, 6,
    type: Google.Ads.Googleads.V8.Resources.Feed.PlacesLocationFeedData,
    oneof: 0

  field :affiliate_location_feed_data, 7,
    type: Google.Ads.Googleads.V8.Resources.Feed.AffiliateLocationFeedData,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Resources.FeedAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.FeedAttributeTypeEnum.FeedAttributeType.t(),
          is_part_of_key: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:id, :name, :type, :is_part_of_key]

  field :id, 5, type: Google.Protobuf.Int64Value
  field :name, 6, type: Google.Protobuf.StringValue

  field :type, 3,
    type: Google.Ads.Googleads.V8.Enums.FeedAttributeTypeEnum.FeedAttributeType,
    enum: true

  field :is_part_of_key, 7, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V8.Resources.FeedAttributeOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator: Google.Ads.Googleads.V8.Resources.FeedAttributeOperation.Operator.t(),
          value: Google.Ads.Googleads.V8.Resources.FeedAttribute.t() | nil
        }

  defstruct [:operator, :value]

  field :operator, 1,
    type: Google.Ads.Googleads.V8.Resources.FeedAttributeOperation.Operator,
    enum: true

  field :value, 2, type: Google.Ads.Googleads.V8.Resources.FeedAttribute
end
