class EventValidator < ActiveModel::Validator
  def validate(record)
    if record.start_datetime > record.end_datetime
      record.errors.add(:start_datetime, "終了日時より後に設定できません")
    end
  end
end