defmodule Google.Ads.Googleads.V10.Common.MatchingFunction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_string: String.t(),
          operator:
            Google.Ads.Googleads.V10.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator.t(),
          left_operands: [Google.Ads.Googleads.V10.Common.Operand.t()],
          right_operands: [Google.Ads.Googleads.V10.Common.Operand.t()]
        }

  defstruct function_string: "",
            operator: :UNSPECIFIED,
            left_operands: [],
            right_operands: []

  field :function_string, 5, type: :string, json_name: "functionString"

  field :operator, 4,
    type: Google.Ads.Googleads.V10.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator,
    enum: true

  field :left_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.Operand,
    json_name: "leftOperands"

  field :right_operands, 3,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.Operand,
    json_name: "rightOperands"
end
defmodule Google.Ads.Googleads.V10.Common.Operand.ConstantOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          constant_operand_value:
            {:string_value, String.t()}
            | {:long_value, integer}
            | {:boolean_value, boolean}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
        }

  defstruct constant_operand_value: nil

  oneof :constant_operand_value, 0

  field :string_value, 5, type: :string, json_name: "stringValue", oneof: 0
  field :long_value, 6, type: :int64, json_name: "longValue", oneof: 0
  field :boolean_value, 7, type: :bool, json_name: "booleanValue", oneof: 0
  field :double_value, 8, type: :double, json_name: "doubleValue", oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.Operand.FeedAttributeOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed_id: integer,
          feed_attribute_id: integer
        }

  defstruct feed_id: 0,
            feed_attribute_id: 0

  field :feed_id, 3, type: :int64, json_name: "feedId"
  field :feed_attribute_id, 4, type: :int64, json_name: "feedAttributeId"
end
defmodule Google.Ads.Googleads.V10.Common.Operand.FunctionOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matching_function: Google.Ads.Googleads.V10.Common.MatchingFunction.t() | nil
        }

  defstruct matching_function: nil

  field :matching_function, 1,
    type: Google.Ads.Googleads.V10.Common.MatchingFunction,
    json_name: "matchingFunction"
end
defmodule Google.Ads.Googleads.V10.Common.Operand.RequestContextOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context_type:
            Google.Ads.Googleads.V10.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType.t()
        }

  defstruct context_type: :UNSPECIFIED

  field :context_type, 1,
    type:
      Google.Ads.Googleads.V10.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType,
    json_name: "contextType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Common.Operand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_argument_operand:
            {:constant_operand, Google.Ads.Googleads.V10.Common.Operand.ConstantOperand.t() | nil}
            | {:feed_attribute_operand,
               Google.Ads.Googleads.V10.Common.Operand.FeedAttributeOperand.t() | nil}
            | {:function_operand,
               Google.Ads.Googleads.V10.Common.Operand.FunctionOperand.t() | nil}
            | {:request_context_operand,
               Google.Ads.Googleads.V10.Common.Operand.RequestContextOperand.t() | nil}
        }

  defstruct function_argument_operand: nil

  oneof :function_argument_operand, 0

  field :constant_operand, 1,
    type: Google.Ads.Googleads.V10.Common.Operand.ConstantOperand,
    json_name: "constantOperand",
    oneof: 0

  field :feed_attribute_operand, 2,
    type: Google.Ads.Googleads.V10.Common.Operand.FeedAttributeOperand,
    json_name: "feedAttributeOperand",
    oneof: 0

  field :function_operand, 3,
    type: Google.Ads.Googleads.V10.Common.Operand.FunctionOperand,
    json_name: "functionOperand",
    oneof: 0

  field :request_context_operand, 4,
    type: Google.Ads.Googleads.V10.Common.Operand.RequestContextOperand,
    json_name: "requestContextOperand",
    oneof: 0
end
