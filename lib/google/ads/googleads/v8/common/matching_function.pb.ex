defmodule Google.Ads.Googleads.V8.Common.MatchingFunction do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :function_string, 5, optional: true, type: :string

  field :operator, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator,
    enum: true

  field :left_operands, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.Operand
  field :right_operands, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.Operand
end

defmodule Google.Ads.Googleads.V8.Common.Operand.ConstantOperand do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :constant_operand_value, 0
  field :string_value, 5, optional: true, type: :string, oneof: 0
  field :long_value, 6, optional: true, type: :int64, oneof: 0
  field :boolean_value, 7, optional: true, type: :bool, oneof: 0
  field :double_value, 8, optional: true, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.Operand.FeedAttributeOperand do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :feed_id, 3, optional: true, type: :int64
  field :feed_attribute_id, 4, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.Operand.FunctionOperand do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :matching_function, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MatchingFunction
end

defmodule Google.Ads.Googleads.V8.Common.Operand.RequestContextOperand do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :context_type, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.Operand do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :function_argument_operand, 0

  field :constant_operand, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.Operand.ConstantOperand,
    oneof: 0

  field :feed_attribute_operand, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.Operand.FeedAttributeOperand,
    oneof: 0

  field :function_operand, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.Operand.FunctionOperand,
    oneof: 0

  field :request_context_operand, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.Operand.RequestContextOperand,
    oneof: 0
end
