# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    body { 'Text here' }
    association :article, factory: :article
  end
end
