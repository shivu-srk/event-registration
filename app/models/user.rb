# frozen_string_literal: true

class User < ApplicationRecord
  has_many :registrations

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  before_save :change_name_case

  def change_name_case
    self.name = name.downcase
  end
end
