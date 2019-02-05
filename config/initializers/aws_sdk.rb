keys = Rails.application.credentials[:aws]
creds = Aws::Credentials.new(keys[:access_key_id], keys[:secret_access_key])

s3 = Aws::S3::Resource.new(region:'us-east-2', credentials: creds)

bucket = s3.bucket('journalpost')

# # enumerate every object in a bucket
# bucket.objects.each do |obj|
#   obj.put(body:'Hello World!')
# end

# file = '/Users/leanne/Desktop/writing-312112_960_720.png'
# # bucket = 'journalpost'
# name = File.basename(file)
#
# # Create the object to upload
# obj = s3.bucket('journalpost').object(name)
#
# # Upload it
# obj.upload_file(file)
#
#
# bucket.objects.each do |item|
#   puts "Name:  #{item.key}"
#   puts "URL:   #{item.presigned_url(:get)}"
# end
#
# bucket.objects.each do |item|
#   puts "Name:  #{item.key}"
#   puts "URL:   #{item.public_url}"
# end
#
# bucket.objects.each do |obj|
#   obj.acl = :public_read
# end
#
# obj.acl = :public_read
# obj.public_url.to_s
