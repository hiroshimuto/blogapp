class PostsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(3)
    #変数postsを定義する。Postモデルからすべてのデータを取得し、orderメソッドで最新の投稿順にする。pageメソッドはビューのリクエストの際にparamsの中にpageというキーが追加されて、その値がビューで指定したページ番号となる。perメソッドは1ページに表示したい件数を指定。includeはn+1問題を解決するために記載
  end

  def new
    @post = Post.new
    #新規投稿のnewメソッドを記載。
  end

  def create
    Post.create(title: post_params[:title], content: post_params[:content], image: post_params[:image], user_id: current_user.id)
    #new.html.erbでsubmitが押されるとcreateアクションが実行される。パラメーターが送られてくる。privateメソッドで受け取るパラメーターを制限。
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
