defmodule Google.Ads.Googleads.V10.Common.AudienceDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension:
            {:age, Google.Ads.Googleads.V10.Common.AgeDimension.t() | nil}
            | {:gender, Google.Ads.Googleads.V10.Common.GenderDimension.t() | nil}
            | {:household_income,
               Google.Ads.Googleads.V10.Common.HouseholdIncomeDimension.t() | nil}
            | {:parental_status,
               Google.Ads.Googleads.V10.Common.ParentalStatusDimension.t() | nil}
            | {:audience_segments,
               Google.Ads.Googleads.V10.Common.AudienceSegmentDimension.t() | nil}
        }

  defstruct dimension: nil

  oneof :dimension, 0

  field :age, 1, type: Google.Ads.Googleads.V10.Common.AgeDimension, oneof: 0
  field :gender, 2, type: Google.Ads.Googleads.V10.Common.GenderDimension, oneof: 0

  field :household_income, 3,
    type: Google.Ads.Googleads.V10.Common.HouseholdIncomeDimension,
    json_name: "householdIncome",
    oneof: 0

  field :parental_status, 4,
    type: Google.Ads.Googleads.V10.Common.ParentalStatusDimension,
    json_name: "parentalStatus",
    oneof: 0

  field :audience_segments, 5,
    type: Google.Ads.Googleads.V10.Common.AudienceSegmentDimension,
    json_name: "audienceSegments",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.AudienceExclusionDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exclusions: [Google.Ads.Googleads.V10.Common.ExclusionSegment.t()]
        }

  defstruct exclusions: []

  field :exclusions, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.ExclusionSegment
end
defmodule Google.Ads.Googleads.V10.Common.ExclusionSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: {:user_list, Google.Ads.Googleads.V10.Common.UserListSegment.t() | nil}
        }

  defstruct segment: nil

  oneof :segment, 0

  field :user_list, 1,
    type: Google.Ads.Googleads.V10.Common.UserListSegment,
    json_name: "userList",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.AgeDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          age_ranges: [Google.Ads.Googleads.V10.Common.AgeSegment.t()],
          include_undetermined: boolean
        }

  defstruct age_ranges: [],
            include_undetermined: false

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AgeSegment,
    json_name: "ageRanges"

  field :include_undetermined, 2, type: :bool, json_name: "includeUndetermined"
end
defmodule Google.Ads.Googleads.V10.Common.AgeSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_age: integer,
          max_age: integer
        }

  defstruct min_age: 0,
            max_age: 0

  field :min_age, 1, type: :int32, json_name: "minAge"
  field :max_age, 2, type: :int32, json_name: "maxAge"
end
defmodule Google.Ads.Googleads.V10.Common.GenderDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          genders: [Google.Ads.Googleads.V10.Enums.GenderTypeEnum.GenderType.t()],
          include_undetermined: boolean
        }

  defstruct genders: [],
            include_undetermined: false

  field :genders, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.GenderTypeEnum.GenderType,
    enum: true

  field :include_undetermined, 2, type: :bool, json_name: "includeUndetermined"
end
defmodule Google.Ads.Googleads.V10.Common.HouseholdIncomeDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          income_ranges: [Google.Ads.Googleads.V10.Enums.IncomeRangeTypeEnum.IncomeRangeType.t()],
          include_undetermined: boolean
        }

  defstruct income_ranges: [],
            include_undetermined: false

  field :income_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    json_name: "incomeRanges",
    enum: true

  field :include_undetermined, 2, type: :bool, json_name: "includeUndetermined"
end
defmodule Google.Ads.Googleads.V10.Common.ParentalStatusDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parental_statuses: [
            Google.Ads.Googleads.V10.Enums.ParentalStatusTypeEnum.ParentalStatusType.t()
          ],
          include_undetermined: boolean
        }

  defstruct parental_statuses: [],
            include_undetermined: false

  field :parental_statuses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    json_name: "parentalStatuses",
    enum: true

  field :include_undetermined, 2, type: :bool, json_name: "includeUndetermined"
end
defmodule Google.Ads.Googleads.V10.Common.AudienceSegmentDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Ads.Googleads.V10.Common.AudienceSegment.t()]
        }

  defstruct segments: []

  field :segments, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.AudienceSegment
end
defmodule Google.Ads.Googleads.V10.Common.AudienceSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment:
            {:user_list, Google.Ads.Googleads.V10.Common.UserListSegment.t() | nil}
            | {:user_interest, Google.Ads.Googleads.V10.Common.UserInterestSegment.t() | nil}
            | {:life_event, Google.Ads.Googleads.V10.Common.LifeEventSegment.t() | nil}
            | {:detailed_demographic,
               Google.Ads.Googleads.V10.Common.DetailedDemographicSegment.t() | nil}
            | {:custom_audience, Google.Ads.Googleads.V10.Common.CustomAudienceSegment.t() | nil}
        }

  defstruct segment: nil

  oneof :segment, 0

  field :user_list, 1,
    type: Google.Ads.Googleads.V10.Common.UserListSegment,
    json_name: "userList",
    oneof: 0

  field :user_interest, 2,
    type: Google.Ads.Googleads.V10.Common.UserInterestSegment,
    json_name: "userInterest",
    oneof: 0

  field :life_event, 3,
    type: Google.Ads.Googleads.V10.Common.LifeEventSegment,
    json_name: "lifeEvent",
    oneof: 0

  field :detailed_demographic, 4,
    type: Google.Ads.Googleads.V10.Common.DetailedDemographicSegment,
    json_name: "detailedDemographic",
    oneof: 0

  field :custom_audience, 5,
    type: Google.Ads.Googleads.V10.Common.CustomAudienceSegment,
    json_name: "customAudience",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.UserListSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct user_list: ""

  field :user_list, 1, type: :string, json_name: "userList"
end
defmodule Google.Ads.Googleads.V10.Common.UserInterestSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_interest_category: String.t()
        }

  defstruct user_interest_category: ""

  field :user_interest_category, 1, type: :string, json_name: "userInterestCategory"
end
defmodule Google.Ads.Googleads.V10.Common.LifeEventSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          life_event: String.t()
        }

  defstruct life_event: ""

  field :life_event, 1, type: :string, json_name: "lifeEvent"
end
defmodule Google.Ads.Googleads.V10.Common.DetailedDemographicSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detailed_demographic: String.t()
        }

  defstruct detailed_demographic: ""

  field :detailed_demographic, 1, type: :string, json_name: "detailedDemographic"
end
defmodule Google.Ads.Googleads.V10.Common.CustomAudienceSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_audience: String.t()
        }

  defstruct custom_audience: ""

  field :custom_audience, 1, type: :string, json_name: "customAudience"
end
