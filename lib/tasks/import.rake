require 'csv'
# require 'charlock_holmes/string' 
namespace :csv do 
  desc "Import CSV Data"
  task :import => :environment do 

    #optional code to transcode any new seed data #
    # csv_file_path = 'db/data/data_encoded.csv'
    # content = File.read(csv_file_path)
    # detection = CharlockHolmes::EncodingDetector.detect(content)
    # utf_encoded = CharlockHolmes::Converter.convert content, detection[:encoding], 'UTF-8'
    # File.write('db/data/data_encoded2.CSV', utf_encoded)
    csv_file_path = 'db/data/data_encoded.csv'

    CSV.foreach(csv_file_path) do |column|
      User.create!({
        :firstname => column[34],
        :lastname => column[35],
        :profile_image => column[2],
        :twitter => column[11],
        :linkedin => column[12],
        :github => column[14], 
        :cohort => column[32],
        :role => column[33],
        :email => column[36],
        :password => "testtest",
        :password_confirmation => "testtest"
        })
      puts "row added!"
    end
  end
end