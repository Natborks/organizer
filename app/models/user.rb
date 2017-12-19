class User < ApplicationRecord
	validates :first_name, :last_name, :student_id_number, :gender, :level, :terms, :reason, :area_interest, presence: :true;
	validates :student_id_number, presence: true, uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :student_id_number, length:{minimum: 12, maximum: 13}
	validates :email, presence: true, uniqueness: true, format:{with: VALID_EMAIL_REGEX}

end
