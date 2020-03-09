class Question < ApplicationRecord
  belongs_to :test
  validates :test_id, presence: true
  validates :Q, presence: true
end

def index
  
end

def show
  
end

def edit
  
end

def destroy
  
end
