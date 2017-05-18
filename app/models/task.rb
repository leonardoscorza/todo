class Task < ApplicationRecord
  enum status: [ :done, :todo ]
  validates_presence_of :description, :status

  def done
    self.update(status: :done)
  end
end
