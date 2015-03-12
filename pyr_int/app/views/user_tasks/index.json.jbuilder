json.array!(@user_tasks) do |user_task|
  json.extract! user_task, :id, :task_name, :string, :status, :string, :result, :text, :info, :text
  json.url user_task_url(user_task, format: :json)
end
