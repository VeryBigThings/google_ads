defmodule Google.Ads.Googleads.V4.Resources.CampaignBudget do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :amount_micros, 5, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 10, type: Google.Protobuf.Int64Value
  field :status, 6, type: Google.Ads.Googleads.V4.Enums.BudgetStatusEnum.BudgetStatus, enum: true

  field :delivery_method, 7,
    type: Google.Ads.Googleads.V4.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    enum: true

  field :explicitly_shared, 8, type: Google.Protobuf.BoolValue
  field :reference_count, 9, type: Google.Protobuf.Int64Value
  field :has_recommended_budget, 11, type: Google.Protobuf.BoolValue
  field :recommended_budget_amount_micros, 12, type: Google.Protobuf.Int64Value
  field :period, 13, type: Google.Ads.Googleads.V4.Enums.BudgetPeriodEnum.BudgetPeriod, enum: true
  field :recommended_budget_estimated_change_weekly_clicks, 14, type: Google.Protobuf.Int64Value

  field :recommended_budget_estimated_change_weekly_cost_micros, 15,
    type: Google.Protobuf.Int64Value

  field :recommended_budget_estimated_change_weekly_interactions, 16,
    type: Google.Protobuf.Int64Value

  field :recommended_budget_estimated_change_weekly_views, 17, type: Google.Protobuf.Int64Value
  field :type, 18, type: Google.Ads.Googleads.V4.Enums.BudgetTypeEnum.BudgetType, enum: true
end
