defmodule Google.Ads.Googleads.V8.Resources.UserList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :user_list, 0
  field :resource_name, 1, optional: true, type: :string
  field :id, 25, optional: true, type: :int64
  field :read_only, 26, optional: true, type: :bool
  field :name, 27, optional: true, type: :string
  field :description, 28, optional: true, type: :string

  field :membership_status, 6,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.UserListMembershipStatusEnum.UserListMembershipStatus,
    enum: true

  field :integration_code, 29, optional: true, type: :string
  field :membership_life_span, 30, optional: true, type: :int64
  field :size_for_display, 31, optional: true, type: :int64

  field :size_range_for_display, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :size_for_search, 32, optional: true, type: :int64

  field :size_range_for_search, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :type, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserListTypeEnum.UserListType,
    enum: true

  field :closing_reason, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserListClosingReasonEnum.UserListClosingReason,
    enum: true

  field :access_reason, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AccessReasonEnum.AccessReason,
    enum: true

  field :account_user_list_status, 16,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserListAccessStatusEnum.UserListAccessStatus,
    enum: true

  field :eligible_for_search, 33, optional: true, type: :bool
  field :eligible_for_display, 34, optional: true, type: :bool
  field :match_rate_percentage, 24, optional: true, type: :int32

  field :crm_based_user_list, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CrmBasedUserListInfo,
    oneof: 0

  field :similar_user_list, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.SimilarUserListInfo,
    oneof: 0

  field :rule_based_user_list, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.RuleBasedUserListInfo,
    oneof: 0

  field :logical_user_list, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.LogicalUserListInfo,
    oneof: 0

  field :basic_user_list, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.BasicUserListInfo,
    oneof: 0
end
