
require 'csv'
require 'iconv'


namespace :things do
  desc "import a list of things from a CSV file"
  task :import, :file_name, :needs => :environment do |t, args|

    file_path = File.join(File.dirname(__FILE__), '..', '..', 'tmp', 'source_data', args.file_name)
    
    file = File.open(file_path)

    ic = Iconv.new("UTF-8//IGNORE", "US-ASCII")
    
    CSV.foreach(file_path) do |row|
    
      ref = row[0].to_s
      unless Thing.find_by_ref(ref) or ref == "id_NUMBER"

        thing = Thing.new(:ref => ref)
        thing.name = ic.iconv(row[1].to_s)
        thing.title = ic.iconv(row[2].to_s)
        thing.maker = ic.iconv(row[3].to_s)
        thing.date_made = ic.iconv(row[4].to_s)
        thing.place_made = ic.iconv(row[5].to_s)
        thing.materials = ic.iconv(row[6].to_s)
        thing.measurements = ic.iconv(row[7].to_s)
        thing.description = ic.iconv(row[8].to_s)                                
        thing.whole_part = ic.iconv(row[9].to_s)
        thing.collection = ic.iconv(row[10].to_s)

        thing.save!
        
        print "."
        $stdout.flush

      end

    end
    
  end
end
