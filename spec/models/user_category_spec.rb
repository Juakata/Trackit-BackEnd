# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserCategory, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:category_id) }
  end
end
