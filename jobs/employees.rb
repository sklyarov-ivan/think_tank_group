SCHEDULER.every '30s' do
  employees_from_json = JSON_Helper::parse_from_file('data/employees.json')
  employees = employees_from_json['employees'].each{|p| p['stylevelocity'] =  (p['velocity'].to_f<5) ? "color: red" : "color: green"}
  send_event('employees', { items: employees })
end