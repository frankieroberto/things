
require 'csv'


namespace :things do
  desc "import a list of things from a CSV file"
  task :import, :file_name, :needs => :environment do |t, args|

    file_path = File.join(File.dirname(__FILE__), '..', '..', 'tmp', 'source_data', args.file_name)
    
    file = File.open(file_path)
    
    CSV.foreach(file_path) do |row|
    
      ref = row[0].to_s
      unless Thing.find_by_ref(ref) or ref == "id_NUMBER"

        thing = Thing.new(:ref => ref)
        thing.name = row[1].to_s
        thing.title = row[2].to_s
        thing.maker = row[3].to_s
        thing.date_made = row[4].to_s
        thing.place_made = row[5].to_s
        thing.materials = row[6].to_s
        thing.measurements = row[7].to_s
        thing.description = row[8].to_s                                
        thing.whole_part = row[9].to_s
        thing.collection = row[10].to_s

        thing.save!

      end

    end
    
  end
end
