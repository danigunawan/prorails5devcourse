class PagesController < ApplicationController
  def home
  	@posts = Blog.all # instance variable @posts beda dengan local variable
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end
end
