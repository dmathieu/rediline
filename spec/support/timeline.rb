class TestingTimelineObject
  extend ActiveModel::Callbacks
  define_model_callbacks :create, :destroy
  include Rediline::Object

  rediline :timeline,
    :user => :user,
    :verb => :created,
    :when => :after_create
  rediline :timeline,
      :user => lambda {|o| o.user },
      :verb => :destroyed,
      :queries => {
        :object => lambda {|o, id|
          TestingTimelineObject.new(id+1)
        }
      },
      :when => :before_destroy

  attr_reader   :id, :user
  def initialize(id, user=nil)
    @id, @user = id, user
  end

  def self.find(id, user=nil)
    self.new(id, user)
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
