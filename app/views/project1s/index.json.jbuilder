json.array!(@project1s) do |project1|
  json.extract! project1, :id, :name, :code, :description, :billing_type, :start_date, :deadline_date, :end_date, :github_url, :status
  json.url project1_url(project1, format: :json)
end
