defmodule Google.Ads.Googleads.V8Availabilities.Common.SimilarUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seed_user_list: String.t()
        }

  defstruct [:seed_user_list]

  field :seed_user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CrmBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: String.t(),
          upload_key_type:
            Google.Ads.Googleads.V8Availabilities.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType.t(),
          data_source_type:
            Google.Ads.Googleads.V8Availabilities.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType.t()
        }

  defstruct [:app_id, :upload_key_type, :data_source_type]

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

  @type t :: %__MODULE__{
          rule_type: Google.Ads.Googleads.V8Availabilities.Enums.UserListRuleTypeEnum.UserListRuleType.t(),
          rule_item_groups: [Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemGroupInfo.t()]
        }

  defstruct [:rule_type, :rule_item_groups]

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

  @type t :: %__MODULE__{
          rule_items: [Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemInfo.t()]
        }

  defstruct [:rule_items]

  field :rule_items, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_item: {atom, any},
          name: String.t()
        }

  defstruct [:rule_item, :name]

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

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V8Availabilities.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator.t(),
          value: String.t(),
          offset_in_days: integer
        }

  defstruct [:operator, :value, :offset_in_days]

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

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V8Availabilities.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:operator, :value]

  field :operator, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator,
    enum: true

  field :value, 3, type: :double
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListStringRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V8Availabilities.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator.t(),
          value: String.t()
        }

  defstruct [:operator, :value]

  field :operator, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator,
    enum: true

  field :value, 3, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CombinedRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          left_operand: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo.t() | nil,
          right_operand: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo.t() | nil,
          rule_operator:
            Google.Ads.Googleads.V8Availabilities.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator.t()
        }

  defstruct [:left_operand, :right_operand, :rule_operator]

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

  @type t :: %__MODULE__{
          rule: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo.t() | nil,
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct [:rule, :start_date, :end_date]

  field :rule, 1, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo
  field :start_date, 4, type: :string
  field :end_date, 5, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.ExpressionRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo.t() | nil
        }

  defstruct [:rule]

  field :rule, 1, type: Google.Ads.Googleads.V8Availabilities.Common.UserListRuleInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.RuleBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_based_user_list: {atom, any},
          prepopulation_status:
            Google.Ads.Googleads.V8Availabilities.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus.t()
        }

  defstruct [:rule_based_user_list, :prepopulation_status]

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

  @type t :: %__MODULE__{
          rules: [Google.Ads.Googleads.V8Availabilities.Common.UserListLogicalRuleInfo.t()]
        }

  defstruct [:rules]

  field :rules, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserListLogicalRuleInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListLogicalRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V8Availabilities.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator.t(),
          rule_operands: [Google.Ads.Googleads.V8Availabilities.Common.LogicalUserListOperandInfo.t()]
        }

  defstruct [:operator, :rule_operands]

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

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct [:user_list]

  field :user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.BasicUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actions: [Google.Ads.Googleads.V8Availabilities.Common.UserListActionInfo.t()]
        }

  defstruct [:actions]

  field :actions, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserListActionInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserListActionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list_action: {atom, any}
        }

  defstruct [:user_list_action]

  oneof :user_list_action, 0

  field :conversion_action, 3, type: :string, oneof: 0
  field :remarketing_action, 4, type: :string, oneof: 0
end
