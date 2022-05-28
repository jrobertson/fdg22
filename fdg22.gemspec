Gem::Specification.new do |s|
  s.name = 'fdg22'
  s.version = '0.1.0'
  s.summary = 'Fake Data Generator 2022'
  s.authors = ['James Robertson']
  s.files = Dir["lib/fdg22.rb"]
  s.add_runtime_dependency('quick_faker', '~> 0.2', '>=0.2.1')
  s.add_runtime_dependency('tempmail44', '~> 0.1', '>=0.1.1')
  s.add_runtime_dependency('tempsms22', '~> 0.1', '>=0.1.1')
  s.add_runtime_dependency('quickdata_generator', '~> 0.1', '>=0.1.0')
  s.add_runtime_dependency('leetpassword', '~> 1.0', '>=1.0.1')
  s.signing_key = '../privatekeys/fdg22.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/fdg22'
end

