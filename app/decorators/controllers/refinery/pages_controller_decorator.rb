Refinery::PagesController.class_eval do

  protected

  def find_all_blog_posts
    @blog_posts = Refinery::BlogPost.live
  end

end