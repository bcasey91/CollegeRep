class PeopleController < ApplicationController

  def index
    @title = "List of Students"
    @people = People.all
  end

  def show
    @user = People.find_by_id(params[:id])
    @title = @user.name
  end

  def new
    @title = "Contribute to the Database"
    @person = People.new
  end
 
  def create
    @person = People.new(params[:people])
    if  @person.save
      redirect_to @person
    else
      redirect_to '/people/new'
    end
  end

end

