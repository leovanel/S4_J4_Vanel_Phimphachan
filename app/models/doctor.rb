class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
  has_many :doc_specialties
  has_many :specialties , through: :doc_specialties
end
