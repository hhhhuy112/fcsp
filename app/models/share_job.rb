class ShareJob < ApplicationRecord
  belongs_to :user
  belongs_to :job

  delegate :name, to: :user, prefix: true

  validates :job_id, presence: true, uniqueness: {scope: :user_id}
  validates :user_id, presence: true

  scope :shared_jobs, ->ids do
    where(user_id: ids).order created_at: :DESC
  end
end
