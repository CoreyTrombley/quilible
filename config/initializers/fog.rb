Fog.credentials_path = Rails.root.join('config/fog_credentials.yml')

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id      => 'AKIAICBFHQAOC6XMQDDQ', # required
    :aws_secret_access_key  => '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', # required
    :region                 => 'us-east-1' # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = "Quilible" # required
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end