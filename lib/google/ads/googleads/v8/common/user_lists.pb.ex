defmodule Google.Ads.Googleads.V8.Common.SimilarUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :seed_user_list, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CrmBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :app_id, 4, optional: true, type: :string

  field :upload_key_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType,
    enum: true

  field :data_source_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.UserListRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :rule_type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserListRuleTypeEnum.UserListRuleType,
    enum: true

  field :rule_item_groups, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.UserListRuleItemGroupInfo
end

defmodule Google.Ads.Googleads.V8.Common.UserListRuleItemGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :rule_items, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.UserListRuleItemInfo
end

defmodule Google.Ads.Googleads.V8.Common.UserListRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :rule_item, 0
  field :name, 5, optional: true, type: :string

  field :number_rule_item, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.UserListNumberRuleItemInfo,
    oneof: 0

  field :string_rule_item, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.UserListStringRuleItemInfo,
    oneof: 0

  field :date_rule_item, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.UserListDateRuleItemInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.UserListDateRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :operator, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator,
    enum: true

  field :value, 4, optional: true, type: :string
  field :offset_in_days, 5, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.UserListNumberRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :operator, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator,
    enum: true

  field :value, 3, optional: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Common.UserListStringRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :operator, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator,
    enum: true

  field :value, 3, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CombinedRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :left_operand, 1, optional: true, type: Google.Ads.Googleads.V8.Common.UserListRuleInfo
  field :right_operand, 2, optional: true, type: Google.Ads.Googleads.V8.Common.UserListRuleInfo

  field :rule_operator, 3,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.DateSpecificRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :rule, 1, optional: true, type: Google.Ads.Googleads.V8.Common.UserListRuleInfo
  field :start_date, 4, optional: true, type: :string
  field :end_date, 5, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ExpressionRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :rule, 1, optional: true, type: Google.Ads.Googleads.V8.Common.UserListRuleInfo
end

defmodule Google.Ads.Googleads.V8.Common.RuleBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :rule_based_user_list, 0

  field :prepopulation_status, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus,
    enum: true

  field :combined_rule_user_list, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CombinedRuleUserListInfo,
    oneof: 0

  field :date_specific_rule_user_list, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DateSpecificRuleUserListInfo,
    oneof: 0

  field :expression_rule_user_list, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ExpressionRuleUserListInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.LogicalUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :rules, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.UserListLogicalRuleInfo
end

defmodule Google.Ads.Googleads.V8.Common.UserListLogicalRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :operator, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator,
    enum: true

  field :rule_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.LogicalUserListOperandInfo
end

defmodule Google.Ads.Googleads.V8.Common.LogicalUserListOperandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :user_list, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.BasicUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :actions, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.UserListActionInfo
end

defmodule Google.Ads.Googleads.V8.Common.UserListActionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :user_list_action, 0
  field :conversion_action, 3, optional: true, type: :string, oneof: 0
  field :remarketing_action, 4, optional: true, type: :string, oneof: 0
end
