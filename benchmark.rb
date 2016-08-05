require './d'
require 'benchmark/ips'

# Loading .blank? directly from active_support
require 'active_support/core_ext/object/blank'


Benchmark.ips do |x|
  x.config(:time => 5, :warmup => 2)
  x.report('D tiny string') do
    D.fast_blank 'str'
  end

  x.report('Ruby tiny string') do
    'str'.blank?
  end

  x.report('D big string') do
    D.fast_blank 'strfeoiezfpijezfjezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpizjempijezf'
  end

  x.report('Ruby big string') do
    'strfeoiezfpijezfjezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpijezfpizjempijezf'.blank?
  end

  x.compare!
end
