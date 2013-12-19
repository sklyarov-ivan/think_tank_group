SCHEDULER.every '30s' do
  employees_from_json = JSON_Helper::parse_from_file('data/employees.json')
  send_event('employees', { items: employees_from_json['employees'] })
end