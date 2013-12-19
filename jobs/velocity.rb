SCHEDULER.every '10s' do
  velocity_from_json = JSON_Helper::parse_from_file('data/velocity.json')
  send_event('velocity', { items: velocity_from_json })
end