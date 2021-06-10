defmodule Google.Ads.Googleads.V8.Resources.UserList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          read_only: Google.Protobuf.BoolValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          membership_status:
            Google.Ads.Googleads.V8.Enums.UserListMembershipStatusEnum.UserListMembershipStatus.t(),
          integration_code: Google.Protobuf.StringValue.t() | nil,
          membership_life_span: Google.Protobuf.Int64Value.t() | nil,
          size_for_display: Google.Protobuf.Int64Value.t() | nil,
          size_range_for_display:
            Google.Ads.Googleads.V8.Enums.UserListSizeRangeEnum.UserListSizeRange.t(),
          size_for_search: Google.Protobuf.Int64Value.t() | nil,
          size_range_for_search:
            Google.Ads.Googleads.V8.Enums.UserListSizeRangeEnum.UserListSizeRange.t(),
          type: Google.Ads.Googleads.V8.Enums.UserListTypeEnum.UserListType.t(),
          closing_reason:
            Google.Ads.Googleads.V8.Enums.UserListClosingReasonEnum.UserListClosingReason.t(),
          access_reason: Google.Ads.Googleads.V8.Enums.AccessReasonEnum.AccessReason.t(),
          account_user_list_status:
            Google.Ads.Googleads.V8.Enums.UserListAccessStatusEnum.UserListAccessStatus.t(),
          eligible_for_search: Google.Protobuf.BoolValue.t() | nil,
          eligible_for_display: Google.Protobuf.BoolValue.t() | nil,
          match_rate_percentage: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [
    :user_list,
    :resource_name,
    :id,
    :read_only,
    :name,
    :description,
    :membership_status,
    :integration_code,
    :membership_life_span,
    :size_for_display,
    :size_range_for_display,
    :size_for_search,
    :size_range_for_search,
    :type,
    :closing_reason,
    :access_reason,
    :account_user_list_status,
    :eligible_for_search,
    :eligible_for_display,
    :match_rate_percentage
  ]

  oneof :user_list, 0
  field :resource_name, 1, type: :string
  field :id, 25, type: Google.Protobuf.Int64Value
  field :read_only, 26, type: Google.Protobuf.BoolValue
  field :name, 27, type: Google.Protobuf.StringValue
  field :description, 28, type: Google.Protobuf.StringValue

  field :membership_status, 6,
    type: Google.Ads.Googleads.V8.Enums.UserListMembershipStatusEnum.UserListMembershipStatus,
    enum: true

  field :integration_code, 29, type: Google.Protobuf.StringValue
  field :membership_life_span, 30, type: Google.Protobuf.Int64Value
  field :size_for_display, 31, type: Google.Protobuf.Int64Value

  field :size_range_for_display, 10,
    type: Google.Ads.Googleads.V8.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :size_for_search, 32, type: Google.Protobuf.Int64Value

  field :size_range_for_search, 12,
    type: Google.Ads.Googleads.V8.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :type, 13, type: Google.Ads.Googleads.V8.Enums.UserListTypeEnum.UserListType, enum: true

  field :closing_reason, 14,
    type: Google.Ads.Googleads.V8.Enums.UserListClosingReasonEnum.UserListClosingReason,
    enum: true

  field :access_reason, 15,
    type: Google.Ads.Googleads.V8.Enums.AccessReasonEnum.AccessReason,
    enum: true

  field :account_user_list_status, 16,
    type: Google.Ads.Googleads.V8.Enums.UserListAccessStatusEnum.UserListAccessStatus,
    enum: true

  field :eligible_for_search, 33, type: Google.Protobuf.BoolValue
  field :eligible_for_display, 34, type: Google.Protobuf.BoolValue
  field :match_rate_percentage, 24, type: Google.Protobuf.Int32Value

  field :crm_based_user_list, 19,
    type: Google.Ads.Googleads.V8.Common.CrmBasedUserListInfo,
    oneof: 0

  field :similar_user_list, 20, type: Google.Ads.Googleads.V8.Common.SimilarUserListInfo, oneof: 0

  field :rule_based_user_list, 21,
    type: Google.Ads.Googleads.V8.Common.RuleBasedUserListInfo,
    oneof: 0

  field :logical_user_list, 22, type: Google.Ads.Googleads.V8.Common.LogicalUserListInfo, oneof: 0
  field :basic_user_list, 23, type: Google.Ads.Googleads.V8.Common.BasicUserListInfo, oneof: 0
end
