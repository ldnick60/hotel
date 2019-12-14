class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :room


scope :calc_difference, -> (date_in, date_out)  {
  (date_out.to_date - date_in.to_date).to_1
}

  scope :num_avaliable_single, -> (date_in, date_out)  {
    100 - where("room_id = 1").where("date_in != ?", date_in).where("date_out != ?", date_out).count;
  }
  scope :num_avaliable_double, -> (date_in, date_out)  {
    50 - where("room_id = 2").where("date_in != ?", date_in).where("date_out != ?", date_out).count;
  }
  scope :num_avaliable_premium, -> (date_in, date_out)  {
    20 - where("room_id = 3").where("date_in != ?", date_in).where("date_out != ?", date_out).count;
  }
  scope :num_avaliable_villa, -> (date_in, date_out)  {
    10 - where("room_id = 4").where("date_in != ?", date_in).where("date_out != ?", date_out).count;
  }

  scope :num_avaliable_single, -> (date_in, date_out){
    if where("room_id = 1").calc_difference

    end
    100 - where("room_id = 1").where("date_in != ?", date_in).where("date_out != ?", date_out).count;
  }
end
