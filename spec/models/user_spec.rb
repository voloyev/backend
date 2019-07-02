require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#info" do

    it "generates info message" do
      user = User.create(first_name: 'John', last_name: 'Smith')
      id = user.id

      expect(user.info(id)).to eq(user.first_name + ' ' + user.last_name)
    end
  end

end
