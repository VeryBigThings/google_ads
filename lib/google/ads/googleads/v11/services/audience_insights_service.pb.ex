defmodule Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          baseline_audience: Google.Ads.Googleads.V11.Services.BasicInsightsAudience.t() | nil,
          specific_audience: Google.Ads.Googleads.V11.Services.BasicInsightsAudience.t() | nil,
          customer_insights_group: String.t()
        }

  defstruct customer_id: "",
            baseline_audience: nil,
            specific_audience: nil,
            customer_insights_group: ""

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :baseline_audience, 2,
    type: Google.Ads.Googleads.V11.Services.BasicInsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :specific_audience, 3,
    type: Google.Ads.Googleads.V11.Services.BasicInsightsAudience,
    json_name: "specificAudience",
    deprecated: false

  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"
end
defmodule Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          saved_report_url: String.t()
        }

  defstruct saved_report_url: ""

  field :saved_report_url, 1, type: :string, json_name: "savedReportUrl"
end
defmodule Google.Ads.Googleads.V11.Services.GenerateAudienceCompositionInsightsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          audience: Google.Ads.Googleads.V11.Services.InsightsAudience.t() | nil,
          data_month: String.t(),
          dimensions: [
            Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension.t()
          ],
          customer_insights_group: String.t()
        }

  defstruct customer_id: "",
            audience: nil,
            data_month: "",
            dimensions: [],
            customer_insights_group: ""

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :audience, 2, type: Google.Ads.Googleads.V11.Services.InsightsAudience, deprecated: false
  field :data_month, 3, type: :string, json_name: "dataMonth"

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :customer_insights_group, 5, type: :string, json_name: "customerInsightsGroup"
end
defmodule Google.Ads.Googleads.V11.Services.GenerateAudienceCompositionInsightsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sections: [Google.Ads.Googleads.V11.Services.AudienceCompositionSection.t()]
        }

  defstruct sections: []

  field :sections, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceCompositionSection
end
defmodule Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          dimensions: [
            Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension.t()
          ],
          query_text: String.t(),
          customer_insights_group: String.t()
        }

  defstruct customer_id: "",
            dimensions: [],
            query_text: "",
            customer_insights_group: ""

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :dimensions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :query_text, 3, type: :string, json_name: "queryText", deprecated: false
  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"
end
defmodule Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes: [Google.Ads.Googleads.V11.Services.AudienceInsightsAttributeMetadata.t()]
        }

  defstruct attributes: []

  field :attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceInsightsAttributeMetadata
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attribute:
            {:age_range, Google.Ads.Googleads.V11.Common.AgeRangeInfo.t() | nil}
            | {:gender, Google.Ads.Googleads.V11.Common.GenderInfo.t() | nil}
            | {:location, Google.Ads.Googleads.V11.Common.LocationInfo.t() | nil}
            | {:user_interest, Google.Ads.Googleads.V11.Common.UserInterestInfo.t() | nil}
            | {:entity, Google.Ads.Googleads.V11.Services.AudienceInsightsEntity.t() | nil}
            | {:category, Google.Ads.Googleads.V11.Services.AudienceInsightsCategory.t() | nil}
            | {:dynamic_lineup,
               Google.Ads.Googleads.V11.Services.AudienceInsightsDynamicLineup.t() | nil}
            | {:parental_status, Google.Ads.Googleads.V11.Common.ParentalStatusInfo.t() | nil}
            | {:income_range, Google.Ads.Googleads.V11.Common.IncomeRangeInfo.t() | nil}
            | {:youtube_channel, Google.Ads.Googleads.V11.Common.YouTubeChannelInfo.t() | nil}
        }

  defstruct attribute: nil

  oneof :attribute, 0

  field :age_range, 1,
    type: Google.Ads.Googleads.V11.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0

  field :gender, 2, type: Google.Ads.Googleads.V11.Common.GenderInfo, oneof: 0
  field :location, 3, type: Google.Ads.Googleads.V11.Common.LocationInfo, oneof: 0

  field :user_interest, 4,
    type: Google.Ads.Googleads.V11.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0

  field :entity, 5, type: Google.Ads.Googleads.V11.Services.AudienceInsightsEntity, oneof: 0
  field :category, 6, type: Google.Ads.Googleads.V11.Services.AudienceInsightsCategory, oneof: 0

  field :dynamic_lineup, 7,
    type: Google.Ads.Googleads.V11.Services.AudienceInsightsDynamicLineup,
    json_name: "dynamicLineup",
    oneof: 0

  field :parental_status, 8,
    type: Google.Ads.Googleads.V11.Common.ParentalStatusInfo,
    json_name: "parentalStatus",
    oneof: 0

  field :income_range, 9,
    type: Google.Ads.Googleads.V11.Common.IncomeRangeInfo,
    json_name: "incomeRange",
    oneof: 0

  field :youtube_channel, 10,
    type: Google.Ads.Googleads.V11.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsTopic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic:
            {:entity, Google.Ads.Googleads.V11.Services.AudienceInsightsEntity.t() | nil}
            | {:category, Google.Ads.Googleads.V11.Services.AudienceInsightsCategory.t() | nil}
        }

  defstruct topic: nil

  oneof :topic, 0

  field :entity, 1, type: Google.Ads.Googleads.V11.Services.AudienceInsightsEntity, oneof: 0
  field :category, 2, type: Google.Ads.Googleads.V11.Services.AudienceInsightsCategory, oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsEntity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          knowledge_graph_machine_id: String.t()
        }

  defstruct knowledge_graph_machine_id: ""

  field :knowledge_graph_machine_id, 1,
    type: :string,
    json_name: "knowledgeGraphMachineId",
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category_id: String.t()
        }

  defstruct category_id: ""

  field :category_id, 1, type: :string, json_name: "categoryId", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsDynamicLineup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dynamic_lineup_id: String.t()
        }

  defstruct dynamic_lineup_id: ""

  field :dynamic_lineup_id, 1, type: :string, json_name: "dynamicLineupId", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.BasicInsightsAudience do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_location: [Google.Ads.Googleads.V11.Common.LocationInfo.t()],
          sub_country_locations: [Google.Ads.Googleads.V11.Common.LocationInfo.t()],
          gender: Google.Ads.Googleads.V11.Common.GenderInfo.t() | nil,
          age_ranges: [Google.Ads.Googleads.V11.Common.AgeRangeInfo.t()],
          user_interests: [Google.Ads.Googleads.V11.Common.UserInterestInfo.t()],
          topics: [Google.Ads.Googleads.V11.Services.AudienceInsightsTopic.t()]
        }

  defstruct country_location: [],
            sub_country_locations: [],
            gender: nil,
            age_ranges: [],
            user_interests: [],
            topics: []

  field :country_location, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V11.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :user_interests, 5,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserInterestInfo,
    json_name: "userInterests"

  field :topics, 6, repeated: true, type: Google.Ads.Googleads.V11.Services.AudienceInsightsTopic
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsAttributeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_metadata:
            {:youtube_channel_metadata,
             Google.Ads.Googleads.V11.Services.YouTubeChannelAttributeMetadata.t() | nil}
            | {:dynamic_attribute_metadata,
               Google.Ads.Googleads.V11.Services.DynamicLineupAttributeMetadata.t() | nil},
          dimension:
            Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension.t(),
          attribute: Google.Ads.Googleads.V11.Services.AudienceInsightsAttribute.t() | nil,
          display_name: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          display_info: String.t()
        }

  defstruct dimension_metadata: nil,
            dimension: :UNSPECIFIED,
            attribute: nil,
            display_name: "",
            score: 0.0,
            display_info: ""

  oneof :dimension_metadata, 0

  field :dimension, 1,
    type: Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :attribute, 2, type: Google.Ads.Googleads.V11.Services.AudienceInsightsAttribute
  field :display_name, 3, type: :string, json_name: "displayName"
  field :score, 4, type: :double
  field :display_info, 5, type: :string, json_name: "displayInfo"

  field :youtube_channel_metadata, 6,
    type: Google.Ads.Googleads.V11.Services.YouTubeChannelAttributeMetadata,
    json_name: "youtubeChannelMetadata",
    oneof: 0

  field :dynamic_attribute_metadata, 7,
    type: Google.Ads.Googleads.V11.Services.DynamicLineupAttributeMetadata,
    json_name: "dynamicAttributeMetadata",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.YouTubeChannelAttributeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriber_count: integer
        }

  defstruct subscriber_count: 0

  field :subscriber_count, 1, type: :int64, json_name: "subscriberCount"
end
defmodule Google.Ads.Googleads.V11.Services.DynamicLineupAttributeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inventory_country: Google.Ads.Googleads.V11.Common.LocationInfo.t() | nil,
          median_monthly_inventory: integer,
          channel_count_lower_bound: integer,
          channel_count_upper_bound: integer
        }

  defstruct inventory_country: nil,
            median_monthly_inventory: 0,
            channel_count_lower_bound: 0,
            channel_count_upper_bound: 0

  field :inventory_country, 1,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    json_name: "inventoryCountry"

  field :median_monthly_inventory, 2, type: :int64, json_name: "medianMonthlyInventory"
  field :channel_count_lower_bound, 3, type: :int64, json_name: "channelCountLowerBound"
  field :channel_count_upper_bound, 4, type: :int64, json_name: "channelCountUpperBound"
end
defmodule Google.Ads.Googleads.V11.Services.InsightsAudience do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_locations: [Google.Ads.Googleads.V11.Common.LocationInfo.t()],
          sub_country_locations: [Google.Ads.Googleads.V11.Common.LocationInfo.t()],
          gender: Google.Ads.Googleads.V11.Common.GenderInfo.t() | nil,
          age_ranges: [Google.Ads.Googleads.V11.Common.AgeRangeInfo.t()],
          parental_status: Google.Ads.Googleads.V11.Common.ParentalStatusInfo.t() | nil,
          income_ranges: [Google.Ads.Googleads.V11.Common.IncomeRangeInfo.t()],
          dynamic_lineups: [Google.Ads.Googleads.V11.Services.AudienceInsightsDynamicLineup.t()],
          topic_audience_combinations: [
            Google.Ads.Googleads.V11.Services.InsightsAudienceAttributeGroup.t()
          ]
        }

  defstruct country_locations: [],
            sub_country_locations: [],
            gender: nil,
            age_ranges: [],
            parental_status: nil,
            income_ranges: [],
            dynamic_lineups: [],
            topic_audience_combinations: []

  field :country_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V11.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :parental_status, 5,
    type: Google.Ads.Googleads.V11.Common.ParentalStatusInfo,
    json_name: "parentalStatus"

  field :income_ranges, 6,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.IncomeRangeInfo,
    json_name: "incomeRanges"

  field :dynamic_lineups, 7,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceInsightsDynamicLineup,
    json_name: "dynamicLineups"

  field :topic_audience_combinations, 8,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.InsightsAudienceAttributeGroup,
    json_name: "topicAudienceCombinations"
end
defmodule Google.Ads.Googleads.V11.Services.InsightsAudienceAttributeGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes: [Google.Ads.Googleads.V11.Services.AudienceInsightsAttribute.t()]
        }

  defstruct attributes: []

  field :attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceInsightsAttribute,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.AudienceCompositionSection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension:
            Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension.t(),
          top_attributes: [Google.Ads.Googleads.V11.Services.AudienceCompositionAttribute.t()],
          clustered_attributes: [
            Google.Ads.Googleads.V11.Services.AudienceCompositionAttributeCluster.t()
          ]
        }

  defstruct dimension: :UNSPECIFIED,
            top_attributes: [],
            clustered_attributes: []

  field :dimension, 1,
    type: Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :top_attributes, 3,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceCompositionAttribute,
    json_name: "topAttributes"

  field :clustered_attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceCompositionAttributeCluster,
    json_name: "clusteredAttributes"
end
defmodule Google.Ads.Googleads.V11.Services.AudienceCompositionAttributeCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_display_name: String.t(),
          cluster_metrics: Google.Ads.Googleads.V11.Services.AudienceCompositionMetrics.t() | nil,
          attributes: [Google.Ads.Googleads.V11.Services.AudienceCompositionAttribute.t()]
        }

  defstruct cluster_display_name: "",
            cluster_metrics: nil,
            attributes: []

  field :cluster_display_name, 1, type: :string, json_name: "clusterDisplayName"

  field :cluster_metrics, 3,
    type: Google.Ads.Googleads.V11.Services.AudienceCompositionMetrics,
    json_name: "clusterMetrics"

  field :attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceCompositionAttribute
end
defmodule Google.Ads.Googleads.V11.Services.AudienceCompositionMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          baseline_audience_share: float | :infinity | :negative_infinity | :nan,
          audience_share: float | :infinity | :negative_infinity | :nan,
          index: float | :infinity | :negative_infinity | :nan,
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct baseline_audience_share: 0.0,
            audience_share: 0.0,
            index: 0.0,
            score: 0.0

  field :baseline_audience_share, 1, type: :double, json_name: "baselineAudienceShare"
  field :audience_share, 2, type: :double, json_name: "audienceShare"
  field :index, 3, type: :double
  field :score, 4, type: :double
end
defmodule Google.Ads.Googleads.V11.Services.AudienceCompositionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attribute_metadata:
            Google.Ads.Googleads.V11.Services.AudienceInsightsAttributeMetadata.t() | nil,
          metrics: Google.Ads.Googleads.V11.Services.AudienceCompositionMetrics.t() | nil
        }

  defstruct attribute_metadata: nil,
            metrics: nil

  field :attribute_metadata, 1,
    type: Google.Ads.Googleads.V11.Services.AudienceInsightsAttributeMetadata,
    json_name: "attributeMetadata"

  field :metrics, 2, type: Google.Ads.Googleads.V11.Services.AudienceCompositionMetrics
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.AudienceInsightsService"

  rpc :GenerateInsightsFinderReport,
      Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportRequest,
      Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportResponse

  rpc :ListAudienceInsightsAttributes,
      Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesRequest,
      Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesResponse

  rpc :GenerateAudienceCompositionInsights,
      Google.Ads.Googleads.V11.Services.GenerateAudienceCompositionInsightsRequest,
      Google.Ads.Googleads.V11.Services.GenerateAudienceCompositionInsightsResponse
end

defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.AudienceInsightsService.Service
end
