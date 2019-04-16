class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :bio, :region, :instagram, :user_id
  # has_many :workouts
  has_many :schedules
end
