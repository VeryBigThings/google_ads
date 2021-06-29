defmodule Google.Ads.Googleads.V8.Resources.FeedMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          resource_name: String.t(),
          feed: String.t(),
          attribute_field_mappings: [Google.Ads.Googleads.V8.Resources.AttributeFieldMapping.t()],
          status: Google.Ads.Googleads.V8.Enums.FeedMappingStatusEnum.FeedMappingStatus.t()
        }

  defstruct [:target, :resource_name, :feed, :attribute_field_mappings, :status]

  oneof :target, 0

  field :resource_name, 1, type: :string
  field :feed, 7, type: :string

  field :attribute_field_mappings, 5,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.AttributeFieldMapping

  field :status, 6,
    type: Google.Ads.Googleads.V8.Enums.FeedMappingStatusEnum.FeedMappingStatus,
    enum: true

  field :placeholder_type, 3,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true,
    oneof: 0

  field :criterion_type, 4,
    type: Google.Ads.Googleads.V8.Enums.FeedMappingCriterionTypeEnum.FeedMappingCriterionType,
    enum: true,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Resources.AttributeFieldMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: {atom, any},
          feed_attribute_id: integer,
          field_id: integer
        }

  defstruct [:field, :feed_attribute_id, :field_id]

  oneof :field, 0

  field :feed_attribute_id, 24, type: :int64
  field :field_id, 25, type: :int64

  field :sitelink_field, 3,
    type: Google.Ads.Googleads.V8.Enums.SitelinkPlaceholderFieldEnum.SitelinkPlaceholderField,
    enum: true,
    oneof: 0

  field :call_field, 4,
    type: Google.Ads.Googleads.V8.Enums.CallPlaceholderFieldEnum.CallPlaceholderField,
    enum: true,
    oneof: 0

  field :app_field, 5,
    type: Google.Ads.Googleads.V8.Enums.AppPlaceholderFieldEnum.AppPlaceholderField,
    enum: true,
    oneof: 0

  field :location_field, 6,
    type: Google.Ads.Googleads.V8.Enums.LocationPlaceholderFieldEnum.LocationPlaceholderField,
    enum: true,
    oneof: 0

  field :affiliate_location_field, 7,
    type:
      Google.Ads.Googleads.V8.Enums.AffiliateLocationPlaceholderFieldEnum.AffiliateLocationPlaceholderField,
    enum: true,
    oneof: 0

  field :callout_field, 8,
    type: Google.Ads.Googleads.V8.Enums.CalloutPlaceholderFieldEnum.CalloutPlaceholderField,
    enum: true,
    oneof: 0

  field :structured_snippet_field, 9,
    type:
      Google.Ads.Googleads.V8.Enums.StructuredSnippetPlaceholderFieldEnum.StructuredSnippetPlaceholderField,
    enum: true,
    oneof: 0

  field :message_field, 10,
    type: Google.Ads.Googleads.V8.Enums.MessagePlaceholderFieldEnum.MessagePlaceholderField,
    enum: true,
    oneof: 0

  field :price_field, 11,
    type: Google.Ads.Googleads.V8.Enums.PricePlaceholderFieldEnum.PricePlaceholderField,
    enum: true,
    oneof: 0

  field :promotion_field, 12,
    type: Google.Ads.Googleads.V8.Enums.PromotionPlaceholderFieldEnum.PromotionPlaceholderField,
    enum: true,
    oneof: 0

  field :ad_customizer_field, 13,
    type:
      Google.Ads.Googleads.V8.Enums.AdCustomizerPlaceholderFieldEnum.AdCustomizerPlaceholderField,
    enum: true,
    oneof: 0

  field :dsa_page_feed_field, 14,
    type: Google.Ads.Googleads.V8.Enums.DsaPageFeedCriterionFieldEnum.DsaPageFeedCriterionField,
    enum: true,
    oneof: 0

  field :location_extension_targeting_field, 15,
    type:
      Google.Ads.Googleads.V8.Enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField,
    enum: true,
    oneof: 0

  field :education_field, 16,
    type: Google.Ads.Googleads.V8.Enums.EducationPlaceholderFieldEnum.EducationPlaceholderField,
    enum: true,
    oneof: 0

  field :flight_field, 17,
    type: Google.Ads.Googleads.V8.Enums.FlightPlaceholderFieldEnum.FlightPlaceholderField,
    enum: true,
    oneof: 0

  field :custom_field, 18,
    type: Google.Ads.Googleads.V8.Enums.CustomPlaceholderFieldEnum.CustomPlaceholderField,
    enum: true,
    oneof: 0

  field :hotel_field, 19,
    type: Google.Ads.Googleads.V8.Enums.HotelPlaceholderFieldEnum.HotelPlaceholderField,
    enum: true,
    oneof: 0

  field :real_estate_field, 20,
    type: Google.Ads.Googleads.V8.Enums.RealEstatePlaceholderFieldEnum.RealEstatePlaceholderField,
    enum: true,
    oneof: 0

  field :travel_field, 21,
    type: Google.Ads.Googleads.V8.Enums.TravelPlaceholderFieldEnum.TravelPlaceholderField,
    enum: true,
    oneof: 0

  field :local_field, 22,
    type: Google.Ads.Googleads.V8.Enums.LocalPlaceholderFieldEnum.LocalPlaceholderField,
    enum: true,
    oneof: 0

  field :job_field, 23,
    type: Google.Ads.Googleads.V8.Enums.JobPlaceholderFieldEnum.JobPlaceholderField,
    enum: true,
    oneof: 0

  field :image_field, 26,
    type: Google.Ads.Googleads.V8.Enums.ImagePlaceholderFieldEnum.ImagePlaceholderField,
    enum: true,
    oneof: 0
end
