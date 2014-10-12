class BatchConfig < Settingslogic
  source "#{Rails.root}/config/batch.yml"
  namespace Rails.env
end
