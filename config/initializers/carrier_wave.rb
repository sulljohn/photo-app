# Source (second answer): https://stackoverflow.com/questions/27949158/heroku-missing-required-arguments-aws-access-key-id-aws-secret-access-key-f/35961184
if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
        :aws_secret_access_key => ENV['S3_SECRET_KEY'],
        :region                => ENV['S3_REGION']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end