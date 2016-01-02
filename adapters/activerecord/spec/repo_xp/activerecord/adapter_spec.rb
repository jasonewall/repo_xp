require 'spec_helper'

RSpec.describe RepoXp::ActiveRecord::Adapter do
end

RSpec.describe RepoXp::ActiveRecord::Adapter::Models do
  describe :[] do
    subject { RepoXp::ActiveRecord::Adapter::Models }
    it 'should create the model class if it does not exist' do
      expect(subject['User'].new).to be_a(ActiveRecord::Base)
    end
  end
end
