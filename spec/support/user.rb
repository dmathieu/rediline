class User
  extend ActiveModel::Callbacks
  define_model_callbacks :create, :destroy
  include Rediline::User

  rediline :timeline do
    list :egocentric do
      [user]
    end
    list :public do
      [User.new(15), User.new(16)]
    end
  end

  attr_reader   :id
  def initialize(id)
    @id = id
  end

  def self.find(id)
    self.new(id)
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
