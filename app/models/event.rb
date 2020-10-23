class Event < ApplicationRecord
  validates :startdatetime_connot_be_later_than_end_datetime
  private
  def start_datetime_connot_be_later_than_end_datetime
    if start_datetime > end_datetime
      errors.add(:start_datetime, "終了日時より後に設定できません")
    end
  end

end

# バリデーションクラスをモデルと別ファイルに作成し、それらを呼び出す方法です。
# この方法はバリデーションが肥大化した場合や複数のモデルで共有する場合に有効です。
# class Event < ActiveRecord::Base
#   include ActiveModel::Validations
#   validates_with EventValidator
# end