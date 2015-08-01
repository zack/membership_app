class Job < ActiveRecord::Base
  belongs_to :committee
  has_one :member_job
  has_one :member, through: :member_jobs

  validates :name, presence: true
  validates_date :date_ended, :after => :date_started,
                              :allow_nil => true,
                              :if => :date_started
end
