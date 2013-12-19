SCHEDULER.every '60s' do
  pages_from_json = JSON_Helper::parse_from_file('data/pages.json')
  pages = pages_from_json['pages'].each{|p| p['style'] = "width: #{p['progress']}px"}
  send_event('pages', { items: pages})
end