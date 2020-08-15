class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    @article = Article.find(params[:article_id])
    #Articleモデル内の、:article_idパラムスを見つけて@article変数に入れる
    @comment = @article.comments.build(comment_params)
    #
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path(@article) }
      else
        format.html { redirect_to article_path(@article), notice: '投稿できませんでした...' }
      end
    end
  end
  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:article_id, :content)
  end
end
