require 'rails_helper'

RSpec.describe Hall, type: :model do
  it { should validate_presence_of(:total_seat) }
  it { should validate_presence_of(:availible) }
  it { should validate_presence_of(:seat) }
  it { should validate_presence_of(:new_reculted_list) }
  it { should validate_presence_of(:border_info) }
  
end
