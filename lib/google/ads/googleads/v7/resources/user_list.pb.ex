defmodule Google.Ads.Googleads.V7.Resources.UserList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :user_list, 0

  field :resource_name, 1, type: :string
  field :id, 25, type: :int64
  field :read_only, 26, type: :bool
  field :name, 27, type: :string
  field :description, 28, type: :string

  field :membership_status, 6,
    type: Google.Ads.Googleads.V7.Enums.UserListMembershipStatusEnum.UserListMembershipStatus,
    enum: true

  field :integration_code, 29, type: :string
  field :membership_life_span, 30, type: :int64
  field :size_for_display, 31, type: :int64

  field :size_range_for_display, 10,
    type: Google.Ads.Googleads.V7.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :size_for_search, 32, type: :int64

  field :size_range_for_search, 12,
    type: Google.Ads.Googleads.V7.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :type, 13, type: Google.Ads.Googleads.V7.Enums.UserListTypeEnum.UserListType, enum: true

  field :closing_reason, 14,
    type: Google.Ads.Googleads.V7.Enums.UserListClosingReasonEnum.UserListClosingReason,
    enum: true

  field :access_reason, 15,
    type: Google.Ads.Googleads.V7.Enums.AccessReasonEnum.AccessReason,
    enum: true

  field :account_user_list_status, 16,
    type: Google.Ads.Googleads.V7.Enums.UserListAccessStatusEnum.UserListAccessStatus,
    enum: true

  field :eligible_for_search, 33, type: :bool
  field :eligible_for_display, 34, type: :bool
  field :match_rate_percentage, 24, type: :int32

  field :crm_based_user_list, 19,
    type: Google.Ads.Googleads.V7.Common.CrmBasedUserListInfo,
    oneof: 0

  field :similar_user_list, 20, type: Google.Ads.Googleads.V7.Common.SimilarUserListInfo, oneof: 0

  field :rule_based_user_list, 21,
    type: Google.Ads.Googleads.V7.Common.RuleBasedUserListInfo,
    oneof: 0

  field :logical_user_list, 22, type: Google.Ads.Googleads.V7.Common.LogicalUserListInfo, oneof: 0
  field :basic_user_list, 23, type: Google.Ads.Googleads.V7.Common.BasicUserListInfo, oneof: 0
end
