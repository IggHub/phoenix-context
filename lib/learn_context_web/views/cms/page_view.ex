defmodule LearnContextWeb.CMS.PageView do
  use LearnContextWeb, :view

  alias LearnContext.CMS

  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end
