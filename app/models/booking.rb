class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hotel

  validates :guest_name, :no_of_guest, :check_in_date, :check_out_date, :presence => true
  validates :guest_name, :length => { :minimum => 3 }
  validate :room_must_be_entered_by_user

  scope :total_single_bed_room_booked, -> (check_in,check_out,hotel_id){
    where("(check_in_date < :start_date AND check_out_date > :start_date) OR (check_in_date < :end_date AND check_out_date > :end_date) OR (check_in_date >= :start_date AND check_out_date <= :end_date) AND hotel_id = :id",{ start_date: check_in, end_date: check_out, id: hotel_id }).collect(&:single_bed_room).sum
  }
  scope :total_double_bed_room_booked, -> (check_in,check_out,hotel_id){
    where("(check_in_date < :start_date AND check_out_date > :start_date) OR (check_in_date < :end_date AND check_out_date > :end_date) OR (check_in_date >= :start_date AND check_out_date <= :end_date) AND hotel_id = :id",{ start_date: check_in, end_date: check_out, id: hotel_id }).collect(&:double_bed_room).sum
  }
  scope :total_suite_room_booked, -> (check_in,check_out,hotel_id){
    where("(check_in_date < :start_date AND check_out_date > :start_date) OR (check_in_date < :end_date AND check_out_date > :end_date) OR (check_in_date >= :start_date AND check_out_date <= :end_date) AND hotel_id = :id",{ start_date: check_in, end_date: check_out, id: hotel_id }).collect(&:suite_room).sum
  }
  scope :total_dormitory_booked, -> (check_in,check_out,hotel_id){
    where("(check_in_date < :start_date AND check_out_date > :start_date) OR (check_in_date < :end_date AND check_out_date > :end_date) OR (check_in_date >= :start_date AND check_out_date <= :end_date) AND hotel_id = :id",{ start_date: check_in, end_date: check_out, id: hotel_id }).collect(&:dormitory).sum
  }
  
  def room_must_be_entered_by_user
    if single_bed_room === 0 && double_bed_room === 0 && suite_room === 0 && dormitory === 0
      errors.add(:rooms, "must be entered ! please enter number of rooms as per your convenience from the given room types")
    end
  end

end
