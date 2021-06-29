defmodule Google.Ads.Googleads.V8Availabilities.Errors.QueryErrorEnum.QueryError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :QUERY_ERROR
          | :BAD_ENUM_CONSTANT
          | :BAD_ESCAPE_SEQUENCE
          | :BAD_FIELD_NAME
          | :BAD_LIMIT_VALUE
          | :BAD_NUMBER
          | :BAD_OPERATOR
          | :BAD_PARAMETER_NAME
          | :BAD_PARAMETER_VALUE
          | :BAD_RESOURCE_TYPE_IN_FROM_CLAUSE
          | :BAD_SYMBOL
          | :BAD_VALUE
          | :DATE_RANGE_TOO_WIDE
          | :DATE_RANGE_TOO_NARROW
          | :EXPECTED_AND
          | :EXPECTED_BY
          | :EXPECTED_DIMENSION_FIELD_IN_SELECT_CLAUSE
          | :EXPECTED_FILTERS_ON_DATE_RANGE
          | :EXPECTED_FROM
          | :EXPECTED_LIST
          | :EXPECTED_REFERENCED_FIELD_IN_SELECT_CLAUSE
          | :EXPECTED_SELECT
          | :EXPECTED_SINGLE_VALUE
          | :EXPECTED_VALUE_WITH_BETWEEN_OPERATOR
          | :INVALID_DATE_FORMAT
          | :INVALID_STRING_VALUE
          | :INVALID_VALUE_WITH_BETWEEN_OPERATOR
          | :INVALID_VALUE_WITH_DURING_OPERATOR
          | :INVALID_VALUE_WITH_LIKE_OPERATOR
          | :OPERATOR_FIELD_MISMATCH
          | :PROHIBITED_EMPTY_LIST_IN_CONDITION
          | :PROHIBITED_ENUM_CONSTANT
          | :PROHIBITED_FIELD_COMBINATION_IN_SELECT_CLAUSE
          | :PROHIBITED_FIELD_IN_ORDER_BY_CLAUSE
          | :PROHIBITED_FIELD_IN_SELECT_CLAUSE
          | :PROHIBITED_FIELD_IN_WHERE_CLAUSE
          | :PROHIBITED_RESOURCE_TYPE_IN_FROM_CLAUSE
          | :PROHIBITED_RESOURCE_TYPE_IN_SELECT_CLAUSE
          | :PROHIBITED_RESOURCE_TYPE_IN_WHERE_CLAUSE
          | :PROHIBITED_METRIC_IN_SELECT_OR_WHERE_CLAUSE
          | :PROHIBITED_SEGMENT_IN_SELECT_OR_WHERE_CLAUSE
          | :PROHIBITED_SEGMENT_WITH_METRIC_IN_SELECT_OR_WHERE_CLAUSE
          | :LIMIT_VALUE_TOO_LOW
          | :PROHIBITED_NEWLINE_IN_STRING
          | :PROHIBITED_VALUE_COMBINATION_IN_LIST
          | :PROHIBITED_VALUE_COMBINATION_WITH_BETWEEN_OPERATOR
          | :STRING_NOT_TERMINATED
          | :TOO_MANY_SEGMENTS
          | :UNEXPECTED_END_OF_QUERY
          | :UNEXPECTED_FROM_CLAUSE
          | :UNRECOGNIZED_FIELD
          | :UNEXPECTED_INPUT
          | :REQUESTED_METRICS_FOR_MANAGER
          | :FILTER_HAS_TOO_MANY_VALUES

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :QUERY_ERROR, 50

  field :BAD_ENUM_CONSTANT, 18

  field :BAD_ESCAPE_SEQUENCE, 7

  field :BAD_FIELD_NAME, 12

  field :BAD_LIMIT_VALUE, 15

  field :BAD_NUMBER, 5

  field :BAD_OPERATOR, 3

  field :BAD_PARAMETER_NAME, 61

  field :BAD_PARAMETER_VALUE, 62

  field :BAD_RESOURCE_TYPE_IN_FROM_CLAUSE, 45

  field :BAD_SYMBOL, 2

  field :BAD_VALUE, 4

  field :DATE_RANGE_TOO_WIDE, 36

  field :DATE_RANGE_TOO_NARROW, 60

  field :EXPECTED_AND, 30

  field :EXPECTED_BY, 14

  field :EXPECTED_DIMENSION_FIELD_IN_SELECT_CLAUSE, 37

  field :EXPECTED_FILTERS_ON_DATE_RANGE, 55

  field :EXPECTED_FROM, 44

  field :EXPECTED_LIST, 41

  field :EXPECTED_REFERENCED_FIELD_IN_SELECT_CLAUSE, 16

  field :EXPECTED_SELECT, 13

  field :EXPECTED_SINGLE_VALUE, 42

  field :EXPECTED_VALUE_WITH_BETWEEN_OPERATOR, 29

  field :INVALID_DATE_FORMAT, 38

  field :INVALID_STRING_VALUE, 57

  field :INVALID_VALUE_WITH_BETWEEN_OPERATOR, 26

  field :INVALID_VALUE_WITH_DURING_OPERATOR, 22

  field :INVALID_VALUE_WITH_LIKE_OPERATOR, 56

  field :OPERATOR_FIELD_MISMATCH, 35

  field :PROHIBITED_EMPTY_LIST_IN_CONDITION, 28

  field :PROHIBITED_ENUM_CONSTANT, 54

  field :PROHIBITED_FIELD_COMBINATION_IN_SELECT_CLAUSE, 31

  field :PROHIBITED_FIELD_IN_ORDER_BY_CLAUSE, 40

  field :PROHIBITED_FIELD_IN_SELECT_CLAUSE, 23

  field :PROHIBITED_FIELD_IN_WHERE_CLAUSE, 24

  field :PROHIBITED_RESOURCE_TYPE_IN_FROM_CLAUSE, 43

  field :PROHIBITED_RESOURCE_TYPE_IN_SELECT_CLAUSE, 48

  field :PROHIBITED_RESOURCE_TYPE_IN_WHERE_CLAUSE, 58

  field :PROHIBITED_METRIC_IN_SELECT_OR_WHERE_CLAUSE, 49

  field :PROHIBITED_SEGMENT_IN_SELECT_OR_WHERE_CLAUSE, 51

  field :PROHIBITED_SEGMENT_WITH_METRIC_IN_SELECT_OR_WHERE_CLAUSE, 53

  field :LIMIT_VALUE_TOO_LOW, 25

  field :PROHIBITED_NEWLINE_IN_STRING, 8

  field :PROHIBITED_VALUE_COMBINATION_IN_LIST, 10

  field :PROHIBITED_VALUE_COMBINATION_WITH_BETWEEN_OPERATOR, 21

  field :STRING_NOT_TERMINATED, 6

  field :TOO_MANY_SEGMENTS, 34

  field :UNEXPECTED_END_OF_QUERY, 9

  field :UNEXPECTED_FROM_CLAUSE, 47

  field :UNRECOGNIZED_FIELD, 32

  field :UNEXPECTED_INPUT, 11

  field :REQUESTED_METRICS_FOR_MANAGER, 59

  field :FILTER_HAS_TOO_MANY_VALUES, 63
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.QueryErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
