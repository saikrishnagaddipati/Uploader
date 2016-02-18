class AttachmentUploader < CarrierWave::Uploader::Base
   storage :file #change this to fog when you want to upload the files to amazon or heroku
   
   def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
   end
   
   def extension_white_list
      %w(pdf doc htm html docx jpg png rb mp3)
   end
end