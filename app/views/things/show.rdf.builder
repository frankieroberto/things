xml.instruct! :xml, :version=>"1.0" 
xml.tag!("rdf:RDF", "xmlns:rdf" => "http://www.w3.org/1999/02/22-rdf-syntax-ns#", "xmlns:dc" => "http://purl.org/dc/elements/1.1/"){

  xml.tag!("rdf:Description", "rdf:about" => thing_path(@thing, :only_path => false)) {
    xml.tag!("dc:title", name_or_title(@thing))
    if @thing.type_of_thing
      xml.tag!("rdf:type", "rdf:resource" => type_path(@thing.type_of_thing, :only_path => false))
    end
  }

}