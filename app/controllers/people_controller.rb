class PeopleController < ActionController::Base
  def index
    @people = Person.all
  end
  def create
    @person = Person.new person_params
  end
  def update
    @person = Person.find person_params[:id]
  end
  def delete
    @person = Person.find person_params[:id]
  end
end