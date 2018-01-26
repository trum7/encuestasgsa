class Encuestum < ApplicationRecord

  def self.to_csv
    attributes = %w{id profesor subject student p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 bueno mejorar}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |encuesta|
        csv << attributes.map{ |attr| encuesta.send(attr) }
      end
    end
  end

end
