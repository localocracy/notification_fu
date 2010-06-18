require 'notification_fu/notifies'

module NotificationFu  
end

ActiveRecord::Base.send :include, NotificationFu::Notifies
