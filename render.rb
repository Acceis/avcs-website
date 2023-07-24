# -*- coding: utf-8 -*-

require 'erb'
require 'json'
require 'net/http'

avcs_rhtml = File.read('index.rhtml')
avcs_data = JSON.load_file('avcs.json')
template = ERB.new(avcs_rhtml)
File.open('index.html', 'w') do |out|
  out.write(template.result(binding))
end
