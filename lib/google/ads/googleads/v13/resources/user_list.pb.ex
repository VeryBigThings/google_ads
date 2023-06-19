defmodule Google.Ads.Googleads.V13.Resources.UserList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :user_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, type: :int64, deprecated: false
  field :read_only, 26, type: :bool, json_name: "readOnly", deprecated: false
  field :name, 27, type: :string
  field :description, 28, type: :string

  field :membership_status, 6,
    type: Google.Ads.Googleads.V13.Enums.UserListMembershipStatusEnum.UserListMembershipStatus,
    json_name: "membershipStatus",
    enum: true

  field :integration_code, 29, type: :string, json_name: "integrationCode"
  field :membership_life_span, 30, type: :int64, json_name: "membershipLifeSpan"
  field :size_for_display, 31, type: :int64, json_name: "sizeForDisplay", deprecated: false

  field :size_range_for_display, 10,
    type: Google.Ads.Googleads.V13.Enums.UserListSizeRangeEnum.UserListSizeRange,
    json_name: "sizeRangeForDisplay",
    enum: true,
    deprecated: false

  field :size_for_search, 32, type: :int64, json_name: "sizeForSearch", deprecated: false

  field :size_range_for_search, 12,
    type: Google.Ads.Googleads.V13.Enums.UserListSizeRangeEnum.UserListSizeRange,
    json_name: "sizeRangeForSearch",
    enum: true,
    deprecated: false

  field :type, 13,
    type: Google.Ads.Googleads.V13.Enums.UserListTypeEnum.UserListType,
    enum: true,
    deprecated: false

  field :closing_reason, 14,
    type: Google.Ads.Googleads.V13.Enums.UserListClosingReasonEnum.UserListClosingReason,
    json_name: "closingReason",
    enum: true

  field :access_reason, 15,
    type: Google.Ads.Googleads.V13.Enums.AccessReasonEnum.AccessReason,
    json_name: "accessReason",
    enum: true,
    deprecated: false

  field :account_user_list_status, 16,
    type: Google.Ads.Googleads.V13.Enums.UserListAccessStatusEnum.UserListAccessStatus,
    json_name: "accountUserListStatus",
    enum: true

  field :eligible_for_search, 33, type: :bool, json_name: "eligibleForSearch"
  field :eligible_for_display, 34, type: :bool, json_name: "eligibleForDisplay", deprecated: false

  field :match_rate_percentage, 24,
    type: :int32,
    json_name: "matchRatePercentage",
    deprecated: false

  field :crm_based_user_list, 19,
    type: Google.Ads.Googleads.V13.Common.CrmBasedUserListInfo,
    json_name: "crmBasedUserList",
    oneof: 0

  field :similar_user_list, 20,
    type: Google.Ads.Googleads.V13.Common.SimilarUserListInfo,
    json_name: "similarUserList",
    oneof: 0,
    deprecated: false

  field :rule_based_user_list, 21,
    type: Google.Ads.Googleads.V13.Common.RuleBasedUserListInfo,
    json_name: "ruleBasedUserList",
    oneof: 0

  field :logical_user_list, 22,
    type: Google.Ads.Googleads.V13.Common.LogicalUserListInfo,
    json_name: "logicalUserList",
    oneof: 0

  field :basic_user_list, 23,
    type: Google.Ads.Googleads.V13.Common.BasicUserListInfo,
    json_name: "basicUserList",
    oneof: 0
end