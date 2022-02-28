defmodule Google.Ads.Googleads.V10.Resources.FeedMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:placeholder_type,
             Google.Ads.Googleads.V10.Enums.PlaceholderTypeEnum.PlaceholderType.t()}
            | {:criterion_type,
               Google.Ads.Googleads.V10.Enums.FeedMappingCriterionTypeEnum.FeedMappingCriterionType.t()},
          resource_name: String.t(),
          feed: String.t(),
          attribute_field_mappings: [Google.Ads.Googleads.V10.Resources.AttributeFieldMapping.t()],
          status: Google.Ads.Googleads.V10.Enums.FeedMappingStatusEnum.FeedMappingStatus.t()
        }

  defstruct target: nil,
            resource_name: "",
            feed: "",
            attribute_field_mappings: [],
            status: :UNSPECIFIED

  oneof :target, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 7, type: :string, deprecated: false

  field :attribute_field_mappings, 5,
    repeated: true,
    type: Google.Ads.Googleads.V10.Resources.AttributeFieldMapping,
    json_name: "attributeFieldMappings",
    deprecated: false

  field :status, 6,
    type: Google.Ads.Googleads.V10.Enums.FeedMappingStatusEnum.FeedMappingStatus,
    enum: true,
    deprecated: false

  field :placeholder_type, 3,
    type: Google.Ads.Googleads.V10.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :criterion_type, 4,
    type: Google.Ads.Googleads.V10.Enums.FeedMappingCriterionTypeEnum.FeedMappingCriterionType,
    json_name: "criterionType",
    enum: true,
    oneof: 0,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AttributeFieldMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field:
            {:sitelink_field,
             Google.Ads.Googleads.V10.Enums.SitelinkPlaceholderFieldEnum.SitelinkPlaceholderField.t()}
            | {:call_field,
               Google.Ads.Googleads.V10.Enums.CallPlaceholderFieldEnum.CallPlaceholderField.t()}
            | {:app_field,
               Google.Ads.Googleads.V10.Enums.AppPlaceholderFieldEnum.AppPlaceholderField.t()}
            | {:location_field,
               Google.Ads.Googleads.V10.Enums.LocationPlaceholderFieldEnum.LocationPlaceholderField.t()}
            | {:affiliate_location_field,
               Google.Ads.Googleads.V10.Enums.AffiliateLocationPlaceholderFieldEnum.AffiliateLocationPlaceholderField.t()}
            | {:callout_field,
               Google.Ads.Googleads.V10.Enums.CalloutPlaceholderFieldEnum.CalloutPlaceholderField.t()}
            | {:structured_snippet_field,
               Google.Ads.Googleads.V10.Enums.StructuredSnippetPlaceholderFieldEnum.StructuredSnippetPlaceholderField.t()}
            | {:message_field,
               Google.Ads.Googleads.V10.Enums.MessagePlaceholderFieldEnum.MessagePlaceholderField.t()}
            | {:price_field,
               Google.Ads.Googleads.V10.Enums.PricePlaceholderFieldEnum.PricePlaceholderField.t()}
            | {:promotion_field,
               Google.Ads.Googleads.V10.Enums.PromotionPlaceholderFieldEnum.PromotionPlaceholderField.t()}
            | {:ad_customizer_field,
               Google.Ads.Googleads.V10.Enums.AdCustomizerPlaceholderFieldEnum.AdCustomizerPlaceholderField.t()}
            | {:dsa_page_feed_field,
               Google.Ads.Googleads.V10.Enums.DsaPageFeedCriterionFieldEnum.DsaPageFeedCriterionField.t()}
            | {:location_extension_targeting_field,
               Google.Ads.Googleads.V10.Enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField.t()}
            | {:education_field,
               Google.Ads.Googleads.V10.Enums.EducationPlaceholderFieldEnum.EducationPlaceholderField.t()}
            | {:flight_field,
               Google.Ads.Googleads.V10.Enums.FlightPlaceholderFieldEnum.FlightPlaceholderField.t()}
            | {:custom_field,
               Google.Ads.Googleads.V10.Enums.CustomPlaceholderFieldEnum.CustomPlaceholderField.t()}
            | {:hotel_field,
               Google.Ads.Googleads.V10.Enums.HotelPlaceholderFieldEnum.HotelPlaceholderField.t()}
            | {:real_estate_field,
               Google.Ads.Googleads.V10.Enums.RealEstatePlaceholderFieldEnum.RealEstatePlaceholderField.t()}
            | {:travel_field,
               Google.Ads.Googleads.V10.Enums.TravelPlaceholderFieldEnum.TravelPlaceholderField.t()}
            | {:local_field,
               Google.Ads.Googleads.V10.Enums.LocalPlaceholderFieldEnum.LocalPlaceholderField.t()}
            | {:job_field,
               Google.Ads.Googleads.V10.Enums.JobPlaceholderFieldEnum.JobPlaceholderField.t()}
            | {:image_field,
               Google.Ads.Googleads.V10.Enums.ImagePlaceholderFieldEnum.ImagePlaceholderField.t()},
          feed_attribute_id: integer,
          field_id: integer
        }

  defstruct field: nil,
            feed_attribute_id: 0,
            field_id: 0

  oneof :field, 0

  field :feed_attribute_id, 24, type: :int64, json_name: "feedAttributeId", deprecated: false
  field :field_id, 25, type: :int64, json_name: "fieldId", deprecated: false

  field :sitelink_field, 3,
    type: Google.Ads.Googleads.V10.Enums.SitelinkPlaceholderFieldEnum.SitelinkPlaceholderField,
    json_name: "sitelinkField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :call_field, 4,
    type: Google.Ads.Googleads.V10.Enums.CallPlaceholderFieldEnum.CallPlaceholderField,
    json_name: "callField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :app_field, 5,
    type: Google.Ads.Googleads.V10.Enums.AppPlaceholderFieldEnum.AppPlaceholderField,
    json_name: "appField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :location_field, 6,
    type: Google.Ads.Googleads.V10.Enums.LocationPlaceholderFieldEnum.LocationPlaceholderField,
    json_name: "locationField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :affiliate_location_field, 7,
    type:
      Google.Ads.Googleads.V10.Enums.AffiliateLocationPlaceholderFieldEnum.AffiliateLocationPlaceholderField,
    json_name: "affiliateLocationField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :callout_field, 8,
    type: Google.Ads.Googleads.V10.Enums.CalloutPlaceholderFieldEnum.CalloutPlaceholderField,
    json_name: "calloutField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :structured_snippet_field, 9,
    type:
      Google.Ads.Googleads.V10.Enums.StructuredSnippetPlaceholderFieldEnum.StructuredSnippetPlaceholderField,
    json_name: "structuredSnippetField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :message_field, 10,
    type: Google.Ads.Googleads.V10.Enums.MessagePlaceholderFieldEnum.MessagePlaceholderField,
    json_name: "messageField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :price_field, 11,
    type: Google.Ads.Googleads.V10.Enums.PricePlaceholderFieldEnum.PricePlaceholderField,
    json_name: "priceField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :promotion_field, 12,
    type: Google.Ads.Googleads.V10.Enums.PromotionPlaceholderFieldEnum.PromotionPlaceholderField,
    json_name: "promotionField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :ad_customizer_field, 13,
    type:
      Google.Ads.Googleads.V10.Enums.AdCustomizerPlaceholderFieldEnum.AdCustomizerPlaceholderField,
    json_name: "adCustomizerField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :dsa_page_feed_field, 14,
    type: Google.Ads.Googleads.V10.Enums.DsaPageFeedCriterionFieldEnum.DsaPageFeedCriterionField,
    json_name: "dsaPageFeedField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :location_extension_targeting_field, 15,
    type:
      Google.Ads.Googleads.V10.Enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField,
    json_name: "locationExtensionTargetingField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :education_field, 16,
    type: Google.Ads.Googleads.V10.Enums.EducationPlaceholderFieldEnum.EducationPlaceholderField,
    json_name: "educationField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :flight_field, 17,
    type: Google.Ads.Googleads.V10.Enums.FlightPlaceholderFieldEnum.FlightPlaceholderField,
    json_name: "flightField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :custom_field, 18,
    type: Google.Ads.Googleads.V10.Enums.CustomPlaceholderFieldEnum.CustomPlaceholderField,
    json_name: "customField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :hotel_field, 19,
    type: Google.Ads.Googleads.V10.Enums.HotelPlaceholderFieldEnum.HotelPlaceholderField,
    json_name: "hotelField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :real_estate_field, 20,
    type:
      Google.Ads.Googleads.V10.Enums.RealEstatePlaceholderFieldEnum.RealEstatePlaceholderField,
    json_name: "realEstateField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :travel_field, 21,
    type: Google.Ads.Googleads.V10.Enums.TravelPlaceholderFieldEnum.TravelPlaceholderField,
    json_name: "travelField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :local_field, 22,
    type: Google.Ads.Googleads.V10.Enums.LocalPlaceholderFieldEnum.LocalPlaceholderField,
    json_name: "localField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :job_field, 23,
    type: Google.Ads.Googleads.V10.Enums.JobPlaceholderFieldEnum.JobPlaceholderField,
    json_name: "jobField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :image_field, 26,
    type: Google.Ads.Googleads.V10.Enums.ImagePlaceholderFieldEnum.ImagePlaceholderField,
    json_name: "imageField",
    enum: true,
    oneof: 0,
    deprecated: false
end