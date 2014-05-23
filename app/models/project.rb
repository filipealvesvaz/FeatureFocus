class Project < ActiveRecord::Base
  belongs_to :owner

  with_options dependent: :destroy do |d|
    d.has_many :messages
    d.has_many :todos
    d.has_many :forwards
    d.has_many :attachments, as: :attachable
  end
end