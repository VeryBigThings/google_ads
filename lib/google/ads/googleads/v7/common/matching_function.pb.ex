defmodule Google.Ads.Googleads.V7.Common.MatchingFunction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_string: String.t(),
          operator:
            Google.Ads.Googleads.V7.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator.t(),
          left_operands: [Google.Ads.Googleads.V7.Common.Operand.t()],
          right_operands: [Google.Ads.Googleads.V7.Common.Operand.t()]
        }
  defstruct [:function_string, :operator, :left_operands, :right_operands]

  field :function_string, 5, type: :string

  field :operator, 4,
    type: Google.Ads.Googleads.V7.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator,
    enum: true

  field :left_operands, 2, repeated: true, type: Google.Ads.Googleads.V7.Common.Operand
  field :right_operands, 3, repeated: true, type: Google.Ads.Googleads.V7.Common.Operand
end

defmodule Google.Ads.Googleads.V7.Common.Operand.ConstantOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          constant_operand_value: {atom, any}
        }
  defstruct [:constant_operand_value]

  oneof :constant_operand_value, 0

  field :string_value, 5, type: :string, oneof: 0
  field :long_value, 6, type: :int64, oneof: 0
  field :boolean_value, 7, type: :bool, oneof: 0
  field :double_value, 8, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Common.Operand.FeedAttributeOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed_id: integer,
          feed_attribute_id: integer
        }
  defstruct [:feed_id, :feed_attribute_id]

  field :feed_id, 3, type: :int64
  field :feed_attribute_id, 4, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.Operand.FunctionOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matching_function: Google.Ads.Googleads.V7.Common.MatchingFunction.t() | nil
        }
  defstruct [:matching_function]

  field :matching_function, 1, type: Google.Ads.Googleads.V7.Common.MatchingFunction
end

defmodule Google.Ads.Googleads.V7.Common.Operand.RequestContextOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context_type:
            Google.Ads.Googleads.V7.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType.t()
        }
  defstruct [:context_type]

  field :context_type, 1,
    type:
      Google.Ads.Googleads.V7.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Common.Operand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_argument_operand: {atom, any}
        }
  defstruct [:function_argument_operand]

  oneof :function_argument_operand, 0

  field :constant_operand, 1,
    type: Google.Ads.Googleads.V7.Common.Operand.ConstantOperand,
    oneof: 0

  field :feed_attribute_operand, 2,
    type: Google.Ads.Googleads.V7.Common.Operand.FeedAttributeOperand,
    oneof: 0

  field :function_operand, 3,
    type: Google.Ads.Googleads.V7.Common.Operand.FunctionOperand,
    oneof: 0

  field :request_context_operand, 4,
    type: Google.Ads.Googleads.V7.Common.Operand.RequestContextOperand,
    oneof: 0
end
