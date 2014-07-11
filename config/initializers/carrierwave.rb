CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  if !Rails.env.development? || !Rails.env.test?
	config.fog_credentials = {
		# Configuration for Amazon S3 should be made available through an Environment variable.
		# For local installations, export the env variable through the shell OR
		# if using Passenger, set an Apache environment variable.
		#
		# In Heroku, follow http://devcenter.heroku.com/articles/config-vars
		#
		# $ heroku config:add S3_KEY=your_s3_access_key S3_SECRET=your_s3_secret 
			# 		S3_REGION=eu-west-1 S3_ASSET_URL=http://assets.example.com/ 
			#			S3_BUCKET_NAME=s3_bucket/folder

		# Configuration for Amazon S3
		:provider              => 'AWS',
		:aws_access_key_id     => ENV['S3_KEY'],
		:aws_secret_access_key => ENV['S3_SECRET'],
		:region                => ENV['S3_REGION']
	}
	config.fog_directory  = ENV['S3_BUCKET_NAME']                   # AWS S3 Bucket Name
	config.fog_public     = false                                   # optional, defaults to true
	config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end

  # For testing, upload files to local `public/uploads` folder.
  if Rails.env.development? || Rails.env.test? || Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/public/uploads"
  else
    config.storage = :fog
  end


end