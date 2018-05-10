class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status] # sebelum aksi show edit update destroy memanggil call back dulu yakni set_blog
  layout "blog"

  #petergate
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  # GET /blogs
  # GET /blogs.json
  def index
    #byebug
    # @blogs = Blog.all
    #puts "*" * 500
    # @blogs = Blog.limit(2) # ini untuk melimit data menjadi 2
    #binding.pry
    @blogs = Blog.special_blogs # special_blogs merupakan self action/method dari model/class Blog itu sendiri
    #binding.pry
    #@blogs = Blog.featured_blogs
    #byebug
    #puts @blogs.inspect
    #puts "*" * 500
    #binding.pry
    @page_title = "Dani Portfolio | My Blog Website"
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @page_title = @blog.title # @blog diambil dari def set_blog yaitu @blog = Blog.friendly.find(params[:id])
    @seo_keywords = @blog.body
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save # jika save maka akan muncul notice dibawah ini
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else # jika engga maka dibawah ini
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_status
    # byebug
    if @blog.draft? # akan berganti status publish ketika masih status draft
      @blog.published! 
    else @blog.published? # akan berganti status draft ketika masih status publish
      @blog.draft!
    end
    redirect_to blogs_url, notice: 'Post Status has been updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Callback function adalah function yang dibuat dan dieksekusi didalam function lain (function yang memanggilnya)
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :body, :topic_id)
    end
end
