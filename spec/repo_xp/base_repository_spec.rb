require 'spec_helper'

describe RepoXp::BaseRepository do
  let(:entity_class) { class User; end; User }
  let(:repo_class) { class UserRepository < RepoXp::BaseRepository; end; UserRepository }

  describe 'an entity class' do
    it 'can be a PORO' do
      entity_class
      expect(User).to be
    end
  end

  describe :entity_class do
    it 'should guess the class name from the repository class name' do
      expect(repo_class.entity_class).to eq(entity_class)
    end
  end

  describe '#entity_class' do
    it 'should also work on instances' do
      expect(repo_class.new.entity_class).to eq(entity_class)
    end
  end

  context 'nested in modules' # TODO
end
