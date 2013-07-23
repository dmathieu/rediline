class TestingTimelineObjectWithOwner
  extend ActiveModel::Callbacks
  define_model_callbacks :create, :destroy
  include Rediline::Object

  rediline :timeline,
    :user => :owner,
    :verb => :created,
    :when => :after_create
  rediline :timeline,
      :user => :owner,
      :verb => :created,
      :when => :before_destroy

  attr_reader   :id, :owner
  def initialize(id, owner=nil)
    @id, @owner = id, owner
  end

  def self.find(id, owner=nil)
    self.new(id, owner)
  end

  def create
    run_callbacks :create do
      # Your create action methods here
    end
  end
  def destroy
    run_callbacks :destroy do
      # Your destroy action methods here
    end
  end
end
