SCHEDULER.every '10s' do
  pages_from_json = JSON_Helper::parse_from_file('data/pages.json')
  send_event('pages', { items: pages_from_json['pages'] })
end