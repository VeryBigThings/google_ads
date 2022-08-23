defmodule Google.Ads.Googleads.V11.Resources.UserList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list:
            {:crm_based_user_list, Google.Ads.Googleads.V11.Common.CrmBasedUserListInfo.t() | nil}
            | {:similar_user_list, Google.Ads.Googleads.V11.Common.SimilarUserListInfo.t() | nil}
            | {:rule_based_user_list,
               Google.Ads.Googleads.V11.Common.RuleBasedUserListInfo.t() | nil}
            | {:logical_user_list, Google.Ads.Googleads.V11.Common.LogicalUserListInfo.t() | nil}
            | {:basic_user_list, Google.Ads.Googleads.V11.Common.BasicUserListInfo.t() | nil},
          resource_name: String.t(),
          id: integer,
          read_only: boolean,
          name: String.t(),
          description: String.t(),
          membership_status:
            Google.Ads.Googleads.V11.Enums.UserListMembershipStatusEnum.UserListMembershipStatus.t(),
          integration_code: String.t(),
          membership_life_span: integer,
          size_for_display: integer,
          size_range_for_display:
            Google.Ads.Googleads.V11.Enums.UserListSizeRangeEnum.UserListSizeRange.t(),
          size_for_search: integer,
          size_range_for_search:
            Google.Ads.Googleads.V11.Enums.UserListSizeRangeEnum.UserListSizeRange.t(),
          type: Google.Ads.Googleads.V11.Enums.UserListTypeEnum.UserListType.t(),
          closing_reason:
            Google.Ads.Googleads.V11.Enums.UserListClosingReasonEnum.UserListClosingReason.t(),
          access_reason: Google.Ads.Googleads.V11.Enums.AccessReasonEnum.AccessReason.t(),
          account_user_list_status:
            Google.Ads.Googleads.V11.Enums.UserListAccessStatusEnum.UserListAccessStatus.t(),
          eligible_for_search: boolean,
          eligible_for_display: boolean,
          match_rate_percentage: integer
        }

  defstruct user_list: nil,
            resource_name: "",
            id: 0,
            read_only: false,
            name: "",
            description: "",
            membership_status: :UNSPECIFIED,
            integration_code: "",
            membership_life_span: 0,
            size_for_display: 0,
            size_range_for_display: :UNSPECIFIED,
            size_for_search: 0,
            size_range_for_search: :UNSPECIFIED,
            type: :UNSPECIFIED,
            closing_reason: :UNSPECIFIED,
            access_reason: :UNSPECIFIED,
            account_user_list_status: :UNSPECIFIED,
            eligible_for_search: false,
            eligible_for_display: false,
            match_rate_percentage: 0

  oneof :user_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, type: :int64, deprecated: false
  field :read_only, 26, type: :bool, json_name: "readOnly", deprecated: false
  field :name, 27, type: :string
  field :description, 28, type: :string

  field :membership_status, 6,
    type: Google.Ads.Googleads.V11.Enums.UserListMembershipStatusEnum.UserListMembershipStatus,
    json_name: "membershipStatus",
    enum: true

  field :integration_code, 29, type: :string, json_name: "integrationCode"
  field :membership_life_span, 30, type: :int64, json_name: "membershipLifeSpan"
  field :size_for_display, 31, type: :int64, json_name: "sizeForDisplay", deprecated: false

  field :size_range_for_display, 10,
    type: Google.Ads.Googleads.V11.Enums.UserListSizeRangeEnum.UserListSizeRange,
    json_name: "sizeRangeForDisplay",
    enum: true,
    deprecated: false

  field :size_for_search, 32, type: :int64, json_name: "sizeForSearch", deprecated: false

  field :size_range_for_search, 12,
    type: Google.Ads.Googleads.V11.Enums.UserListSizeRangeEnum.UserListSizeRange,
    json_name: "sizeRangeForSearch",
    enum: true,
    deprecated: false

  field :type, 13,
    type: Google.Ads.Googleads.V11.Enums.UserListTypeEnum.UserListType,
    enum: true,
    deprecated: false

  field :closing_reason, 14,
    type: Google.Ads.Googleads.V11.Enums.UserListClosingReasonEnum.UserListClosingReason,
    json_name: "closingReason",
    enum: true

  field :access_reason, 15,
    type: Google.Ads.Googleads.V11.Enums.AccessReasonEnum.AccessReason,
    json_name: "accessReason",
    enum: true,
    deprecated: false

  field :account_user_list_status, 16,
    type: Google.Ads.Googleads.V11.Enums.UserListAccessStatusEnum.UserListAccessStatus,
    json_name: "accountUserListStatus",
    enum: true

  field :eligible_for_search, 33, type: :bool, json_name: "eligibleForSearch"
  field :eligible_for_display, 34, type: :bool, json_name: "eligibleForDisplay", deprecated: false

  field :match_rate_percentage, 24,
    type: :int32,
    json_name: "matchRatePercentage",
    deprecated: false

  field :crm_based_user_list, 19,
    type: Google.Ads.Googleads.V11.Common.CrmBasedUserListInfo,
    json_name: "crmBasedUserList",
    oneof: 0

  field :similar_user_list, 20,
    type: Google.Ads.Googleads.V11.Common.SimilarUserListInfo,
    json_name: "similarUserList",
    oneof: 0,
    deprecated: false

  field :rule_based_user_list, 21,
    type: Google.Ads.Googleads.V11.Common.RuleBasedUserListInfo,
    json_name: "ruleBasedUserList",
    oneof: 0

  field :logical_user_list, 22,
    type: Google.Ads.Googleads.V11.Common.LogicalUserListInfo,
    json_name: "logicalUserList",
    oneof: 0

  field :basic_user_list, 23,
    type: Google.Ads.Googleads.V11.Common.BasicUserListInfo,
    json_name: "basicUserList",
    oneof: 0
end
