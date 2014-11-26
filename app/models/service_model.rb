class ServiceModel < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :"shared_#{Rails.env}"

  def readonly?
    true if persisted?
  end

  def delete
    raise ActiveRecord::ReadOnlyRecord
  end

  def destroy
    raise ActiveRecord::ReadOnlyRecord
  end
end

