SCHEDULER.every '10s' do
  project_from_json = JSON_Helper::parse_from_file('data/project.json')
  send_event('project', { items: project_from_json })
end