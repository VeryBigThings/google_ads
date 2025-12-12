defmodule Google.Ads.Googleads.V7.Resources.FeedAttributeOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADD, 2
end

defmodule Google.Ads.Googleads.V7.Resources.Feed.PlacesLocationFeedData.OAuthInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :http_method, 4, type: :string
  field :http_request_url, 5, type: :string
  field :http_authorization_header, 6, type: :string
end

defmodule Google.Ads.Googleads.V7.Resources.Feed.PlacesLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :oauth_info, 1,
    type: Google.Ads.Googleads.V7.Resources.Feed.PlacesLocationFeedData.OAuthInfo

  field :email_address, 7, type: :string
  field :business_account_id, 8, type: :string
  field :business_name_filter, 9, type: :string
  field :category_filters, 11, repeated: true, type: :string
  field :label_filters, 12, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Resources.Feed.AffiliateLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :chain_ids, 3, repeated: true, type: :int64

  field :relationship_type, 2,
    type:
      Google.Ads.Googleads.V7.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Resources.Feed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :system_feed_generation_data, 0

  field :resource_name, 1, type: :string
  field :id, 11, type: :int64
  field :name, 12, type: :string
  field :attributes, 4, repeated: true, type: Google.Ads.Googleads.V7.Resources.FeedAttribute

  field :attribute_operations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V7.Resources.FeedAttributeOperation

  field :origin, 5, type: Google.Ads.Googleads.V7.Enums.FeedOriginEnum.FeedOrigin, enum: true
  field :status, 8, type: Google.Ads.Googleads.V7.Enums.FeedStatusEnum.FeedStatus, enum: true

  field :places_location_feed_data, 6,
    type: Google.Ads.Googleads.V7.Resources.Feed.PlacesLocationFeedData,
    oneof: 0

  field :affiliate_location_feed_data, 7,
    type: Google.Ads.Googleads.V7.Resources.Feed.AffiliateLocationFeedData,
    oneof: 0
end

defmodule Google.Ads.Googleads.V7.Resources.FeedAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :id, 5, type: :int64
  field :name, 6, type: :string

  field :type, 3,
    type: Google.Ads.Googleads.V7.Enums.FeedAttributeTypeEnum.FeedAttributeType,
    enum: true

  field :is_part_of_key, 7, type: :bool
end

defmodule Google.Ads.Googleads.V7.Resources.FeedAttributeOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :operator, 1,
    type: Google.Ads.Googleads.V7.Resources.FeedAttributeOperation.Operator,
    enum: true

  field :value, 2, type: Google.Ads.Googleads.V7.Resources.FeedAttribute
end
