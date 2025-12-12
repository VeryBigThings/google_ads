defmodule Google.Ads.Googleads.V7.Resources.CampaignBudget do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 19, type: :int64
  field :name, 20, type: :string
  field :amount_micros, 21, type: :int64
  field :total_amount_micros, 22, type: :int64
  field :status, 6, type: Google.Ads.Googleads.V7.Enums.BudgetStatusEnum.BudgetStatus, enum: true

  field :delivery_method, 7,
    type: Google.Ads.Googleads.V7.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    enum: true

  field :explicitly_shared, 23, type: :bool
  field :reference_count, 24, type: :int64
  field :has_recommended_budget, 25, type: :bool
  field :recommended_budget_amount_micros, 26, type: :int64
  field :period, 13, type: Google.Ads.Googleads.V7.Enums.BudgetPeriodEnum.BudgetPeriod, enum: true
  field :recommended_budget_estimated_change_weekly_clicks, 27, type: :int64
  field :recommended_budget_estimated_change_weekly_cost_micros, 28, type: :int64
  field :recommended_budget_estimated_change_weekly_interactions, 29, type: :int64
  field :recommended_budget_estimated_change_weekly_views, 30, type: :int64
  field :type, 18, type: Google.Ads.Googleads.V7.Enums.BudgetTypeEnum.BudgetType, enum: true
end
