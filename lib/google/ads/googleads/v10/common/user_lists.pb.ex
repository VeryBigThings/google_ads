defmodule Google.Ads.Googleads.V10.Common.SimilarUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seed_user_list: String.t()
        }

  defstruct seed_user_list: ""

  field :seed_user_list, 2, type: :string, json_name: "seedUserList"
end
defmodule Google.Ads.Googleads.V10.Common.CrmBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: String.t(),
          upload_key_type:
            Google.Ads.Googleads.V10.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType.t(),
          data_source_type:
            Google.Ads.Googleads.V10.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType.t()
        }

  defstruct app_id: "",
            upload_key_type: :UNSPECIFIED,
            data_source_type: :UNSPECIFIED

  field :app_id, 4, type: :string, json_name: "appId"

  field :upload_key_type, 2,
    type:
      Google.Ads.Googleads.V10.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType,
    json_name: "uploadKeyType",
    enum: true

  field :data_source_type, 3,
    type: Google.Ads.Googleads.V10.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType,
    json_name: "dataSourceType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Common.UserListRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_type: Google.Ads.Googleads.V10.Enums.UserListRuleTypeEnum.UserListRuleType.t(),
          rule_item_groups: [Google.Ads.Googleads.V10.Common.UserListRuleItemGroupInfo.t()]
        }

  defstruct rule_type: :UNSPECIFIED,
            rule_item_groups: []

  field :rule_type, 1,
    type: Google.Ads.Googleads.V10.Enums.UserListRuleTypeEnum.UserListRuleType,
    json_name: "ruleType",
    enum: true

  field :rule_item_groups, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.UserListRuleItemGroupInfo,
    json_name: "ruleItemGroups"
end
defmodule Google.Ads.Googleads.V10.Common.UserListRuleItemGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_items: [Google.Ads.Googleads.V10.Common.UserListRuleItemInfo.t()]
        }

  defstruct rule_items: []

  field :rule_items, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.UserListRuleItemInfo,
    json_name: "ruleItems"
end
defmodule Google.Ads.Googleads.V10.Common.UserListRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_item:
            {:number_rule_item,
             Google.Ads.Googleads.V10.Common.UserListNumberRuleItemInfo.t() | nil}
            | {:string_rule_item,
               Google.Ads.Googleads.V10.Common.UserListStringRuleItemInfo.t() | nil}
            | {:date_rule_item,
               Google.Ads.Googleads.V10.Common.UserListDateRuleItemInfo.t() | nil},
          name: String.t()
        }

  defstruct rule_item: nil,
            name: ""

  oneof :rule_item, 0

  field :name, 5, type: :string

  field :number_rule_item, 2,
    type: Google.Ads.Googleads.V10.Common.UserListNumberRuleItemInfo,
    json_name: "numberRuleItem",
    oneof: 0

  field :string_rule_item, 3,
    type: Google.Ads.Googleads.V10.Common.UserListStringRuleItemInfo,
    json_name: "stringRuleItem",
    oneof: 0

  field :date_rule_item, 4,
    type: Google.Ads.Googleads.V10.Common.UserListDateRuleItemInfo,
    json_name: "dateRuleItem",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.UserListDateRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V10.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator.t(),
          value: String.t(),
          offset_in_days: integer
        }

  defstruct operator: :UNSPECIFIED,
            value: "",
            offset_in_days: 0

  field :operator, 1,
    type:
      Google.Ads.Googleads.V10.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator,
    enum: true

  field :value, 4, type: :string
  field :offset_in_days, 5, type: :int64, json_name: "offsetInDays"
end
defmodule Google.Ads.Googleads.V10.Common.UserListNumberRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V10.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct operator: :UNSPECIFIED,
            value: 0.0

  field :operator, 1,
    type:
      Google.Ads.Googleads.V10.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator,
    enum: true

  field :value, 3, type: :double
end
defmodule Google.Ads.Googleads.V10.Common.UserListStringRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V10.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator.t(),
          value: String.t()
        }

  defstruct operator: :UNSPECIFIED,
            value: ""

  field :operator, 1,
    type:
      Google.Ads.Googleads.V10.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator,
    enum: true

  field :value, 3, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.CombinedRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          left_operand: Google.Ads.Googleads.V10.Common.UserListRuleInfo.t() | nil,
          right_operand: Google.Ads.Googleads.V10.Common.UserListRuleInfo.t() | nil,
          rule_operator:
            Google.Ads.Googleads.V10.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator.t()
        }

  defstruct left_operand: nil,
            right_operand: nil,
            rule_operator: :UNSPECIFIED

  field :left_operand, 1,
    type: Google.Ads.Googleads.V10.Common.UserListRuleInfo,
    json_name: "leftOperand"

  field :right_operand, 2,
    type: Google.Ads.Googleads.V10.Common.UserListRuleInfo,
    json_name: "rightOperand"

  field :rule_operator, 3,
    type:
      Google.Ads.Googleads.V10.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator,
    json_name: "ruleOperator",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Common.DateSpecificRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule: Google.Ads.Googleads.V10.Common.UserListRuleInfo.t() | nil,
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct rule: nil,
            start_date: "",
            end_date: ""

  field :rule, 1, type: Google.Ads.Googleads.V10.Common.UserListRuleInfo
  field :start_date, 4, type: :string, json_name: "startDate"
  field :end_date, 5, type: :string, json_name: "endDate"
end
defmodule Google.Ads.Googleads.V10.Common.ExpressionRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule: Google.Ads.Googleads.V10.Common.UserListRuleInfo.t() | nil
        }

  defstruct rule: nil

  field :rule, 1, type: Google.Ads.Googleads.V10.Common.UserListRuleInfo
end
defmodule Google.Ads.Googleads.V10.Common.RuleBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_based_user_list:
            {:combined_rule_user_list,
             Google.Ads.Googleads.V10.Common.CombinedRuleUserListInfo.t() | nil}
            | {:date_specific_rule_user_list,
               Google.Ads.Googleads.V10.Common.DateSpecificRuleUserListInfo.t() | nil}
            | {:expression_rule_user_list,
               Google.Ads.Googleads.V10.Common.ExpressionRuleUserListInfo.t() | nil},
          prepopulation_status:
            Google.Ads.Googleads.V10.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus.t()
        }

  defstruct rule_based_user_list: nil,
            prepopulation_status: :UNSPECIFIED

  oneof :rule_based_user_list, 0

  field :prepopulation_status, 1,
    type:
      Google.Ads.Googleads.V10.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus,
    json_name: "prepopulationStatus",
    enum: true

  field :combined_rule_user_list, 2,
    type: Google.Ads.Googleads.V10.Common.CombinedRuleUserListInfo,
    json_name: "combinedRuleUserList",
    oneof: 0

  field :date_specific_rule_user_list, 3,
    type: Google.Ads.Googleads.V10.Common.DateSpecificRuleUserListInfo,
    json_name: "dateSpecificRuleUserList",
    oneof: 0

  field :expression_rule_user_list, 4,
    type: Google.Ads.Googleads.V10.Common.ExpressionRuleUserListInfo,
    json_name: "expressionRuleUserList",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.LogicalUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Ads.Googleads.V10.Common.UserListLogicalRuleInfo.t()]
        }

  defstruct rules: []

  field :rules, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.UserListLogicalRuleInfo
end
defmodule Google.Ads.Googleads.V10.Common.UserListLogicalRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V10.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator.t(),
          rule_operands: [Google.Ads.Googleads.V10.Common.LogicalUserListOperandInfo.t()]
        }

  defstruct operator: :UNSPECIFIED,
            rule_operands: []

  field :operator, 1,
    type:
      Google.Ads.Googleads.V10.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator,
    enum: true

  field :rule_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.LogicalUserListOperandInfo,
    json_name: "ruleOperands"
end
defmodule Google.Ads.Googleads.V10.Common.LogicalUserListOperandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct user_list: ""

  field :user_list, 2, type: :string, json_name: "userList"
end
defmodule Google.Ads.Googleads.V10.Common.BasicUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actions: [Google.Ads.Googleads.V10.Common.UserListActionInfo.t()]
        }

  defstruct actions: []

  field :actions, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.UserListActionInfo
end
defmodule Google.Ads.Googleads.V10.Common.UserListActionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list_action: {:conversion_action, String.t()} | {:remarketing_action, String.t()}
        }

  defstruct user_list_action: nil

  oneof :user_list_action, 0

  field :conversion_action, 3, type: :string, json_name: "conversionAction", oneof: 0
  field :remarketing_action, 4, type: :string, json_name: "remarketingAction", oneof: 0
end
