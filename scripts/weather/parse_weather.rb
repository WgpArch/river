#!/usr/bin/env ruby
require 'json'

Sources = {
  :weather  => '/run/weather.json',
  :forecast => '/run/forecast.json'
}

Icons = {
  '01d' => '☀️',
  '01n' => '🌙',
  '02d' => '⛅',
  '02n' => '🌙☁️',
  '03d' => '☁️',
  '03n' => '☁️',
  '04d' => '☁️',
  '04n' => '☁️',
  '09d' => '🌧️',
  '09n' => '🌧️',
  '10d' => '🌦️',
  '10n' => '🌧️',
  '13d' => '❄️',
  '13n' => '❄️',
  '50d' => '🌫️',
  '50n' => '🌫️'
}

ret = {
  'text' => nil,
  'tooltip' => nil,
  'class' => 'weather',
  'percentage' => 100
}

# === Current Weather ===

# Wait up to 5 seconds for /run/weather.json to appear
5.times do
  break if File.exist?(Sources[:weather])
  sleep 1
end

begin
  weather = JSON.parse(File.read(Sources[:weather]))
  loc_name = "Odendaalsrus"
  icon_code = weather['weather'][0]['icon']
  icon = Icons[icon_code] || '❓'
  temp = weather['main']['temp']
  hum = weather['main']['humidity']
  wind_vel = weather['wind']['speed']

  ret['text'] = "#{icon} #{loc_name}: #{temp.round(1)}°C | 💧#{hum}% | 🌬️#{wind_vel}m/s"
rescue => e
  ret['text'] = "🌤️ Odendaalsrus: --°C | 💧--% | 🌬️--m/s"
end

# === Forecast Tooltip ===
begin
  cast = []
  forecast = JSON.parse(File.read(Sources[:forecast]))
  by_day = {}
  forecast['list'].each do |f|
    time = Time.at(f['dt'])
    day = time.strftime('%Y-%m-%d')
    by_day[day] ||= []
    by_day[day] << f['main']['temp']

    time_str = "#{time.hour}:#{time.min.to_s.rjust(2, '0')}"
    icon = Icons[f['weather'][0]['icon']] || '❓'
    desc = f['weather'][0]['description']
    temp_f = f['main']['temp']
    hum_f = f['main']['humidity']

    if time.hour == 0
      min_temp = by_day[day].min.round(1)
      max_temp = by_day[day].max.round(1)
      cast << "        ↑ min: <b>#{min_temp}°C</b> max: <b>#{max_temp}°C</b>"
      cast << "     ┍━━━━━┫  <b>#{day}</b> ┠━━━━━┑"
    end

    cast << "#{time_str} | #{temp_f.round(1)}°C | #{hum_f}% | #{icon} #{desc}"
  end

  # Final day summary
  last_day = by_day.keys.last
  min_temp = by_day[last_day].min.round(1)
  max_temp = by_day[last_day].max.round(1)
  cast << "        ↑ min: <b>#{min_temp}°C</b> max: <b>#{max_temp}°C</b>"

  ret['tooltip'] = cast.join("\n")
rescue => e
  ret['tooltip'] = "Forecast unavailable"
end

puts ret.to_json
