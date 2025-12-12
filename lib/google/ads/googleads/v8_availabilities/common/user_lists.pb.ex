defmodule Google.Ads.Googleads.V8Availabilities.Common.SimilarUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :seed_user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CrmBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :app_id, 4, type: :string

  field :upload_key_type, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType,
    enum: true

  field :data_source_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :rule_type, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.UserListRuleTypeEnum.UserListRuleType,
    enum: true

  field :rule_item_groups, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemGroupInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :rule_items, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :rule_item, 0

  field :name, 5, type: :string

  field :number_rule_item, 2,
    type: Google.Ads.Googleads.V8Availabilities.Common.UserListNumberRuleItemInfo,
    oneof: 0

  field :string_rule_item, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.UserListStringRuleItemInfo,
    oneof: 0

  field :date_rule_item, 4,
    type: Google.Ads.Googleads.V8Availabilities.Common.UserListDateRuleItemInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListDateRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :operator, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator,
    enum: true

  field :value, 4, type: :string
  field :offset_in_days, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListNumberRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :operator, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator,
    enum: true

  field :value, 3, type: :double
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListStringRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :operator, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator,
    enum: true

  field :value, 3, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CombinedRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :left_operand, 1, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo
  field :right_operand, 2, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo

  field :rule_operator, 3,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.DateSpecificRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :rule, 1, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo
  field :start_date, 4, type: :string
  field :end_date, 5, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.ExpressionRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :rule, 1, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.RuleBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :rule_based_user_list, 0

  field :prepopulation_status, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus,
    enum: true

  field :combined_rule_user_list, 2,
    type: Google.Ads.Googleads.V8Availabilities.Common.CombinedRuleUserListInfo,
    oneof: 0

  field :date_specific_rule_user_list, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.DateSpecificRuleUserListInfo,
    oneof: 0

  field :expression_rule_user_list, 4,
    type: Google.Ads.Googleads.V8Availabilities.Common.ExpressionRuleUserListInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.LogicalUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :rules, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserListLogicalRuleInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListLogicalRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :operator, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator,
    enum: true

  field :rule_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.LogicalUserListOperandInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.LogicalUserListOperandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.BasicUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :actions, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserListActionInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListActionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :user_list_action, 0

  field :conversion_action, 3, type: :string, oneof: 0
  field :remarketing_action, 4, type: :string, oneof: 0
end
